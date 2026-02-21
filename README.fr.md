<p align="center">
  <img src="docs/images/logo_white.png" alt="Invisix Logo" width="200">
</p>

<h1 align="center">INVISIX</h1>

<p align="center">
  <strong>Solution de confidentialité professionnelle, clé en main.</strong><br>
  <sub>🚫 Un petit boîtier. Une liberté infinie. Bloqueur de publicités et de traqueurs sur tout le réseau.</sub><br>
  <sub>💼 VPN gratuit et sécurisé via le réseau de votre bureau ou domicile — le trafic distant bénéficie de la même protection AdBlock.</sub><br>
  <sub>🏆 Conçu pour les entreprises, les freelances et les PME. Assez simple pour un usage domestique grâce à son prix réduit.</sub>
</p>

<p align="center">
  <a href="https://www.invisix.io/index_fr.html">🌐 Site Web</a> · 
  <a href="#-démarrage-rapide-10-minutes">🚀 Démarrage Rapide</a> · 
  <a href="https://github.com/lluisagusti/Invisix/stargazers">⭐ Donnez-nous une Étoile</a>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/lluisagusti/Invisix?style=social" alt="GitHub Stars">
  <img src="https://img.shields.io/github/license/lluisagusti/Invisix" alt="License">
  <img src="https://img.shields.io/badge/setup-10%20minutes-brightgreen" alt="Setup Time">
  <img src="https://img.shields.io/badge/reqs-Raspberry%20Pi%204B%202GB-blue" alt="Hardware">
</p>

<p align="center">
  <em>🇬🇧 <a href="README.md">English</a> · 🇪🇸 <a href="README.es.md">Español</a> · 🇨🇳 <a href="README.zh.md">中文</a> · 🇩🇪 <a href="README.de.md">Deutsch</a></em>
</p>

---

## 🤔 Le Problème

Chaque jour, **les entreprises, les télétravailleurs et les freelances font face à une surveillance et un pistage incessants**.

- Les fournisseurs d'accès (FAI) enregistrent chaque domaine consulté.
- Les réseaux publicitaires pistent le comportement des utilisateurs.
- Sans un VPN centralisé, les travailleurs à distance sont vulnérables sur les WiFi publics et la 4G.
- Les solutions d'entreprise de pare-feu, d'AdBlock et de VPN sont souvent complexes, coûteuses et nécessitent des équipes informatiques dédiées.

Vous avez besoin d'un environnement professionnel, fiable et sécurisé.

> *"Dire que le droit à la vie privée importe peu parce que vous n'avez rien à cacher, c'est comme dire que la liberté d'expression importe peu car vous n'avez rien à dire."*  
> — **Edward Snowden**

---

## 💡 La Solution

**Invisix** est une distribution Linux prête à l'emploi (plug-and-play) pour Raspberry Pi, fournissant une **solution de confidentialité professionnelle, clé en main.**

| Fonctionnalité | Ce que ça fait | Impact |
|---|---|---|
| 🚫 **AdBlocker et TrackerBlocker** | Bloque les publicités et les traqueurs sur **tous les appareils** de votre réseau. | Optimisation de la bande passante et protection contre le traçage. |
| 🔒 **VPN Gratuit par votre Bureau/Maison** | Tunnel sécurisé pour le trafic distant (4G, hôtel) vers votre réseau local. | Travaillez en sécurité de n'importe où avec une IP locale. |
| 🛡️ **Le VPN bénéficie de l'AdBlock** | Même à distance, votre trafic passe par le bloqueur de pubs. | Une protection constante où que vous soyez. |
| 📉 **Prix Réduit** | Nécessite seulement un Raspberry Pi 4B 2GB (au minimum). | Accessible aux PME, aux freelances, et même pour la maison. |

**Sans abonnements. Sans revente de données. Juste un rapide changement de configuration pour sécuriser votre entreprise.**

> **💥 Achetez un Raspberry Pi 4B 2GB. Flashez l'ISO. Branchez-le. Protégez votre réseau professionnel ou domestique.**

---

## 🏗️ Comment ça Marche

```text
                        AU BUREAU / À LA MAISON
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   Station de travail ─┐                              │
  │   PC Portable ────────┤                              │
  │   Écran connecté ─────┼─▶ Raspberry Pi (Invisix) ─▶ Internet
  │   Smartphone ─────────┤      |-- DNS AdBlock         │
  │   Appareils IoT ──────┘      '-- Tailscale (VPN)     │
  │                                                      │
  │   DNS filtré. Tous les traqueurs sont éliminés.      │
  └──────────────────────────────────────────────────────┘

                        TRAVAILLEURS À DISTANCE
  ┌──────────────────────────────────────────────────────┐
  │                                                      │
  │   PC Portable Distant (4G / Hôtel / Aéroport)        │
  │     |                                                │
  │     '───▶ Tunnel VPN Tailscale ───▶ Réseau Local     │
  │                                                      │
  │   Le trafic est sans failles protégé par l'AdBlock.  │
  │   Les réseaux externes ne voient que du bruit bridé. │
  └──────────────────────────────────────────────────────┘
```

---

## 📦 Ce dont Vous Avez Besoin

| Élément | Coût Moyen | Note |
|---|---|---|
| 🍓 Raspberry Pi 4B 2GB (Min Req) | ~35-55 € | Le Cerveau |
| 💾 Carte MicroSD (8Go+) | ~5 € | Le Stockage |
| 🔌 Câble Ethernet | ~3 € | La Connexion |
| ⚡ Alimentation USB-C | ~10 € | L'Énergie |

**Total : ~50-70 € en une fois.** Fini les forfaits mensuels pour de la protection d'entreprise.

---

## 🚀 Démarrage Rapide (10 minutes)

### Étape 1 : Flashez l'Image 💾

1. Téléchargez **`invisix-distro.img`** sur la [page Releases](https://github.com/lluisagusti/Invisix/releases).
2. Téléchargez et installez [**Raspberry Pi Imager**](https://www.raspberrypi.com/software/).
3. Ouvrez le logiciel et sélectionnez :
   - **Appareil** : Raspberry Pi 4
   - **OS** : "Use Custom" (Personnalisé) → sélectionnez `invisix-distro.img`
   - **Stockage** : Votre carte SD
4. Cliquez sur **Suivant** → **"NON"** pour modifier les paramètres (déjà configuré) → **Écrire**.

### Étape 2 : Activer le VPN Gratuit (Optionnel) ✨

> *Passez cette étape si vous ne voulez qu'une protection réseau locale.*

1. Créez un compte gratuit sur [**tailscale.com**](https://tailscale.com).
2. Allez dans **Settings → Keys → "Generate auth key"**.
3. Copiez la clé (`tskey-...`).
4. Ouvrez la carte SD sur votre ordinateur (volume `bootfs`).
5. Créez un fichier **`tailscale-auth.key`** et collez-y la clé. Enregistrez.
6. Éjectez la carte SD.

### Étape 3 : Branchez et Jouez 🔌

1. Carte SD → Raspberry Pi.
2. Câble Ethernet → De votre box/routeur vers le Pi.  
3. Câble d'alimentation → Pi.
4. **Attendez 5 minutes** ⏳ — le système s'auto-configure.

### Étape 4 : Le Seul Changement de Configuration ⚙️

Pour router tout le trafic de votre domaine vers Invisix :

1. Ouvrez l'interface d'administration de votre routeur/box (souvent `http://192.168.1.1` ou `192.168.0.1`).
2. Cherchez les paramètres **DHCP** ou **Réseau Local**.
3. Trouvez `raspberrypi` dans la liste → activez **"Bail Statique" (Static Lease)** (pour figer l'IP).
4. Copiez l'adresse IP (ex. `192.168.1.50`).
5. Définissez cette IP comme serveur **DNS Primaire** dans le DHCP.

### ✅ Terminé !

**C'est tout.** Votre réseau professionnel ou privé est désormais solidement protégé.

---

## 🌍 Utilisation

### 🏢 Au Bureau / À la Maison
Ne faites rien. Les pubs disparaissent. Les sites chargent vite. L'équipe est protégée.

### 💼 Télétravail (4G / WiFi Public)
1. Installez l'application **Tailscale** sur votre PC/Smartphone.
2. Identifiez-vous.
3. Activez le VPN.
4. Vous êtes sécurisé. **Votre trafic VPN bénéficie aussi du bloqueur de pubs Invisix.**

### 📊 Tableau de Bord
Visualisez et auditez votre trafic :
- Visitez `http://<VOTRE-IP-PI>/admin`
- Mot de passe : `admin`

> La majorité des réseaux bloquent **30 à 50% de leurs requêtes DNS**. Des milliers de traqueurs supprimés.

---

## 🔥 Pourquoi Invisix ?

| | Pare-feu d'Entreprise | VPN SaaS | **Invisix** |
|---|---|---|---|
| Coût mensuel | $$$/mois | $15/mois l'utilisateur | **Gratuit** |
| Anti-Pubs & Traqueurs | ✅ Requiert l'IT | ❌ | ✅ **Par défaut** |
| VPN Distant Sécurisé | ✅ Configuration dure | ✅ | ✅ **Simple et Gratuit** |
| AdBlock avec VPN | ✅ | ❌ | ✅ **Oui** |
| Public Cible | Grandes Entreprises | Tout le monde | **PME, Freelance, Maison** |
| Temps de configuration| Des jours | 5 min | **10 min** |
| Diplôme technique | Oui | Non | **Non (un changement)** |

---

## 🤝 Contribution

Trouvé un bug ? Une idée ? Aidez-nous.

1. Forkez ce dépôt.
2. Créez votre branche : `git checkout -b feature/nouvelle-fonctionnalite`
3. Commitez : `git commit -m 'Ajouté super fonctionnalité'`
4. Pushez : `git push origin feature/nouvelle-fonctionnalite`
5. Ouvrez une Pull Request.

Voir [`BUILD.md`](BUILD.md) pour les instructions de construction de l'image.

---

## 📣 Passez le Mot

- ⭐ **Étoilez ce dépôt** — C'est énorme pour nous.
- 📢 **Partagez-le** — Informez les administrateurs et collègues.
- 🐛 **Signalez les bugs** — L'open-source a besoin de vous.

> Internet ne devrait pas vous espionner. Reprenons le contrôle.

---

## 📜 Licence

[Licence MIT](LICENSE) — Le partage, c'est la vie.

---

<p align="center">
  Créé avec ❤️ à Barcelone
</p>

<p align="center">
  <strong>La vie privée n'est pas un luxe, c'est un droit.</strong>
</p>
