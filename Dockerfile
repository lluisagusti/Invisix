FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools for image manipulation and ARM emulation
RUN apt-get update && apt-get install -y \
    qemu-user-static \
    binfmt-support \
    kpartx \
    fdisk \
    mount \
    curl \
    git \
    xz-utils \
    libarchive-tools \
    sudo \
    vim \
    parted \
    udev \
    dosfstools \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /build

# Copy the builder scripts
COPY scripts/ /build/scripts/

# Make scripts executable
RUN chmod +x /build/scripts/*.sh
