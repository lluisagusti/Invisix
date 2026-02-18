# Invisix Ready-to-Go Distro Builder

This project contains the necessary tools to create an Invisix image pre-installed and auto-configurable.

## Requirements
- macOS (or Windows with WSL/WSL 2) with Docker Desktop installed and running.
- A [Raspberry Pi OS Lite (64-bit recommended)](https://www.raspberrypi.com/software/operating-systems/) image.

## Usage Instructions

### 1. Preparation
1.  Download the official Raspberry Pi OS Lite image.
2.  Unzip the `.xz` file to get the `.img` file.
3.  Rename the image file to: **`raspios.img`**
4.  Place `raspios.img` in the root folder of this project (next to `build.sh`).

### 2. Build
Run the build script from the terminal:

```bash
chmod +x build.sh
./build.sh
```

This process will:
- Create a Docker container with the necessary tools (ARM emulation, kpartx).
- Mount the Raspberry Pi image.
- Install Pi-hole and all its dependencies.
- Create the default user `pi`.
- Enable SSH.
- Inject the "First Boot" script.
- Generate a new file named **`invisix-distro.img`**.

### 3. Flashing
Use `Raspberry Pi Imager` or `Etcher` to write the **`invisix-distro.img`** file to your SD card.

### 4. End User Installation
1.  Insert the SD card into the Raspberry Pi 4 (or higher).
2.  Connect the network cable (RJ45).
3.  Connect the power supply.
4.  **On your Router**:
    - Find the device (it will be named `raspberrypi` or similar initially).
    - Assign a **Static IP (DHCP Reservation/Static Lease)** to the Raspberry Pi's MAC address.
    - (Optional but recommended) Configure that IP as the primary DNS server in your router.
5.  **Wait about 2-3 minutes**. The Raspberry Pi will detect its assigned IP and reconfigure Pi-hole automatically.

### 5. Access and Credentials
The system comes configured to be immediately accessible on your local network:

- **Pi-hole Web Interface**:
  - URL: `http://<YOUR-STATIC-IP>/admin`
  - Password: `admin`

- **System (SSH / Terminal)**:
  - User: `pi`
  - Password: `raspberry`
  - SSH enabled by default.
  - **IMPORTANT**: Change these passwords (especially the SSH one) as soon as you log in for the first time (`passwd`).

## Project Structure
- `Dockerfile`: Build environment.
- `build.sh`: Master script that orchestrates the entire process.
- `scripts/customize.sh`: Script that runs *inside* the image to install Pi-hole.
- `scripts/firstboot.sh`: Script that runs on the *first boot* of the Pi to auto-configure itself.
- `scripts/invisix-autoconfig.service`: systemd service that launches `firstboot.sh`.
