# Pi-hole Ready-to-Go Distro Builder

Este proyecto contiene las herramientas necesarias para crear una imagen personalizada de Raspberry Pi OS Lite con Pi-hole preinstalado y autoconfigurable.

## Requisitos
- macOS con Docker Desktop instalado y corriendo.
- Una imagen de [Raspberry Pi OS Lite (64-bit recomendada)](https://www.raspberrypi.com/software/operating-systems/).

## Instrucciones de Uso

### 1. Preparación
1.  Descarga la imagen oficial de Raspberry Pi OS Lite.
2.  Descomprime el archivo `.xz` para obtener el archivo `.img`.
3.  Renombra el archivo imagen a: **`raspios.img`**
4.  Coloca `raspios.img` en la carpeta raíz de este proyecto (junto a `build.sh`).

### 2. Construcción (Build)
Ejecuta el script de construcción desde la terminal:

```bash
chmod +x build.sh
./build.sh
```

Este proceso:
- Creará un contenedor Docker con las herramientas necesarias (emulación ARM, kpartx).
- Montará la imagen de Raspberry Pi.
- Instalará Pi-hole y todas sus dependencias.
- Creará el usuario por defecto `pi`.
- Habilitará SSH.
- Inyectará el script de "Primer Arranque".
- Generará un nuevo archivo llamado **`invisix-distro.img`**.

### 3. Flasheo
Utiliza [Raspberry Pi Imager](https://www.raspberrypi.com/software/) o `Etcher` para grabar el archivo **`invisix-distro.img`** en tu tarjeta SD.

### 4. Instalación del Usuario Final
1.  Inserta la SD en la Raspberry Pi 4 (o superior).
2.  Conecta el cable de red (RJ45).
3.  Conecta la alimentación.
4.  **En tu Router**:
    - Busca el dispositivo (se llamará `raspberrypi` o similar inicialmente).
    - Asigna una **IP Estática (DHCP Reservation/Static Lease)** a la dirección MAC de la Raspberry Pi.
    - (Opcional pero recomendado) Configura esa IP como el servidor DNS primario en tu router.
5.  **Espera unos 2-3 minutos**. La Raspberry Pi detectará su IP asignada y reconfigurará Pi-hole automáticamente.

### 5. Acceso y Credenciales
El sistema viene configurado para ser accesible inmediatamente en tu red local:

- **Pi-hole Web Interface**:
  - URL: `http://<TU-IP-ESTATICA>/admin`
  - Password: `admin`

- **Sistema (SSH / Terminal)**:
  - User: `pi`
  - Password: `raspberry`
  - SSH habilitado por defecto.
  - **IMPORTANTE**: Cambia estas contraseñas (especialmente la de SSH) en cuanto inicies sesión por primera vez (`passwd`).

## Estructura del Proyecto
- `Dockerfile`: Entorno de compilación.
- `build.sh`: Script maestro que orquesta todo el proceso.
- `scripts/customize.sh`: Script que se ejecuta *dentro* de la imagen para instalar Pi-hole.
- `scripts/firstboot.sh`: Script que se ejecuta en el *primer arranque* de la Pi para autoconfigurarse.
- `scripts/invisix-autoconfig.service`: Servicio systemd que lanza `firstboot.sh`.
