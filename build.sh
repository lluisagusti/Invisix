#!/bin/bash
set -e

# Configuration
INPUT_IMAGE="raspios.img" # Rename your downloaded input image to this
OUTPUT_IMAGE="invisix-distro.img"
DOCKER_IMAGE_NAME="invisix-distro-builder"

# Check if input image exists
if [ ! -f "$INPUT_IMAGE" ]; then
    echo "ERROR: $INPUT_IMAGE not found!"
    echo "Please download the Raspberry Pi OS Lite image, unzip it, and rename it to $INPUT_IMAGE"
    exit 1
fi

echo ">>> Building Docker Image..."
docker build -t $DOCKER_IMAGE_NAME .

echo ">>> Creating output image copy with extra space..."
cp "$INPUT_IMAGE" "$OUTPUT_IMAGE"
# Expand image by 2GB to fit Pi-hole + Tailscale + Dependencies + Safety Margin
dd if=/dev/zero bs=1M count=2048 >> "$OUTPUT_IMAGE"

echo ">>> Running Build Container..."
# Run container in privileged mode to allow loop mounting
docker run --rm --privileged \
    -v $(pwd):/workspace \
    -v /dev:/dev \
    $DOCKER_IMAGE_NAME \
    /bin/bash -c "
        set -e
        cd /workspace
        
        echo '>>> [Container] Setting up loop device...'
        # Attach image to loop device
        LOOP_DEV=\$(losetup -fP --show $OUTPUT_IMAGE)
        echo \"Loop device: \$LOOP_DEV\"
        
        # Give kernel a moment to see partitions
        sleep 2
        
        echo '>>> [Container] Resizing Partition...'
        # Resize partition 2 (RootFS) to use 100% of the new space
        parted -s \$LOOP_DEV resizepart 2 100%
        # Refresh partition table info
        partprobe \$LOOP_DEV
        sleep 2
        
        # Define partition paths (works for /dev/loop0p1 style)
        ROOT_PART=\"\${LOOP_DEV}p2\"
        BOOT_PART=\"\${LOOP_DEV}p1\"
        
        echo '>>> [Container] Resizing Filesystem...'
        # Force check (needed before resize)
        e2fsck -f -y \$ROOT_PART
        # Resize filesystem to fill partition
        resize2fs \$ROOT_PART
        
        MOUNT_POINT=\"/mnt/rpi-root\"
        mkdir -p \$MOUNT_POINT
        
        echo '>>> [Container] Mounting partitions...'
        mount \$ROOT_PART \$MOUNT_POINT
        mount \$BOOT_PART \$MOUNT_POINT/boot
        
        # Verify free space
        df -h \$MOUNT_POINT
        
        echo '>>> [Container] Setting up QEMU...'
        cp /usr/bin/qemu-arm-static \$MOUNT_POINT/usr/bin/
        
        echo '>>> [Container] Copying scripts...'
        cp /workspace/scripts/customize.sh \$MOUNT_POINT/tmp/
        cp /workspace/scripts/firstboot.sh \$MOUNT_POINT/tmp/
        cp /workspace/scripts/invisix-autoconfig.service \$MOUNT_POINT/tmp/
        
        echo '>>> [Container] Entering Chroot...'
        mount --bind /dev \$MOUNT_POINT/dev
        mount --bind /sys \$MOUNT_POINT/sys
        mount --bind /proc \$MOUNT_POINT/proc
        mount --bind /dev/pts \$MOUNT_POINT/dev/pts
        
        # Enable networking in chroot (copy host resolv.conf temporarily inside script)
        
        chroot \$MOUNT_POINT /bin/bash /tmp/customize.sh
        
        echo '>>> [Container] Cleaning up...'
        rm \$MOUNT_POINT/usr/bin/qemu-arm-static
        
        umount \$MOUNT_POINT/dev/pts
        umount \$MOUNT_POINT/dev
        umount \$MOUNT_POINT/sys
        umount \$MOUNT_POINT/proc
        umount \$MOUNT_POINT/boot
        umount \$MOUNT_POINT
        
        losetup -d \$LOOP_DEV
        
        echo '>>> [Container] Installing PiShrink...'
        curl -L https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh -o /usr/local/bin/pishrink.sh
        chmod +x /usr/local/bin/pishrink.sh
        
        echo '>>> [Container] Shrinking image to minimum size...'
        /usr/local/bin/pishrink.sh -s $OUTPUT_IMAGE
        
        echo '>>> [Container] Build Complete.'
    "

echo ">>> Build Finished! The file '$OUTPUT_IMAGE' is ready."
