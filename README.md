<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Your home is your castle. Now it's your VPN too.</strong><br>
  <sub>🚫 One tiny box. Zero ads on every device. Phones, tablets, smart TVs — even that sketchy IoT toaster.</sub><br>
  <sub>🏆 Probably the simplest and most useful Linux distro for non-technical users. Plug it in and forget it.</sub>
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
  <img src="https://img.shields.io/badge/cost-%240-blue" alt="Cost: Free">
</p>

<p align="center">
  <em>🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 The Problem

Every time you open your phone, **corporations are watching**.

- Your ISP logs every website you visit.
- Apps track you across 6,000+ ad networks.
- Smart TVs, baby monitors, even your fridge — all phoning home.
- On public WiFi or 4G, your traffic is **wide open**.

You didn't sign up for surveillance. But you got it anyway.

> *"Arguing that you don't care about privacy because you have nothing to hide is like arguing that you don't care about free speech because you have nothing to say."*  
> — **Edward Snowden**

---

## 💡 The Solution

**Invisix** is a plug-and-play Raspberry Pi distro that gives you:

| Feature | What it does | How it feels |
|---|---|---|
| 🚫 **Network-Wide Ad Blocker** | Blocks ads & trackers on **every device** in your home — phones, tablets, smart TVs, everything | Like the internet was meant to be |
| 🔒 **Free Private VPN** | Wherever you go (4G, airport WiFi, hotels), your IP is **always your home IP** | Like you never left the couch |
| 👻 **Invisible to trackers** | DNS-level blocking means trackers never even load | Like you don't exist to advertisers |
| ⚡ **10 minute setup** | Flash → Plug → Done. No terminal. No config files. | Like it should be |

**No subscriptions. No cloud. No data collection. No BS.**

Your Raspberry Pi. Your rules.

> **💥 Buy a Raspberry Pi. Flash the ISO. Plug it in. That's it — you just freed your entire household from corporations, trackers, and bad actors. No degree required. No subscription. Just freedom.**

---

## 🏗️ How It Works

```
                        YOUR HOME
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Phone ────┐                                        │
  │   Laptop ───┤                                        │
  │   Smart TV ─┼───▶  Raspberry Pi (Invisix)  ───▶ Internet
  │   Console ──┤        |-- Pi-hole (ad blocking)       │
  │   Tablet ───┘        '-- Tailscale (VPN)             │
  │                                                      │
  │   All DNS queries filtered. Ads obliterated.         │
  └──────────────────────────────────────────────────────┘

                     AWAY FROM HOME
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   You (4G / Airport WiFi / Hotel)                    │
  │     |                                                │
  │     '───▶  Tailscale VPN Tunnel  ───▶  Home          │
  │                                                      │
  │   Your IP = Home IP. Ads = Still blocked.            │
  │   ISP/Hotel/Airport sees: encrypted noise.           │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 What You Need

| Item | Cost | Note |
|---|---|---|
| 🍓 Raspberry Pi 4 (or newer) | ~$35-55 | The brain |
| 💾 MicroSD Card (8GB+) | ~$5 | The soul |
| 🔌 Ethernet Cable | ~$3 | The spine |
| ⚡ USB-C Power Supply | ~$10 | The heart |

**Total: ~$50-70 one-time.** No monthly fees. Ever.

> Compare that to $10-15/month for a commercial VPN that [still tracks you](https://www.consumerreports.org/electronics/vpn-services/vpn-testing-poor-privacy-security-a5765950498/) and sells your data. Invisix pays for itself in **4 months**.

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

### Step 2: Activate VPN (Optional) ✨

> *Skip this if you only want ad blocking at home.*

1. Create a free account at [**tailscale.com**](https://tailscale.com) (Google/Microsoft login works).
2. Go to **Settings → Keys → "Generate auth key"**.
3. Copy the key (`tskey-...`).
4. Open the flashed SD card on your computer (it shows up as `bootfs`).
5. Create a file named **`tailscale-auth.key`** and paste the key inside. Save.
6. Eject.

### Step 3: Plug & Play 🔌

1. SD card → Raspberry Pi.
2. Ethernet cable → Router to Pi.  
3. Power cable → Pi.
4. **Wait 5 minutes** ⏳ — it auto-configures everything.

### Step 4: Tell Your Router (The Only Manual Step) ⚙️

1. Open your router's page (`http://192.168.1.1` or `http://192.168.0.1`).
2. Find **DHCP** / **Local Network** settings.
3. Find `raspberrypi` in the device list → enable **Static Lease**.
4. Copy its IP (e.g., `192.168.1.50`).
5. Set that IP as your **Primary DNS**.

### ✅ Done!

**That's it.** Every device on your network is now ad-free and tracker-free.

---

## 🌍 Using It

### 🏠 At Home
Do nothing. Ads disappear. Pages load faster. Life improves.

### 📱 Away from Home (4G / Public WiFi)
1. Install the **Tailscale** app on your phone.
2. Log in.
3. Toggle ON.
4. You're now browsing through your home connection — **ad-free, encrypted, invisible**.

### 📊 Control Panel
See how many ads you've crushed:
- Visit `http://<YOUR-PI-IP>/admin`
- Password: `admin`

> Most users block **30-50% of all DNS queries**. That's thousands of trackers per day that never reach your devices.

---

## 🔥 Why Invisix?

| | Commercial VPN | Pi-hole alone | **Invisix** |
|---|---|---|---|
| Monthly cost | $5-15/mo | Free | **Free** |
| Ad blocking | ❌ | ✅ Home only | ✅ **Everywhere** |
| VPN included | ✅ | ❌ | ✅ **Free forever** |
| Blocks on all devices | ❌ | ✅ | ✅ |
| No app required (home) | ❌ | ✅ | ✅ |
| Your data stays yours | 🤷 Depends | ✅ | ✅ |
| Setup time | 5 min | 1-2 hours | **10 min** |
| Requires terminal | N/A | Yes | **No** |

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

If Invisix helped you, **help it help others**:

- ⭐ **Star this repo** — it's the single biggest thing you can do.
- 📢 **Share it** — tell a friend, post it, tweet it.
- 🐛 **Report bugs** — every issue makes Invisix better for everyone.
- 🍴 **Fork & contribute** — code, docs, translations, all welcome.

> The internet wasn't designed to spy on you. Let's take it back.

---

## 📜 License

[MIT License](LICENSE) — do whatever you want with it. Seriously.

---

<p align="center">
  Made with ❤️ in Barcelona
</p>

<p align="center">
  <strong>Privacy is not a luxury. It's a right.</strong>
</p>
