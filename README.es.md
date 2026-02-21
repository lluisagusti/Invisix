<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Solución de privacidad de grado corporativo, lista para usar.</strong><br>
  <sub>🚫 Una pequeña caja. Libertad infinita. AdBlocker y TrackerBlocker en toda la red.</sub><br>
  <sub>💼 VPN gratuita y segura a través de la red de su oficina u hogar — el tráfico remoto disfruta de la misma protección AdBlock.</sub><br>
  <sub>🏆 Diseñado para corporaciones, freelancers y pequeñas empresas. Lo suficientemente simple para usuarios domésticos debido a su precio reducido.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io/index_es.html">🌐 Sitio Web</a> · 
  <a href="#-inicio-rápido-10-minutos">🚀 Inicio Rápido</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Danos una estrella</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="License">
  <img src="https://img.shields.io/badge/setup-10%20minutos-brightgreen" alt="Setup Time">
  <img src="https://img.shields.io/badge/reqs-Raspberry%20Pi%204B%202GB-blue" alt="Hardware">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 El Problema

Cada día, **las corporaciones, trabajadores remotos y freelancers se enfrentan a vigilancia y rastreo implacables**.

- Los proveedores de internet (ISP) registran cada dominio corporativo que visitas.
- Las redes publicitarias rastrean el comportamiento de los usuarios en miles de sitios.
- Sin una VPN centralizada, los trabajadores remotos están expuestos en WiFi público y 4G.
- Las soluciones de firewall de grado empresarial, AdBlock y VPN son típicamente complejas, costosas y requieren equipos dedicados de TI para mantenerlas.

Necesitas un entorno profesional, fiable y seguro. 

> *"Argumentar que no te importa la privacidad porque no tienes nada que ocultar es como argumentar que no te importa la libertad de expresión porque no tienes nada que decir."*  
> — **Edward Snowden**

---

## 💡 La Solución

**Invisix** es una distribución de Linux "plug-and-play" para tu Raspberry Pi que proporciona una **solución de privacidad de grado corporativo, lista para usar.**

| Funcionalidad | Qué hace | Impacto |
|---|---|---|
| 🚫 **AdBlocker y TrackerBlocker** | Bloquea anuncios y rastreadores en **cada dispositivo** conectado a tu red. | Optimización del ancho de banda y protección frente al rastreo malicioso. |
| 🔒 **VPN Gratuita en la Oficina/Hogar** | Túnel seguro para tráfico remoto (4G, WiFi de hotel) hacia tu red local. | Trabaja de forma segura desde cualquier lugar con una IP local. |
| 🛡️ **La VPN disfruta del AdBlock** | Incluso al trabajar de forma remota vía VPN, tu tráfico es filtrado por el AdBlocker. | Protección constante independientemente de tu ubicación física. |
| 📉 **Precio Reducido** | Solo requiere una Raspberry Pi 4B 2GB (requisito mínimo). | Accesible para pequeñas empresas, freelancers e incluso usuarios domésticos. |

**Sin suscripciones. Sin recolección de datos en la nube. Solo un cambio de configuración básico para asegurar tu negocio.**

> **💥 Compra una Raspberry Pi 4B 2GB. Flashea la ISO. Conéctala. Protege tu oficina o red doméstica al instante.**

---

## 🏗️ Cómo Funciona

```text
                        TU OFICINA / HOGAR
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Estación de trabajo ──┐                            │
  │   Portátil ─────────────┤                            │
  │   Pantalla inteligente ─┼─▶ Raspberry Pi (Invisix) ─▶ Internet
  │   Móvil ────────────────┤      |-- Bloqueo DNS       │
  │   Dispositivo IoT ──────┘      '-- Tailscale (VPN)   │
  │                                                      │
  │   Consultas DNS filtradas. Rastreadores eliminados.  │
  └──────────────────────────────────────────────────────┘

                        TRABAJADORES REMOTOS
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Portátil Remoto (4G / Hotel / Aeropuerto)          │
  │     |                                                │
  │     '───▶  Túnel VPN Tailscale ───▶  Red Local       │
  │                                                      │
  │   Tráfico protegido de forma continua por el AdBlock.│
  │   Las redes externas solo ven ruido encriptado.      │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 Qué Necesitas

| Artículo | Coste | Nota |
|---|---|---|
| 🍓 Raspberry Pi 4B 2GB (Mínimo Req) | ~$35-55 | El Cerebro |
| 💾 Tarjeta MicroSD (8GB+) | ~$5 | El Almacenamiento |
| 🔌 Cable Ethernet | ~$3 | La Conexión |
| ⚡ Fuente de Alimentación USB-C | ~$10 | La Energía |

**Total: ~$50-70 pago único.** Cero tarifas recurrentes de SaaS por protección empresarial.

---

## 🚀 Inicio Rápido (10 minutos)

### Paso 1: Flashear la Imagen 💾

1. Descarga **`invisix-distro.img`** desde la [página de descargas (Releases)](https://github.com/lluisagusti/Invisix/releases).
2. Descarga [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3. Ábrelo y selecciona:
   - **Dispositivo**: Raspberry Pi 4
   - **SO**: Desplázate hasta abajo → "Use Custom" → selecciona `invisix-distro.img`
   - **Almacenamiento**: Tu tarjeta SD
4. Haz clic en **Next (Siguiente)** → **"NO"** a editar la configuración (¡ya está configurado!) → **Write (Escribir)**.

### Paso 2: Activar VPN Gratuita (Opcional) ✨

> *Salta este paso si solo quieres protección en la red local.*

1. Crea una cuenta gratuita en [**tailscale.com**](https://tailscale.com) (el login de Google/Microsoft funciona).
2. Ve a **Settings → Keys → "Generate auth key"**.
3. Copia la clave (`tskey-...`).
4. Abre la tarjeta SD en tu ordenador (aparecerá como un disco llamado `bootfs`).
5. Crea un archivo llamado **`tailscale-auth.key`** y pega la clave dentro. Guarda.
6. Expulsa la tarjeta SD.

### Paso 3: Conectar y Listo 🔌

1. Tarjeta SD → Raspberry Pi.
2. Cable Ethernet → Del router/switch a la Pi.  
3. Cable de alimentación → Pi.
4. **Espera 5 minutos** ⏳ — todo se autoconfigura.

### Paso 4: El Único Cambio de Configuración Requerido ⚙️

Para enrutar todas las peticiones de dominios a través de Invisix, solo necesitas decirle a tu router dónde buscar:

1. Abre la página de administración de tu router (`http://192.168.1.1` o `http://192.168.0.1`).
2. Encuentra la configuración **DHCP** o **Red Local**.
3. Encuentra `raspberrypi` en la lista de dispositivos conectados → habilita **Static Lease** (IP Estática, para que su IP nunca cambie).
4. Copia su IP (ej., `192.168.1.50`).
5. Configura esa IP como el servidor **DNS Primario** de tu red.

### ✅ ¡Listo!

**Eso es todo.** Tu red corporativa o doméstica ahora está fundamentalmente segura frente a anuncios y telemetría de rastreo.

---

## 🌍 Uso

### 🏢 En la Oficina / Hogar
No hagas nada. Los anuncios desaparecen. Los flujos de trabajo cargan más rápido. La telemetría se detiene. Todo el equipo está protegido.

### 💼 Trabajo Remoto (4G / WiFi Público)
1. Instala el cliente **Tailscale** en tu ordenador o móvil.
2. Inicia sesión.
3. Enciende (ON) la VPN.
4. Ahora estás completamente protegido a través de la conexión de tu oficina — **y tu tráfico VPN disfruta de la misma protección AdBlocker.**

### 📊 Panel de Control
Audita el tráfico de tu red y mira qué cosas se están bloqueando:
- Visita `http://<IP-DE-TU-PI>/admin`
- Contraseña: `admin`

> La mayoría de las redes bloquean entre el **30-50% de todas las solicitudes DNS**. Eso son miles de intentos de rastreo neutralizados cada día.

---

## 🔥 ¿Por qué Invisix?

| | Firewall Empresarial | VPN SaaS | **Invisix** |
|---|---|---|---|
| Coste mensual | $$$/mes | $15/mes por usuario | **Gratis** |
| Bloqueo de Anuncios y Trackers | ✅ Requiere TI | ❌ | ✅ **Lista para usar** |
| VPN Remota Segura | ✅ Configuración compleja | ✅ | ✅ **Simple y Gratis** |
| La VPN disfruta del AdBlock | ✅ | ❌ | ✅ **Sí** |
| Público Objetivo | Grandes Corp | Cualquiera | **Pymes, Freelance, Hogar** |
| Tiempo de configuración | Días | 5 min | **10 min** |
| Requiere conocimientos técnicos | Sí | No | **No (un cambio en el router)** |

---

## 🤝 Cómo Contribuir

¿Encontraste un error? ¿Tienes una idea? Nos encantaría tu ayuda.

1. Haz un fork de este repositorio.
2. Crea tu rama para la característica: `git checkout -b feature/nueva-caracteristica`
3. Haz un commit: `git commit -m 'Añadir nueva característica'`
4. Haz push a la rama: `git push origin feature/nueva-caracteristica`
5. Abre un Pull Request.

Vea [`BUILD.md`](BUILD.md) para ver las instrucciones sobre cómo construir la imagen a partir del código fuente.

---

## 📣 Ayúdanos a Difundir el Mensaje

Si Invisix aseguró tu flujo de trabajo, **ayúdalo a ayudar a otros**:

- ⭐ **Danos una estrella** — es lo más importante que puedes hacer.
- 📢 **Compártelo** — díselo a otros freelancers o administradores de TI.
- 🐛 **Reporta errores** — cada error reportado hace a Invisix mejor para todos.
- 🍴 **Fork y contribuye** — código, documentación, traducciones, todo es bienvenido.

> Internet no fue diseñado para espiarte. Recuperémoslo.

---

## 📜 Licencia

[Licencia MIT](LICENSE) — Compartir es vivir.

---

<p align="center">
  Hecho con ❤️ en Barcelona
</p>

<p align="center">
  <strong>La privacidad no es un lujo. Es un derecho.</strong>
</p>
