# 🛡️ Pi-hole + VPN Ready-to-Go

¡Bienvenido! Este proyecto te permite tener un bloqueador de anuncios en toda tu casa y una VPN para acceder a ella desde fuera, todo en una Raspberry Pi.

🚫 **Adiós Anuncios**: Navega más rápido y sin distracciones.
🔒 **VPN Incluida**: Conéctate a tu casa desde el móvil cuando estés fuera (4G/5G) de forma segura y sin abrir puertos.

---

## 📦 ¿Qué necesitas? (Materiales)
1.  🍓 **Raspberry Pi 4** (o superior).
2.  💾 **Tarjeta MicroSD** (mínimo 8GB).
3.  🔌 **Cable de Red (Ethernet)**.
4.  ⚡ **Cargador USB-C** para la Pi.

---

## 🚀 Guía de Instalación ("Paso a Paso")

### Paso 1: Descargar y Grabar 💾
1.  Descarga el archivo **`invisix-distro.img`** que hemos generado.
2.  Descarga e instala el programa [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3.  Abre el programa:
    *   **Dispositivo Raspberry Pi**: Elige tu modelo (Raspberry Pi 4).
    *   **Sistema Operativo**: Ve abajo del todo, elige "Use Custom" (Usar personalizado) y selecciona el archivo `invisix-distro.img`.
    *   **Almacenamiento**: Elige tu tarjeta SD.
    *   **PULSA SIGUIENTE Y LUEGO "NO" A PERSONALIZAR AJUSTES**. (Ya los hemos puesto nosotros).
    *   Dale a **Escribir (Write)** y espera a que termine.

### Paso 2: Configurar la VPN (¡Mágico!) ✨
*Si no quieres VPN, sáltate este paso.*

1.  Ve a [**Tailscale.com**](https://tailscale.com) y crea una cuenta gratis (puedes usar Google/Microsoft).
2.  Ve a **Settings (Ajustes) > Keys (Claves)**.
3.  Botón **"Generate auth key"** (Generar clave de autenticación).
4.  Copia el código largo que empieza por `tskey-...`.
5.  **En tu ordenador**:
    *   Abre la tarjeta SD que acabas de grabar (aparecerá como un disco llamado `bootfs`).
    *   Crea un archivo nuevo de texto llamado **`tailscale-auth.key`**.
    *   Pega dentro tu clave `tskey-...`.
    *   Guarda y cierra.
6.  Expulsa la tarjeta SD.

### Paso 3: Conectar y Encender 🔌
1.  Mete la tarjeta SD en la Raspberry Pi.
2.  Conecta el cable de Internet (del Router a la Pi).
3.  Conecta el cable de corriente.
4.  **Espera 5 minutos**. ⏳
    *   *La Pi detectará tu red, se configurará sola y se conectará a la VPN.*

### Paso 4: Configurar tu Router (Único paso manual) ⚙️
Para que Pi-hole funcione, tu router debe saber que existe.

1.  Entra en la web de tu router (suele ser `http://192.168.1.1` o `http://192.168.0.1`).
2.  Busca la sección **"DHCP"** o **"Red Local"**.
3.  Busca la lista de dispositivos conectados y encuentra la que se llame `raspberrypi`.
4.  Activa la opción **"Reservar IP"** o **"Static Lease"** para ese dispositivo.
5.  Copia esa IP (ejemplo: `192.168.1.50`).
6.  En la configuración **DNS** del router, pon esa IP (`192.168.1.50`) como **DNS Primario**.

---

## ✅ ¡Ya está!

### ¿Cómo lo uso?

**En Casa (Wi-Fi):**
No tienes que hacer nada. Los anuncios desaparecerán de tus móviles, tablets y ordenadores automáticamente.

**Fuera de Casa (4G / Wi-Fi Público):**
1.  Instala la app de **Tailscale** en tu móvil.
2.  Inicia sesión con tu cuenta.
3.  Activa el interruptor "Active".
4.  ¡Listo! Estás navegando seguro a través de tu casa y sin anuncios.

### Panel de Control
Para ver cuántos anuncios has bloqueado:
*   Web: `http://<LA-IP-LOGRADA>/admin`
*   Contraseña: `admin`

---
*Hecho para ser simple.*
