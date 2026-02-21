<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Corporate-grade privacy solution, out of the box.</strong><br>
  <sub>🚫 One tiny box. Infinite freedom. Network-wide AdBlocker and TrackerBlocker.</sub><br>
  <sub>💼 Secure free VPN through your office or home network — remote traffic enjoys the same AdBlock protection.</sub><br>
  <sub>🏆 Designed for corporations, freelancers, and small companies. Simple enough for home users due to its reduced price.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io">🌐 Website</a> · 
  <a href="#-quickstart-10-minutes">🚀 Quickstart</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Star Us</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="License">
  <img src="https://img.shields.io/badge/setup-10%20minutes-brightgreen" alt="Setup Time">
  <img src="https://img.shields.io/badge/reqs-Raspberry%20Pi%204B%202GB-blue" alt="Hardware">
</p>

<p align="center">
  <em>🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 The Problem

Every day, **corporations, remote workers, and freelancers face relentless surveillance and tracking**.

- ISPs log every corporate domain you visit.
- Ad networks track user behavior across thousands of sites.
- Without a centralized VPN, remote workers are exposed on public WiFi and 4G.
- Enterprise-grade firewall, AdBlock, and VPN solutions are typically complex, expensive, and require dedicated IT teams to maintain.

You need a professional, reliable, and secure environment. 

> *"Arguing that you don't care about privacy because you have nothing to hide is like arguing that you don't care about free speech because you have nothing to say."*  
> — **Edward Snowden**

---

## 💡 The Solution

**Invisix** is a plug-and-play Linux distro for your Raspberry Pi that provides a **corporate-grade privacy solution, out of the box.**

| Feature | What it does | Impact |
|---|---|---|
| 🚫 **AdBlocker & TrackerBlocker** | Blocks ads & trackers on **every device** connected to your network. | Bandwidth optimization and protection from malicious tracking. |
| 🔒 **Free VPN through Office/Home** | Securely tunnel remote traffic (4G, hotel WiFi) back through your local network. | Work securely from anywhere with a local IP. |
| 🛡️ **VPN enjoys the AdBlock** | Even when working remotely via the VPN, your traffic is filtered by the AdBlocker. | Consistent protection regardless of physical location. |
| 📉 **Reduced Price** | Only requires a Raspberry Pi 4B 2GB (minimum requirement). | Accessible for small companies, freelancers, and even home users. |

**No subscriptions. No cloud data harvesting. Just a single, low-technical configuration change to secure your business.**

> **💥 Buy a Raspberry Pi 4B 2GB. Flash the ISO. Plug it in. Protect your office or home network instantly.**

---

## 🏗️ How It Works

```text
                        YOUR OFFICE / HOME
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Workstation ──┐                                    │
  │   Laptop ───────┤                                    │
  │   Smart Screen ─┼───▶  Raspberry Pi (Invisix)  ───▶ Internet
  │   Mobile ───────┤        |-- DNS Ad & TrackerBlock   │
  │   IoT Device ───┘        '-- Tailscale (VPN)         │
  │                                                      │
  │   All DNS queries filtered. Trackers obliterated.    │
  └──────────────────────────────────────────────────────┘

                      REMOTE WORKERS
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Remote Laptop (4G / Hotel / Airport)               │
  │     |                                                │
  │     '───▶  Tailscale VPN Tunnel  ───▶  Local Network │
  │                                                      │
  │   Traffic seamlessly protected by the AdBlock.       │
  │   External networks see only encrypted noise.        │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 What You Need

| Item | Cost | Note |
|---|---|---|
| 🍓 Raspberry Pi 4B 2GB (Min Req) | ~$35-55 | The Brain |
| 💾 MicroSD Card (8GB+) | ~$5 | The Storage |
| 🔌 Ethernet Cable | ~$3 | The Connection |
| ⚡ USB-C Power Supply | ~$10 | The Power |

**Total: ~$50-70 one-time.** Zero recurring SaaS fees for enterprise protection.

---

## 🚀 Quickstart (10 minutes)

### Step 1: Flash the Image 💾

1. Download **`invisix-distro.img`** from the [Releases page](https://github.com/lluisagusti/Invisix/releases).
2. Download [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3. Open it and select:
   - **Device**: Raspberry Pi 4
   - **OS**: Scroll to bottom → "Use Custom" → select `invisix-distro.img`
   - **Storage**: Your SD card
4. Click **Next** → **"NO"** to editing settings (already configured!) → **Write**.

### Step 2: Activate Free VPN (Optional) ✨

> *Skip this if you only want local network protection.*

1. Create a free account at [**tailscale.com**](https://tailscale.com) (Google/Microsoft login works).
2. Go to **Settings → Keys → "Generate auth key"**.
3. Copy the key (`tskey-...`).
4. Open the flashed SD card on your computer (it shows up as `bootfs`).
5. Create a file named **`tailscale-auth.key`** and paste the key inside. Save.
6. Eject.

### Step 3: Plug & Play 🔌

1. SD card → Raspberry Pi.
2. Ethernet cable → Router/Switch to Pi.  
3. Power cable → Pi.
4. **Wait 5 minutes** ⏳ — it auto-configures everything.

### Step 4: The One Low-Technical Configuration Change ⚙️

To route all domain requests through Invisix, you just need to tell your router where to look:

1. Open your router's administration page (`http://192.168.1.1` or `http://192.168.0.1`).
2. Find the **DHCP** or **Local Network** settings.
3. Find `raspberrypi` in the connected devices list → enable **Static Lease** (so its IP never changes).
4. Copy its IP (e.g., `192.168.1.50`).
5. Set that IP as your network's **Primary DNS** server.

### ✅ Done!

**That's it.** Your corporate or home network is now fundamentally secure from ads and tracking telemetry.

---

## 🌍 Using It

### 🏢 At the Office / Home
Do nothing. Ads disappear. Workflows load faster. Telemetry stops. The whole team is protected.

### 💼 Remote Work (4G / Public WiFi)
1. Install the **Tailscale** client on your work device.
2. Log in.
3. Toggle the VPN ON.
4. You're now securely tunneled through your office connection — **and your VPN traffic enjoys the same AdBlocker protection.**

### 📊 Control Panel
Audit your network traffic and see what's being blocked:
- Visit `http://<YOUR-PI-IP>/admin`
- Password: `admin`

> Most networks block **30-50% of all DNS queries**. That's thousands of tracking attempts per day neutralized.

---

## 🔥 Why Invisix?

| | Enterprise Firewall | SaaS VPN | **Invisix** |
|---|---|---|---|
| Monthly cost | $$$/mo | $15/mo per user | **Free** |
| Ad & Tracker Blocking | ✅ Requires IT | ❌ | ✅ **Out of the box** |
| Secure Remote VPN | ✅ Complex Setup | ✅ | ✅ **Simple & Free** |
| VPN Enjoys AdBlock | ✅ | ❌ | ✅ **Yes** |
| Target Audience | Large Corp | Anyone | **SME, Freelance, Home** |
| Setup time | Days | 5 min | **10 min** |
| Requires technical degree | Yes | No | **No (one config change)** |

---

## 🤝 Contributing

Found a bug? Got an idea? We'd love your help.

1. Fork this repo.
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Commit: `git commit -m 'Add amazing feature'`
4. Push: `git push origin feature/amazing-feature`
5. Open a Pull Request.

See [`BUILD.md`](BUILD.md) for instructions on building the distro image from source.

---

## 📣 Help Us Spread the Word

If Invisix secured your workflow, **help it help others**:

- ⭐ **Star this repo** — it's the single biggest thing you can do.
- 📢 **Share it** — tell fellow freelancers or IT admins.
- 🐛 **Report bugs** — every issue makes Invisix better for everyone.
- 🍴 **Fork & contribute** — code, docs, translations, all welcome.

> The internet wasn't designed to spy on you. Let's take it back.

---

## 📜 License

[MIT License](LICENSE) — Sharing is caring.

---

<p align="center">
  Made with ❤️ in Barcelona
</p>

<p align="center">
  <strong>Privacy is not a luxury. It's a right.</strong>
</p>
