#!/bin/bash
set -e

# This script runs INSIDE the Raspberry Pi OS image (chroot)

export DEBIAN_FRONTEND=noninteractive

echo ">>> [customize.sh] Starting customization..."

# 1. Prepare Environment
# Temporarily use Google DNS for installation
echo "nameserver 8.8.8.8" > /etc/resolv.conf

# 2. Update System
echo ">>> [customize.sh] Updating package lists..."
apt-get update
# Optional: apt-get upgrade -y

# 3. Install Pi-hole Prerequisites
echo ">>> [customize.sh] Installing dependencies..."
apt-get install -y curl git dnsutils lighttpd php-common php-cgi php-sqlite3 php-xml php-intl

# 4. Create Pre-configuration for Unattended Install
mkdir -p /etc/pihole
cat <<EOF > /etc/pihole/setupVars.conf
PIHOLE_INTERFACE=eth0
IPV4_ADDRESS=0.0.0.0/0
IPV6_ADDRESS=
PIHOLE_DNS_1=8.8.8.8
PIHOLE_DNS_2=8.8.4.4
QUERY_LOGGING=true
INSTALL_WEB_SERVER=true
INSTALL_WEB_INTERFACE=true
LIGHTTPD_ENABLED=true
WEBPASSWORD=3e33f3731174092bba404eeb9c1186e8e81093bce7e6022378939c5750cc7673
BLOCKING_ENABLED=true
DNSMASQ_LISTENING=single
DNS_FQDN_REQUIRED=true
DNS_BOGUS_PRIV=true
DNSSEC=false
TEMPERATUREUNIT=C
WEBUIBOXEDLAYOUT=traditional
EOF
# Note: WEBPASSWORD hash above is for strict temporary use or needs valid hash. 
# We will reset it in firstboot.sh anyway.

# 5. Connect and Configure User Access
echo ">>> [customize.sh] Setting up default user 'pi'..."
# Create user 'pi' if it doesn't exist (newer images don't have it)
if ! id -u pi >/dev/null 2>&1; then
    useradd -m -s /bin/bash pi
    usermod -aG sudo pi
fi
# Set password to 'raspberry' (Classic insecure default, but functional for initial setup)
echo "pi:raspberry" | chpasswd
# Enable SSH
systemctl enable ssh
# Generate SSH host keys (if missing)
ssh-keygen -A

# 6. Install Tailscale
echo ">>> [customize.sh] Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh

# 7. Install Pi-hole
echo ">>> [customize.sh] Installing Pi-hole..."
curl -L https://install.pi-hole.net | bash /dev/stdin --unattended

# 8. Install First Boot Magic
echo ">>> [customize.sh] Installing First Boot Script..."
mv /tmp/firstboot.sh /usr/local/bin/firstboot.sh
chmod +x /usr/local/bin/firstboot.sh
mv /tmp/invisix-autoconfig.service /etc/systemd/system/invisix-autoconfig.service
systemctl enable invisix-autoconfig.service

# 7. Cleanup
echo ">>> [customize.sh] Cleaning up..."
apt-get clean
rm -rf /var/lib/apt/lists/*
rm -f /etc/resolv.conf # Remove temporary DNS
# Restore symlink if it was one, or let systemd manage it on boot? 
# RPi OS usually has /etc/resolv.conf as a symlink to /run/dhcpcd/resolv.conf or similar.
# For now, deleting it is safe, dhcpcd will recreate it on boot.

echo ">>> [customize.sh] Customization Complete."
