<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Unternehmensgerechte Datenschutzlösung, sofort einsatzbereit (Out-of-the-Box).</strong><br>
  <sub>🚫 Eine winzige Box. Unbegrenzte Freiheit. Netzwerkweiter AdBlocker und TrackerBlocker.</sub><br>
  <sub>💼 Sicheres, kostenloses VPN über Ihr Büro- oder Heimnetzwerk — entfernter Datenverkehr profitiert vom selben AdBlocker.</sub><br>
  <sub>🏆 Entwickelt für Unternehmen, Freiberufler und kleine Firmen. Dank des reduzierten Preises auch für Heimanwender leicht einzusetzen.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io/index_de.html">🌐 Website</a> · 
  <a href="#-schnellstart-10-minuten">🚀 Schnellstart</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Sterne uns (Star Us)</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="License">
  <img src="https://img.shields.io/badge/setup-10%20minutes-brightgreen" alt="Setup Time">
  <img src="https://img.shields.io/badge/reqs-Raspberry%20Pi%204B%202GB-blue" alt="Hardware">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a></em>
</p>

---

## 🤔 Das Problem

Jeden Tag sind **Unternehmen, Remote-Mitarbeiter und Freiberufler ständiger Überwachung und Tracking ausgesetzt**.

- Internetanbieter (ISPs) protokollieren jede Unternehmensdomain, die Sie besuchen.
- Werbenetzwerke verfolgen das Nutzerverhalten über Tausende von Seiten hinweg.
- Ohne ein zentralisiertes VPN sind externe Mitarbeiter in öffentlichen WLANs und über 4G ungeschützt.
- Professionelle Firewall-, AdBlock- und VPN-Lösungen auf Enterprise-Niveau sind meist komplex, teuer und erfordern dedizierte IT-Teams.

Sie benötigen eine professionelle, zuverlässige und sichere Umgebung.

> *"Zu argumentieren, dass einem Privatsphäre egal ist, weil man nichts zu verbergen hat, ist so, als ob man argumentiert, dass einem Meinungsfreiheit egal ist, weil man nichts zu sagen hat."*  
> — **Edward Snowden**

---

## 💡 Die Lösung

**Invisix** ist eine Plug-and-Play Linux-Distribution für Ihren Raspberry Pi, die eine **unternehmensweite Datenschutzlösung bietet – sofort einsatzbereit.**

| Funktion | Was sie bewirkt | Auswirkung |
|---|---|---|
| 🚫 **AdBlocker & TrackerBlocker** | Blockiert Werbung & Tracker auf **jedem Gerät**, das mit Ihrem Netzwerk verbunden ist. | Bandbreitenoptimierung und Schutz vor bösartigem Tracking. |
| 🔒 **Kostenloses VPN durch Büro/Zuhause** | Leitet externen Datenverkehr (4G, Hotel-WLAN) sicher durch Ihr lokales Netzwerk. | Arbeiten Sie von überall sicher mit einer lokalen IP. |
| 🛡️ **VPN profitiert vom AdBlocker** | Sogar bei Remote-Arbeit über VPN wird Ihr Datenverkehr vom AdBlocker gefiltert. | Konstante Sicherheit unabhängig von Ihrem Standort. |
| 📉 **Geringer Preis** | Erfordert nur einen Raspberry Pi 4B 2GB (Mindestanforderung). | Zugänglich für kleine Unternehmen, Freiberufler und Heimanwender. |

**Keine Abonnements. Keine Datensammlung in der Cloud. Nur eine einfache Konfigurationsänderung, um Ihr Geschäft zu sichern.**

> **💥 Kaufen Sie einen Raspberry Pi 4B 2GB. Flashen Sie die ISO. Stecken Sie ihn ein. Schützen Sie Ihr Büro- oder Heimnetzwerk sofort.**

---

## 🏗️ Wie es funktioniert

```text
                        IHR BÜRO / ZUHAUSE
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Arbeitsplatz ──────┐                               │
  │   Laptop ────────────┤                               │
  │   Smart-Bildschirm ──┼─▶ Raspberry Pi (Invisix) ─▶ Internet
  │   Smartphone ────────┤      |-- DNS AdBlocker        │
  │   IoT-Gerät ─────────┘      '-- Tailscale (VPN)      │
  │                                                      │
  │   Alle DNS-Anfragen gefiltert. Tracker eliminiert.   │
  └──────────────────────────────────────────────────────┘

                      REMOTE-MITARBEITER
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Remote-Laptop (4G / Hotel / Flughafen)             │
  │     |                                                │
  │     '───▶  Tailscale VPN-Tunnel ───▶  Lokales Netz   │
  │                                                      │
  │   Datenverkehr nahtlos durch AdBlocker geschützt.    │
  │   Externe Netzwerke sehen nur verschlüsseltes Rauschen. │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 Was Sie brauchen

| Artikel | Kosten | Hinweis |
|---|---|---|
| 🍓 Raspberry Pi 4B 2GB (Min. Req) | ~$35-55 | Das Gehirn |
| 💾 MicroSD-Karte (8GB+) | ~$5 | Der Speicher |
| 🔌 Ethernet-Kabel | ~$3 | Die Verbindung |
| ⚡ USB-C Netzteil | ~$10 | Die Stromversorgung |

**Gesamt: ~$50-70 einmalig.** Keine wiederkehrenden SaaS-Gebühren für Unternehmensschutz.

---

## 🚀 Schnellstart (10 Minuten)

### Schritt 1: Image flashen 💾

1. Laden Sie die **`invisix-distro.img`** von der [Releases-Seite](https://github.com/lluisagusti/Invisix/releases) herunter.
2. Laden Sie [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/) herunter.
3. Öffnen Sie es und wählen Sie:
   - **Gerät (Device)**: Raspberry Pi 4
   - **OS**: Nach unten scrollen → "Use Custom" → `invisix-distro.img` auswählen
   - **Speicher (Storage)**: Ihre SD-Karte
4. Klicken Sie auf **Weiter** → **"NEIN"** zu den Einstellungen (bereits konfiguriert!) → **Schreiben**.

### Schritt 2: Kostenloses VPN aktivieren (Optional) ✨

> *Überspringen Sie dies, wenn Sie nur den lokalen Netzwerkschutz wünschen.*

1. Erstellen Sie ein kostenloses Konto bei [**tailscale.com**](https://tailscale.com).
2. Gehen Sie zu **Settings → Keys → "Generate auth key"**.
3. Kopieren Sie den Schlüssel (`tskey-...`).
4. Öffnen Sie die geflashte SD-Karte an Ihrem Computer (als Laufwerk `bootfs`).
5. Erstellen Sie eine Datei namens **`tailscale-auth.key`** und fügen Sie den Schlüssel darin ein. Speichern.
6. Auswerfen.

### Schritt 3: Plug & Play 🔌

1. SD-Karte → Raspberry Pi.
2. Ethernet-Kabel → Router/Switch zum Pi.  
3. Stromkabel → Pi.
4. **5 Minuten warten** ⏳ — er konfiguriert alles automatisch.

### Schritt 4: Die einzige Konfigurationsänderung ⚙️

Um alle Anfragen über Invisix zu leiten, müssen Sie Ihrem Router sagen, wo er suchen soll:

1. Öffnen Sie die Verwaltungsseite Ihres Routers (`http://192.168.1.1` oder `http://192.168.0.1`).
2. Suchen Sie nach den **DHCP**- oder **Lokales Netzwerk**-Einstellungen.
3. Suchen Sie nach `raspberrypi` → aktivieren Sie **"Static Lease" (Feste IP)** (damit sich die IP nie ändert).
4. Kopieren Sie diese IP (z.B. `192.168.1.50`).
5. Legen Sie diese IP als den **primären DNS-Server** Ihres Netzwerks fest.

### ✅ Fertig!

**Das war's.** Ihr Unternehmens- oder Heimnetzwerk ist nun vor Werbung und Tracking geschützt.

---

## 🌍 Nutzung

### 🏢 Im Büro / Zuhause
Tun Sie gar nichts. Werbung verschwindet. Seiten laden schneller. Verfolgung stoppt. Das ganze Team ist geschützt.

### 💼 Remote-Arbeit (4G / Öffentliches WLAN)
1. Installieren Sie den **Tailscale** Client auf Ihrem Arbeitsgerät.
2. Einloggen.
3. VPN auf ON schalten.
4. Fertig – **Ihr VPN-Verkehr profitiert vom selben AdBlocker-Schutz.**

### 📊 Kontrollzentrum
Überprüfen Sie Ihren Netzwerkverkehr und sehen Sie, was blockiert wird:
- Besuchen Sie `http://<IHRE-PI-IP>/admin`
- Passwort: `admin`

> Die meisten Netzwerke blockieren **30-50% aller DNS-Anfragen**. Das sind Tausende Tracking-Versuche pro Tag.

---

## 🔥 Warum Invisix?

| | Unternehmens-Firewall | SaaS VPN | **Invisix** |
|---|---|---|---|
| Monatliche Kosten | $$$/Monat | $15/Monat pro Nutzer | **Kostenlos** |
| Ad- & Tracker-Blocker | ✅ Erfordert IT | ❌ | ✅ **Out-of-the-Box** |
| Sicheres Remote VPN | ✅ Komplexes Setup | ✅ | ✅ **Einfach & Kostenlos** |
| VPN mit AdBlock | ✅ | ❌ | ✅ **Ja** |
| Zielgruppe | Großkonzerne | Jeder | **KMU, Freelance, Heimnutzer** |
| Einrichtungszeit | Tage | 5 Min | **10 Min** |
| Erfordert IT-Kenntnisse | Ja | Nein | **Nein (nur 1 Änderung)** |

---

## 🤝 Mitwirken

Haben Sie einen Fehler gefunden? Eine Idee? Helfen Sie uns.

1. Forken Sie dieses Repo.
2. Erstellen Sie Ihren Feature-Branch: `git checkout -b feature/tolles-feature`
3. Committen: `git commit -m 'Tolles Feature hinzugefügt'`
4. Pushen: `git push origin feature/tolles-feature`
5. Pull Request öffnen.

Siehe [`BUILD.md`](BUILD.md) für Anweisungen zur Erstellung des Distro-Images aus dem Quellcode.

---

## 📣 Helfen Sie uns bei der Verbreitung

Wenn Invisix Ihren Arbeitsablauf gesichert hat, **helfen Sie anderen**:

- ⭐ **Repo bewerten** — das ist die beste Möglichkeit, uns zu unterstützen.
- 📢 **Teilen** — sagen Sie es einem IT-Admin oder Freelance-Kollegen.
- 🐛 **Bugs melden** — jeder gemeldete Fehler macht Invisix besser.
- 🍴 **Fork & Contribute** — Code, Dokumentation, Übersetzungen, alles willkommen.

> Das Internet wurde nicht dafür entworfen, Sie auszuspionieren. Holen wir es uns zurück.

---

## 📜 Lizenz

[MIT License](LICENSE) — Teilen macht Freude (Sharing is caring).

---

<p align="center">
  Hergestellt mit ❤️ in Barcelona
</p>

<p align="center">
  <strong>Datenschutz ist kein Luxus. Er ist ein Recht.</strong>
</p>
