<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Tu hogar es tu castillo. Ahora también es tu VPN.</strong><br>
  <sub>🚫 Una cajita. Cero anuncios en todos tus dispositivos. Móviles, tablets, Smart TVs — hasta esa tostadora IoT sospechosa.</sub><br>
  <sub>🏆 Probablemente la distro Linux más sencilla y útil para usuarios no técnicos. Enchúfala y olvídate.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io">🌐 Web</a> · 
  <a href="#-inicio-rápido-10-minutos">🚀 Inicio Rápido</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Danos una Estrella</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="Licencia">
  <img src="https://img.shields.io/badge/instalación-10%20minutos-brightgreen" alt="Tiempo de Instalación">
  <img src="https://img.shields.io/badge/coste-%240-blue" alt="Coste: Gratis">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 El Problema

Cada vez que abres el móvil, **las corporaciones te están mirando**.

- Tu proveedor de internet registra cada web que visitas.
- Las apps te rastrean a través de más de 6.000 redes publicitarias.
- Smart TVs, monitores de bebé, incluso tu nevera — todo reportando a alguien.
- En WiFi público o 4G, tu tráfico es un **libro abierto**.

Tú no pediste ser vigilado. Pero te lo dieron igual.

> *"Argumentar que no te importa la privacidad porque no tienes nada que esconder es como argumentar que no te importa la libertad de expresión porque no tienes nada que decir."*  
> — **Edward Snowden**

---

## 💡 La Solución

**Invisix** es una distro para Raspberry Pi lista para usar que te da:

| Característica | Qué hace | Cómo se siente |
|---|---|---|
| 🚫 **Bloqueador de anuncios para toda la red** | Bloquea anuncios y rastreadores en **todos los dispositivos** de tu casa — móviles, tablets, Smart TVs, todo | Como debería ser internet |
| 🔒 **VPN Privada y Gratuita** | Vayas donde vayas (4G, WiFi del aeropuerto, hoteles), tu IP es **siempre la de tu casa** | Como si nunca hubieras salido del sofá |
| 👻 **Invisible para los rastreadores** | El bloqueo a nivel DNS significa que los rastreadores ni siquiera llegan a cargar | Como si no existieras para los anunciantes |
| ⚡ **Instalación en 10 minutos** | Flashea → Enchufa → Listo. Sin terminal. Sin archivos de configuración. | Como debería ser |

**Sin suscripciones. Sin nube. Sin recopilación de datos. Sin trampa.**

Tu Raspberry Pi. Tus reglas.

> **💥 Compra una Raspberry Pi. Flashea la ISO. Enchúfala. Ya está — acabas de liberar a toda tu familia de corporaciones, rastreadores y actores maliciosos. No necesitas un título. No necesitas suscripción. Solo libertad.**

---

## 🏗️ Cómo Funciona

```
                         TU CASA
  ┌──────────────────────────────────────────────────────────┐
  │                                                          │
  │   Movil ─────┐                                           │
  │   Portatil ──┤                                           │
  │   Smart TV ──┼───▶  Raspberry Pi (Invisix)  ───▶ Internet│
  │   Consola ───┤        |-- Pi-hole (bloqueo ads)          │
  │   Tablet ────┘        '-- Tailscale (VPN)                │
  │                                                          │
  │   Consultas DNS filtradas. Anuncios eliminados.          │
  └──────────────────────────────────────────────────────────┘

                      FUERA DE CASA
  ┌──────────────────────────────────────────────────────────┐
  │                                                          │
  │   Tu (4G / WiFi Aeropuerto / Hotel)                      │
  │     |                                                    │
  │     '───▶  Tunel VPN Tailscale  ───▶  Casa               │
  │                                                          │
  │   Tu IP = IP de Casa. Anuncios = Bloqueados.             │
  │   ISP/Hotel/Aeropuerto ve: trafico cifrado.              │
  └──────────────────────────────────────────────────────────┘
```

---

## 📦 Qué Necesitas

| Material | Coste | Nota |
|---|---|---|
| 🍓 Raspberry Pi 4 (o superior) | ~35-55€ | El cerebro |
| 💾 Tarjeta MicroSD (8GB+) | ~5€ | El alma |
| 🔌 Cable Ethernet | ~3€ | La columna vertebral |
| ⚡ Fuente de alimentación USB-C | ~10€ | El corazón |

**Total: ~50-70€ una sola vez.** Sin cuotas mensuales. Nunca.

> Compáralo con los 10-15€/mes de una VPN comercial que [aún te rastrean](https://www.consumerreports.org/electronics/vpn-services/vpn-testing-poor-privacy-security-a5765950498/) y venden tus datos. Invisix se paga solo en **4 meses**.

---

## 🚀 Inicio Rápido (10 minutos)

### Paso 1: Flashear la Imagen 💾

1. Descarga **`invisix-distro.img`** desde la [página de Releases](https://github.com/lluisagusti/Invisix/releases).
2. Descarga [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3. Ábrelo y selecciona:
   - **Dispositivo**: Raspberry Pi 4
   - **SO**: Baja hasta abajo → "Use Custom" → selecciona `invisix-distro.img`
   - **Almacenamiento**: Tu tarjeta SD
4. Pulsa **Next** → **"NO"** para editar ajustes (¡ya están configurados!) → **Write**.

### Paso 2: Activar la VPN (Opcional) ✨

> *Sáltalo si solo quieres bloqueo de anuncios en casa.*

1. Crea una cuenta gratuita en [**tailscale.com**](https://tailscale.com) (funciona con login de Google/Microsoft).
2. Ve a **Settings → Keys → "Generate auth key"**.
3. Copia la clave (`tskey-...`).
4. Abre la tarjeta SD flasheada en tu ordenador (aparece como `bootfs`).
5. Crea un archivo llamado **`tailscale-auth.key`** y pega la clave dentro. Guarda.
6. Expulsa.

### Paso 3: Enchufar y Listo 🔌

1. Tarjeta SD → Raspberry Pi.
2. Cable Ethernet → Router a Pi.  
3. Cable de alimentación → Pi.
4. **Espera 5 minutos** ⏳ — se auto-configura todo.

### Paso 4: Configura tu Router (El único paso manual) ⚙️

1. Abre la página de tu router (`http://192.168.1.1` o `http://192.168.0.1`).
2. Busca los ajustes de **DHCP** / **Red Local**.
3. Encuentra `raspberrypi` en la lista de dispositivos → activa **Reserva Estática**.
4. Copia su IP (ej: `192.168.1.50`).
5. Pon esa IP como tu **DNS Primario**.

### ✅ ¡Listo!

**Ya está.** Todos los dispositivos de tu red están ahora libres de anuncios y rastreadores.

---

## 🌍 Cómo Usarlo

### 🏠 En Casa
No hagas nada. Los anuncios desaparecen. Las páginas cargan más rápido. La vida mejora.

### 📱 Fuera de Casa (4G / WiFi Público)
1. Instala la app **Tailscale** en tu móvil.
2. Inicia sesión.
3. Actívalo.
4. Ahora navegas a través de tu conexión de casa — **sin anuncios, cifrado, invisible**.

### 📊 Panel de Control
Mira cuántos anuncios has aplastado:
- Visita `http://<IP-DE-TU-PI>/admin`
- Contraseña: `admin`

> La mayoría de usuarios bloquean **30-50% de todas las consultas DNS**. Son miles de rastreadores al día que nunca llegan a tus dispositivos.

---

## 🔥 ¿Por Qué Invisix?

| | VPN Comercial | Pi-hole solo | **Invisix** |
|---|---|---|---|
| Coste mensual | 5-15€/mes | Gratis | **Gratis** |
| Bloqueo de anuncios | ❌ | ✅ Solo en casa | ✅ **En todas partes** |
| VPN incluida | ✅ | ❌ | ✅ **Gratis para siempre** |
| Bloquea en todos los dispositivos | ❌ | ✅ | ✅ |
| Sin app necesaria (en casa) | ❌ | ✅ | ✅ |
| Tus datos son tuyos | 🤷 Depende | ✅ | ✅ |
| Tiempo de instalación | 5 min | 1-2 horas | **10 min** |
| Requiere terminal | N/A | Sí | **No** |

---

## 🤝 Contribuir

¿Encontraste un bug? ¿Tienes una idea? Nos encantaría tu ayuda.

1. Haz fork de este repo.
2. Crea tu rama: `git checkout -b feature/funcionalidad-increible`
3. Commit: `git commit -m 'Añadir funcionalidad increíble'`
4. Push: `git push origin feature/funcionalidad-increible`
5. Abre un Pull Request.

Consulta [`BUILD.md`](BUILD.md) para instrucciones sobre cómo construir la imagen desde el código fuente.

---

## 📣 Ayúdanos a Correr la Voz

Si Invisix te ha ayudado, **ayuda a que ayude a otros**:

- ⭐ **Dale una estrella** — es lo más importante que puedes hacer.
- 📢 **Compártelo** — díselo a un amigo, publícalo, tuiteálo.
- 🐛 **Reporta bugs** — cada issue hace Invisix mejor para todos.
- 🍴 **Fork y contribuye** — código, docs, traducciones, todo es bienvenido.

> Internet no fue diseñado para espiarte. Recuperémoslo.

---

## 📜 Licencia

[Licencia MIT](LICENSE) — haz lo que quieras con esto. En serio.

---

<p align="center">
  Hecho con ❤️ en Barcelona
</p>

<p align="center">
  <strong>La privacidad no es un lujo. Es un derecho.</strong>
</p>
