#!/bin/bash

# Redirect output to a log file for debugging
exec > /var/log/firstboot.log 2>&1

echo ">>> [firstboot.sh] Starting First Boot Configuration..."

# 1. Wait for Network
echo "Waiting for network connection..."
# Loop until we have an IP address (excluding loopback)
MAX_RETRIES=30
for i in $(seq 1 $MAX_RETRIES); do
    CURRENT_IP=$(hostname -I | awk '{print $1}')
    if [ -n "$CURRENT_IP" ]; then
        echo "Network detected! IP: $CURRENT_IP"
        break
    fi
    sleep 2
done

if [ -z "$CURRENT_IP" ]; then
    echo "ERROR: No Network IP found after 60 seconds. Aborting configuration."
    exit 1
fi

# 2. Update Pi-hole setupVars.conf with the real IP
CONFIG_FILE="/etc/pihole/setupVars.conf"

if [ -f "$CONFIG_FILE" ]; then
    echo "Updating $CONFIG_FILE with IP $CURRENT_IP..."
    sed -i "s/^IPV4_ADDRESS=.*/IPV4_ADDRESS=$CURRENT_IP\/24/" "$CONFIG_FILE"
else
    echo "ERROR: $CONFIG_FILE not found!"
fi

# 3. Reconfigure Pi-hole to apply changes
echo "Reconfiguring Pi-hole..."
# 'pihole -g' regenerates dnsmasq config using setupVars.conf
pihole -g

# 4. Set Web Password
# Default to 'admin' (or generate random)
DEFAULT_PASS="admin"
echo "Setting Pi-hole Web Interface password to '$DEFAULT_PASS'..."
pihole -a -p "$DEFAULT_PASS"

# 5. Tailscale Auto-Join (VPN)
# Check standard /boot and newer Bookworm /boot/firmware locations
AUTH_KEY_FILE=""
if [ -f "/boot/tailscale-auth.key" ]; then
    AUTH_KEY_FILE="/boot/tailscale-auth.key"
elif [ -f "/boot/firmware/tailscale-auth.key" ]; then
    AUTH_KEY_FILE="/boot/firmware/tailscale-auth.key"
fi

if [ -n "$AUTH_KEY_FILE" ]; then
    echo "Found Tailscale Auth Key at $AUTH_KEY_FILE"
    AUTH_KEY=$(cat "$AUTH_KEY_FILE" | tr -d '\n\r ')
    
    if [ -n "$AUTH_KEY" ]; then
        echo "Authenticating with Tailscale..."
        # Wait a bit for Tailscale daemon to be fully up
        sleep 5
        tailscale up --authkey="$AUTH_KEY" --ssh
        echo "Tailscale setup complete. SSH enabled via Tailscale."
    else
        echo "Tailscale Auth Key file is empty!"
    fi
else
    echo "No Tailscale Auth Key found in /boot or /boot/firmware. Skipping VPN setup."
fi

# 6. Self-Destruct (Disable Service)
echo "Disabling invisix-autoconfig service..."
systemctl disable invisix-autoconfig.service

echo ">>> [firstboot.sh] Configuration Complete."
