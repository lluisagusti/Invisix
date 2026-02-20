<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Dein Zuhause ist deine Burg. Jetzt ist es auch dein VPN.</strong><br>
  <sub>🚫 Eine kleine Box. Null Werbung auf allen Geräten. Handys, Tablets, Smart-TVs — sogar der dubiose IoT-Toaster.</sub><br>
  <sub>🏆 Wahrscheinlich die einfachste und nützlichste Linux-Distro für nicht-technische Nutzer. Einstecken und vergessen.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io">🌐 Website</a> · 
  <a href="#-schnellstart-10-minuten">🚀 Schnellstart</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Stern geben</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="Lizenz">
  <img src="https://img.shields.io/badge/Installation-10%20Minuten-brightgreen" alt="Installationszeit">
  <img src="https://img.shields.io/badge/Kosten-%240-blue" alt="Kosten: Kostenlos">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇫🇷 <a href="README.fr.md">Français</a></em>
</p>

---

## 🤔 Das Problem

Jedes Mal, wenn du dein Handy öffnest, **beobachten dich Konzerne**.

- Dein Internetanbieter protokolliert jede Webseite, die du besuchst.
- Apps verfolgen dich über 6.000+ Werbenetzwerke.
- Smart-TVs, Babyphones, sogar dein Kühlschrank — alles telefoniert nach Hause.
- Im öffentlichen WLAN oder bei 4G ist dein Datenverkehr **völlig offen**.

Du hast dich nicht für Überwachung entschieden. Aber du hast sie trotzdem bekommen.

> *"Zu argumentieren, dass dir Privatsphäre egal ist, weil du nichts zu verbergen hast, ist wie zu argumentieren, dass dir Redefreiheit egal ist, weil du nichts zu sagen hast."*  
> — **Edward Snowden**

---

## 💡 Die Lösung

**Invisix** ist eine Plug-and-Play Raspberry Pi Distribution, die dir bietet:

| Funktion | Was sie macht | Wie es sich anfühlt |
|---|---|---|
| 🚫 **Netzwerkweiter Werbeblocker** | Blockiert Werbung & Tracker auf **allen Geräten** in deinem Zuhause — Handys, Tablets, Smart-TVs, alles | So wie Internet sein sollte |
| 🔒 **Kostenloses privates VPN** | Egal wo du bist (4G, Flughafen-WLAN, Hotels), deine IP ist **immer deine Heim-IP** | Als hättest du nie die Couch verlassen |
| 👻 **Unsichtbar für Tracker** | DNS-Level-Blockierung bedeutet, dass Tracker nicht einmal geladen werden | Als würdest du für Werbetreibende nicht existieren |
| ⚡ **10 Minuten Installation** | Flashen → Einstecken → Fertig. Kein Terminal. Keine Config-Dateien. | So wie es sein sollte |

**Kein Abo. Keine Cloud. Keine Datensammlung. Kein Quatsch.**

Dein Raspberry Pi. Deine Regeln.

> **💥 Kauf dir einen Raspberry Pi. Flash das ISO. Steck ihn ein. Das war's — du hast gerade deinen gesamten Haushalt von Konzernen, Trackern und böswilligen Akteuren befreit. Kein Studium nötig. Kein Abo. Einfach Freiheit.**

---

## 🏗️ Wie Es Funktioniert

```
                      DEIN ZUHAUSE
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Handy ────┐                                        │
  │   Laptop ───┤                                        │
  │   Smart TV ─┼───▶  Raspberry Pi (Invisix)  ───▶ Internet
  │   Konsole ──┤        |-- Pi-hole (Werbeblocker)      │
  │   Tablet ───┘        '-- Tailscale (VPN)             │
  │                                                      │
  │   Alle DNS-Anfragen gefiltert. Werbung vernichtet.   │
  └──────────────────────────────────────────────────────┘

                       UNTERWEGS
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Du (4G / Flughafen-WLAN / Hotel)                   │
  │     |                                                │
  │     '───▶  Tailscale VPN-Tunnel  ───▶  Zuhause       │
  │                                                      │
  │   Deine IP = Heim-IP. Werbung = Immer blockiert.     │
  │   ISP/Hotel/Flughafen sieht: verschluesselten Traffic│
  └──────────────────────────────────────────────────────┘
```

---

## 📦 Was Du Brauchst

| Material | Kosten | Anmerkung |
|---|---|---|
| 🍓 Raspberry Pi 4 (oder neuer) | ~35-55€ | Das Gehirn |
| 💾 MicroSD-Karte (8GB+) | ~5€ | Die Seele |
| 🔌 Ethernet-Kabel | ~3€ | Das Rückgrat |
| ⚡ USB-C Netzteil | ~10€ | Das Herz |

**Gesamt: ~50-70€ einmalig.** Keine monatlichen Kosten. Niemals.

> Vergleiche das mit 10-15€/Monat für ein kommerzielles VPN, das [dich trotzdem verfolgt](https://www.consumerreports.org/electronics/vpn-services/vpn-testing-poor-privacy-security-a5765950498/) und deine Daten verkauft. Invisix hat sich in **4 Monaten** bezahlt gemacht.

---

## 🚀 Schnellstart (10 Minuten)

### Schritt 1: Image Flashen 💾

1. Lade **`invisix-distro.img`** von der [Releases-Seite](https://github.com/lluisagusti/Invisix/releases) herunter.
2. Lade [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/) herunter.
3. Öffne ihn und wähle:
   - **Gerät**: Raspberry Pi 4
   - **OS**: Ganz nach unten scrollen → "Use Custom" → `invisix-distro.img` auswählen
   - **Speicher**: Deine SD-Karte
4. Klicke **Next** → **"NEIN"** zu Einstellungen bearbeiten (bereits konfiguriert!) → **Write**.

### Schritt 2: VPN Aktivieren (Optional) ✨

> *Überspringe dies, wenn du nur Werbeblocker zu Hause willst.*

1. Erstelle ein kostenloses Konto bei [**tailscale.com**](https://tailscale.com) (Google/Microsoft-Login funktioniert).
2. Gehe zu **Settings → Keys → "Generate auth key"**.
3. Kopiere den Schlüssel (`tskey-...`).
4. Öffne die geflashte SD-Karte am Computer (erscheint als `bootfs`).
5. Erstelle eine Datei namens **`tailscale-auth.key`** und füge den Schlüssel ein. Speichern.
6. Auswerfen.

### Schritt 3: Einstecken & Los 🔌

1. SD-Karte → Raspberry Pi.
2. Ethernet-Kabel → Router zum Pi.
3. Stromkabel → Pi.
4. **5 Minuten warten** ⏳ — alles konfiguriert sich automatisch.

### Schritt 4: Router Konfigurieren (Der einzige manuelle Schritt) ⚙️

1. Öffne die Router-Seite (`http://192.168.1.1` oder `http://192.168.0.1`).
2. Finde die **DHCP** / **Lokales Netzwerk** Einstellungen.
3. Finde `raspberrypi` in der Geräteliste → aktiviere **Statische Zuweisung**.
4. Kopiere die IP (z.B. `192.168.1.50`).
5. Setze diese IP als deinen **Primären DNS**.

### ✅ Fertig!

**Das war's.** Alle Geräte in deinem Netzwerk sind jetzt werbefrei und trackerfrei.

---

## 🌍 Nutzung

### 🏠 Zu Hause
Mach nichts. Werbung verschwindet. Seiten laden schneller. Das Leben wird besser.

### 📱 Unterwegs (4G / Öffentliches WLAN)
1. Installiere die **Tailscale** App auf deinem Handy.
2. Anmelden.
3. Einschalten.
4. Du surfst jetzt über deine Heimverbindung — **werbefrei, verschlüsselt, unsichtbar**.

### 📊 Kontrollzentrum
Sieh dir an, wie viele Werbungen du zerquetscht hast:
- Besuche `http://<DEINE-PI-IP>/admin`
- Passwort: `admin`

> Die meisten Nutzer blockieren **30-50% aller DNS-Anfragen**. Das sind tausende Tracker pro Tag, die deine Geräte nie erreichen.

---

## 🔥 Warum Invisix?

| | Kommerzielles VPN | Pi-hole allein | **Invisix** |
|---|---|---|---|
| Monatliche Kosten | 5-15€/Monat | Kostenlos | **Kostenlos** |
| Werbeblocker | ❌ | ✅ Nur zu Hause | ✅ **Überall** |
| VPN inklusive | ✅ | ❌ | ✅ **Für immer kostenlos** |
| Blockiert auf allen Geräten | ❌ | ✅ | ✅ |
| Keine App nötig (zu Hause) | ❌ | ✅ | ✅ |
| Deine Daten bleiben deine | 🤷 Kommt drauf an | ✅ | ✅ |
| Installationszeit | 5 Min | 1-2 Stunden | **10 Min** |
| Terminal erforderlich | N/A | Ja | **Nein** |

---

## 🤝 Mitwirken

Bug gefunden? Eine Idee? Wir freuen uns über deine Hilfe.

1. Forke dieses Repo.
2. Erstelle deinen Branch: `git checkout -b feature/tolle-funktion`
3. Commit: `git commit -m 'Tolle Funktion hinzufügen'`
4. Push: `git push origin feature/tolle-funktion`
5. Öffne einen Pull Request.

Siehe [`BUILD.md`](BUILD.md) für Anweisungen zum Bauen des Distro-Images aus dem Quellcode.

---

## 📣 Hilf Uns, das Wort zu Verbreiten

Wenn Invisix dir geholfen hat, **hilf ihm, anderen zu helfen**:

- ⭐ **Gib diesem Repo einen Stern** — das ist das Wichtigste, was du tun kannst.
- 📢 **Teile es** — erzähl einem Freund, poste es, tweete es.
- 🐛 **Melde Bugs** — jedes Issue macht Invisix besser für alle.
- 🍴 **Fork & trage bei** — Code, Docs, Übersetzungen, alles willkommen.

> Das Internet wurde nicht dafür entworfen, dich auszuspionieren. Holen wir es uns zurück.

---

## 📜 Lizenz

[MIT-Lizenz](LICENSE) — mach damit, was du willst. Wirklich.

---

<p align="center">
  Mit ❤️ in Barcelona gemacht
</p>

<p align="center">
  <strong>Privatsphäre ist kein Luxus. Es ist ein Recht.</strong>
</p>
