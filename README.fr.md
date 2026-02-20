<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Votre maison est votre château. Maintenant c'est aussi votre VPN.</strong><br>
  <sub>🚫 Une petite boîte. Zéro pub sur tous vos appareils. Téléphones, tablettes, Smart TVs — même ce grille-pain IoT suspect.</sub><br>
  <sub>🏆 Probablement la distro Linux la plus simple et la plus utile pour les utilisateurs non-techniques. Branchez-la et oubliez-la.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io">🌐 Site Web</a> · 
  <a href="#-démarrage-rapide-10-minutes">🚀 Démarrage Rapide</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Mettez une Étoile</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="Licence">
  <img src="https://img.shields.io/badge/installation-10%20minutes-brightgreen" alt="Temps d'Installation">
  <img src="https://img.shields.io/badge/coût-%240-blue" alt="Coût: Gratuit">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 Le Problème

Chaque fois que vous ouvrez votre téléphone, **les entreprises vous surveillent**.

- Votre FAI enregistre chaque site que vous visitez.
- Les applications vous traquent via plus de 6 000 réseaux publicitaires.
- Smart TVs, babyphones, même votre frigo — tous envoient vos données quelque part.
- Sur le WiFi public ou la 4G, votre trafic est **grand ouvert**.

Vous n'avez pas demandé à être surveillé(e). Mais c'est ce que vous avez eu.

> *"Dire que vous ne vous souciez pas de la vie privée parce que vous n'avez rien à cacher revient à dire que vous ne vous souciez pas de la liberté d'expression parce que vous n'avez rien à dire."*  
> — **Edward Snowden**

---

## 💡 La Solution

**Invisix** est une distribution Raspberry Pi prête à l'emploi qui vous offre :

| Fonctionnalité | Ce qu'elle fait | Comment ça se ressent |
|---|---|---|
| 🚫 **Bloqueur de pubs pour tout le réseau** | Bloque les publicités et trackers sur **tous les appareils** de votre maison — téléphones, tablettes, Smart TVs, tout | Comme Internet devrait être |
| 🔒 **VPN Privé et Gratuit** | Où que vous alliez (4G, WiFi d'aéroport, hôtels), votre IP est **toujours celle de chez vous** | Comme si vous n'aviez jamais quitté le canapé |
| 👻 **Invisible pour les trackers** | Le blocage au niveau DNS signifie que les trackers ne se chargent même pas | Comme si vous n'existiez pas pour les annonceurs |
| ⚡ **Installation en 10 minutes** | Flashez → Branchez → C'est fait. Pas de terminal. Pas de fichiers de config. | Comme ça devrait être |

**Pas d'abonnement. Pas de cloud. Pas de collecte de données. Aucune arnaque.**

Votre Raspberry Pi. Vos règles.

> **💥 Achetez un Raspberry Pi. Flashez l'ISO. Branchez-le. C'est tout — vous venez de libérer tout votre foyer des entreprises, des trackers et des acteurs malveillants. Pas besoin de diplôme. Pas d'abonnement. Juste la liberté.**

---

## 🏗️ Comment Ça Marche

```
                      VOTRE MAISON
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Telephone ┐                                        │
  │   PC ───────┤                                        │
  │   Smart TV ─┼───▶  Raspberry Pi (Invisix)  ───▶ Internet
  │   Console ──┤        |-- Pi-hole (blocage pubs)      │
  │   Tablette ─┘        '-- Tailscale (VPN)             │
  │                                                      │
  │   Requetes DNS filtrees. Pubs eliminees.             │
  └──────────────────────────────────────────────────────┘

                    EN DEPLACEMENT
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Vous (4G / WiFi Aeroport / Hotel)                  │
  │     |                                                │
  │     '───▶  Tunnel VPN Tailscale  ───▶  Maison        │
  │                                                      │
  │   Votre IP = IP Maison. Pubs = Toujours bloquees.    │
  │   FAI/Hotel/Aeroport voit: trafic chiffre.           │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 Ce Dont Vous Avez Besoin

| Matériel | Coût | Note |
|---|---|---|
| 🍓 Raspberry Pi 4 (ou plus récent) | ~35-55€ | Le cerveau |
| 💾 Carte MicroSD (8 Go+) | ~5€ | L'âme |
| 🔌 Câble Ethernet | ~3€ | La colonne vertébrale |
| ⚡ Alimentation USB-C | ~10€ | Le cœur |

**Total : ~50-70€ en une seule fois.** Pas de frais mensuels. Jamais.

> Comparez avec les 10-15€/mois d'un VPN commercial qui [vous traque toujours](https://www.consumerreports.org/electronics/vpn-services/vpn-testing-poor-privacy-security-a5765950498/) et vend vos données. Invisix est rentabilisé en **4 mois**.

---

## 🚀 Démarrage Rapide (10 minutes)

### Étape 1 : Flasher l'Image 💾

1. Téléchargez **`invisix-distro.img`** depuis la [page des Releases](https://github.com/lluisagusti/Invisix/releases).
2. Téléchargez [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3. Ouvrez-le et sélectionnez :
   - **Appareil** : Raspberry Pi 4
   - **OS** : Descendez tout en bas → "Use Custom" → sélectionnez `invisix-distro.img`
   - **Stockage** : Votre carte SD
4. Cliquez **Next** → **"NO"** pour modifier les paramètres (déjà configurés !) → **Write**.

### Étape 2 : Activer le VPN (Optionnel) ✨

> *Passez cette étape si vous ne voulez que le blocage de pubs à la maison.*

1. Créez un compte gratuit sur [**tailscale.com**](https://tailscale.com) (connexion Google/Microsoft possible).
2. Allez dans **Settings → Keys → "Generate auth key"**.
3. Copiez la clé (`tskey-...`).
4. Sur votre ordinateur, ouvrez la carte SD flashée (elle apparaît comme `bootfs`).
5. Créez un fichier nommé **`tailscale-auth.key`** et collez la clé dedans. Sauvegardez.
6. Éjectez.

### Étape 3 : Branchez et C'est Parti 🔌

1. Carte SD → Raspberry Pi.
2. Câble Ethernet → Routeur vers Pi.
3. Câble d'alimentation → Pi.
4. **Attendez 5 minutes** ⏳ — tout se configure automatiquement.

### Étape 4 : Configurez Votre Routeur (La seule étape manuelle) ⚙️

1. Ouvrez la page de votre routeur (`http://192.168.1.1` ou `http://192.168.0.1`).
2. Trouvez les paramètres **DHCP** / **Réseau Local**.
3. Trouvez `raspberrypi` dans la liste des appareils → activez le **Bail Statique**.
4. Copiez son IP (ex : `192.168.1.50`).
5. Définissez cette IP comme votre **DNS Primaire**.

### ✅ C'est Fait !

**Voilà.** Tous les appareils de votre réseau sont maintenant libérés des pubs et des trackers.

---

## 🌍 Comment l'Utiliser

### 🏠 À la Maison
Ne faites rien. Les pubs disparaissent. Les pages chargent plus vite. La vie s'améliore.

### 📱 En Déplacement (4G / WiFi Public)
1. Installez l'application **Tailscale** sur votre téléphone.
2. Connectez-vous.
3. Activez-le.
4. Vous naviguez maintenant via votre connexion maison — **sans pubs, chiffré(e), invisible**.

### 📊 Panneau de Contrôle
Voyez combien de pubs vous avez écrasées :
- Visitez `http://<IP-DE-VOTRE-PI>/admin`
- Mot de passe : `admin`

> La plupart des utilisateurs bloquent **30-50% de toutes les requêtes DNS**. Ce sont des milliers de trackers par jour qui n'atteignent jamais vos appareils.

---

## 🔥 Pourquoi Invisix ?

| | VPN Commercial | Pi-hole seul | **Invisix** |
|---|---|---|---|
| Coût mensuel | 5-15€/mois | Gratuit | **Gratuit** |
| Blocage de pubs | ❌ | ✅ Maison seulement | ✅ **Partout** |
| VPN inclus | ✅ | ❌ | ✅ **Gratuit pour toujours** |
| Bloque sur tous les appareils | ❌ | ✅ | ✅ |
| Pas d'app nécessaire (maison) | ❌ | ✅ | ✅ |
| Vos données restent vôtres | 🤷 Ça dépend | ✅ | ✅ |
| Temps d'installation | 5 min | 1-2 heures | **10 min** |
| Nécessite un terminal | N/A | Oui | **Non** |

---

## 🤝 Contribuer

Trouvé un bug ? Une idée ? Nous serions ravis de votre aide.

1. Forkez ce dépôt.
2. Créez votre branche : `git checkout -b feature/super-fonctionnalite`
3. Commitez : `git commit -m 'Ajouter super fonctionnalité'`
4. Poussez : `git push origin feature/super-fonctionnalite`
5. Ouvrez une Pull Request.

Consultez [`BUILD.md`](BUILD.md) pour les instructions de compilation de l'image depuis les sources.

---

## 📣 Aidez-Nous à Faire Passer le Mot

Si Invisix vous a aidé(e), **aidez-le à aider les autres** :

- ⭐ **Mettez une étoile à ce dépôt** — c'est la chose la plus importante que vous puissiez faire.
- 📢 **Partagez-le** — dites-le à un ami, postez-le, tweetez-le.
- 🐛 **Signalez les bugs** — chaque issue rend Invisix meilleur pour tous.
- 🍴 **Forkez et contribuez** — code, docs, traductions, tout est bienvenu.

> Internet n'a pas été conçu pour vous espionner. Reprenons-le.

---

## 📜 Licence

[Licence MIT](LICENSE) — faites ce que vous voulez avec. Sérieusement.

---

<p align="center">
  Fait avec ❤️ à Barcelone
</p>

<p align="center">
  <strong>La vie privée n'est pas un luxe. C'est un droit.</strong>
</p>
