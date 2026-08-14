---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Utilisation

## Section d'accueil

**Update News** — notes de version et recommandations de sauvegarde avant
d'effectuer les mises à jour. Ethos 1.6.0+ exige que le module RF interne et
les récepteurs TD/TW/AP/AP Plus soient en v3.0.1+ pour bénéficier de ses
améliorations. L'activation des **Pre-releases** (avec le serveur réglé sur
GitHub — voir [Paramètres de la suite](#suite-settings)) fait également
apparaître ici les versions préliminaires, aux côtés de l'historique
complet des versions.

**Ethos web page** — une vue intégrée de ethos.frsky-rc.com : ressources,
liens vers les modèles types et liste des radios prises en charge.

## Section Radio

L'onglet Radio permet de gérer la radio connectée. Démarrez-la en [mode
bootloader](../getting-started/usb-connection-modes.md#bootloader-mode) et
connectez-la en USB — Suite affiche le type de radio (par exemple « X20 »)
dès sa détection.

### Informations sur la radio

- **Ethos** — versions du firmware et du chargeur de démarrage installées ;
  **Manage Ethos** ouvre directement leur mise à jour si elles ne sont pas à
  jour.
- **RF Module** — firmware du module RF interne installé ; **Manage
  internal module** ouvre directement sa mise à jour si nécessaire.
- **Model manager** / **Lua library** / **Download center** — raccourcis
  vers ces outils.

### Mise à jour d'Ethos {: #updating-ethos }

L'onglet **Ethos** affiche côte à côte les versions du firmware, du
chargeur de démarrage, de la SD card/eMMC (fichiers audio) et de la mémoire
flash (bitmaps système) — les fichiers système en mémoire flash sont
désormais mis à jour avec le firmware et ne sont plus gérés séparément.

- **Write outdated components** — met à jour uniquement les composants
  obsolètes.
- **Write all components** — met tout à jour, quelle que soit la version.
- Options individuelles **Write firmware**, **Write bootloader**, **Write
  audio files**, chacune lancée en cliquant sur le bouton de mise à jour
  gris foncé situé à côté de l'option sélectionnée.
- **Flash from a local file** — contourne le téléchargement en utilisant un
  fichier de firmware déjà présent sur le disque.

Sélectionner une version consiste d'abord à choisir la **branche** souhaitée
(Stable/Testing) puis la version. La mise à jour invite d'abord à effectuer
une sauvegarde (**Go to backup page**) — faites-la. Si le firmware du module
RF interne n'est pas en v3.0.1+, Ethos 1.6.0+ exige sa mise à niveau avant
de poursuivre (**Go to Module manager** le flashe automatiquement, puis la
mise à jour d'Ethos reprend) — et pour les récepteurs TD/TW/AP/AP Plus, il
faut ensuite supprimer la télémétrie et relancer la découverte afin de
récupérer les noms de capteurs actualisés.

La progression de la mise à jour est affichée étape par étape (passage au
chargeur d'amorçage, téléchargement, copie, démontage des disques,
écriture, rafraîchissement des informations radio, « Update successful! ») —
l'écran de la radio affiche également la progression de l'écriture.

!!! note "Mises à jour préliminaires"
    Les fichiers d'une version préliminaire peuvent changer sans que son
    numéro de version change, ce que Suite ne peut pas détecter — reflashez
    toujours une version préliminaire que vous utilisez déjà lorsqu'elle
    devient une version définitive. En cas de doute, vérifiez la date du
    firmware dans [System → Info](../system-setup/information.md).

!!! note "Mise à jour depuis Ethos 1.2.8 ou antérieur"
    Si vous effectuez une mise à jour depuis une version aussi ancienne,
    Ethos Suite peut ne pas être en mesure de flasher automatiquement le
    firmware ou le chargeur de démarrage — une boîte de dialogue vous guide
    alors pour réaliser le flash manuellement. Dans les deux cas, il serait
    prudent d'éjecter les disques manuellement avant de débrancher le câble
    USB.

Les fichiers bitmap système sont désormais mis à jour automatiquement avec
le firmware (aucune gestion séparée n'est nécessaire) ; les fichiers audio
se mettent à jour via **Write all components** ou **Write audio files**
(téléchargement du pack audio de la langue sélectionnée, par exemple
« English audio pack »).

### RF Module Manager

Sélectionnez la version souhaitée (normalement la plus récente) et cliquez
sur **Flash module** pour écrire directement le firmware sur le module RF
interne — la mention « ...has been flashed successfully » confirme la fin de
l'opération. Cette procédure est également déclenchée automatiquement par la
mise à niveau obligatoire en v3.0.1 décrite ci-dessus.

### Ethos Mode

**Switch to Ethos** fait sortir la radio du mode bootloader pour redémarrer
et exécuter Ethos (signalé par une icône USB verte sur la radio, et par la
disparition de la mention « (Bootloader Mode) » dans l'en-tête de Suite).
Le mode Ethos est nécessaire pour que le **Download center** puisse utiliser
la radio comme proxy pour flasher des modules, des récepteurs, des capteurs
et des servos. Le bouton devient alors **Switch to Bootloader**, ce qui vous
permet de repasser en mode bootloader. **Eject Drives** déconnecte
proprement la radio.

### Model Manager

À l'aide du gestionnaire de modèles, une sauvegarde des modèles et des
paramètres de la radio peut être enregistrée sur le disque, ou une
sauvegarde précédemment enregistrée peut être restaurée.

!!! warning
    La restauration ne restaure **pas** le firmware — après avoir restauré
    vos modèles et vos paramètres, vous devez toujours réécrire séparément
    la version de firmware qui correspond à cette sauvegarde (voir [Mise à
    jour d'Ethos](#updating-ethos)), car les fichiers de modèles ne sont pas
    rétrocompatibles.

- **Backup Location** — parcourez jusqu'à l'emplacement de sauvegarde
  souhaité (le chemin est enregistré pour chaque type de radio) ; la date et
  l'heure de la dernière sauvegarde s'affichent en dessous.
- **Backup** — enregistre les fichiers de modèle en y consignant la version
  d'Ethos actuelle.
- **Restore** — sélectionnez les composants à restaurer : Audio (désactivé
  par défaut), Scripts, Screenshots, System Bitmaps (désactivé par défaut —
  désormais gérés avec le firmware), Models (inclut les fichiers texte de
  [liste de contrôle définie par
  l'utilisateur](../how-to/user-defined-checklist.md) stockés dans le
  dossier Modèles), Language, User Bitmaps, Logs, System Settings.

### Lua library

Parcourez et installez en un clic des scripts/outils Lua depuis la
bibliothèque distante de FrSky (ou installez depuis un fichier zip local) ;
les scripts installés apparaissent aux côtés du catalogue distant dès qu'il
en existe.

## Section Outils

- **Download center** — téléchargez n'importe quel firmware depuis le site
  FrSky et (lorsque la radio est en mode Ethos) utilisez-la comme proxy
  pour flasher un module, un capteur, un servo ou un récepteur connecté via
  une liaison de mise à jour S.Port. Choisissez le produit dans la liste
  (par exemple un récepteur TW SR8), parcourez les **assets** disponibles,
  puis **Download** pour enregistrer localement ou **Flash** pour écrire
  directement sur l'appareil connecté — une barre de progression suit le
  flash et se termine par « ...has been flashed successfully! »

- **Image manager** — convertit vos images au format natif d'Ethos (BMP
  32 bits, RVB, canal alpha ajouté uniquement si nécessaire) à la taille
  spécifiée, en conservant les proportions. Tailles de référence : les
  images des modèles sont de 300 × 280 pixels (X20) / 180 × 168 pixels
  (X18) ; les images en plein écran de 800 × 480 pixels (X20) / 480 × 320
  pixels (X18) — voir le [Gestionnaire de
  fichiers](../system-setup/file-manager.md#top-level-folders) pour les
  règles de nommage des bitmaps. Permet également de parcourir directement
  les dossiers `bitmaps/gps`, `bitmaps/models` et `bitmaps/user` de la
  radio, avec prise en charge de l'envoi. Cliquez sur le bouton **+** pour
  ajouter des images à la liste de conversion (le format TIFF n'est pas pris
  en charge), sélectionnez ensuite le chemin de sortie (un dossier local ;
  directement sur la radio dans les images de modèle/utilisateur/GPS ; ou le
  dossier de la radio actuellement ouvert), et indiquez éventuellement s'il
  faut ouvrir automatiquement le dossier de sortie ou forcer l'ajout d'un
  canal alpha.

- **Audio manager** — convertit vos fichiers audio au format d'Ethos (PCM
  linéaire, 32 kHz, mono, 16 bits little-endian). Cliquez sur le bouton
  **+** pour ajouter des fichiers, choisissez un dossier local ou envoyez-les
  directement dans le dossier `audio` de la radio (en les déplaçant ensuite
  dans le bon sous-dossier de voix), avec ouverture automatique facultative
  de la destination.

- **Lua development tools** — **Lua Docs** fournit un lien vers le guide de
  référence Ethos Lua (voir aussi le fil de discussion *FrSky - ETHOS Lua
  Script Programming* sur rcgroups) ; **Lua Demo Scripts** ouvre la page des
  scripts d'exemple sur le GitHub Ethos-Feedback-Community ; **Debug** ouvre
  une fenêtre de journal de débogage en direct pour afficher les traces Lua
  `print()` envoyées à l'USB-Série lorsque la radio est en mode série :

  1. Connectez la radio à Ethos Suite comme d'habitude, puis passez en mode
     Ethos.
  2. Vous pouvez alors éditer vos scripts Lua directement sur le lecteur
     monté de la radio, avec votre éditeur de code préféré.
  3. Ouvrez l'onglet **Lua Development Tools** → **START DEBUG** — l'émetteur
     redémarre en mode série/débogage et réinitialise les scripts.
  4. Toutes les sorties `print()` des scripts actifs sont envoyées dans la
     fenêtre de terminal de Suite.
  5. **STOP DEBUG** permet de revenir en mode Ethos normal pour poursuivre
     les modifications.

- **DFU Flasher** — flashe le chargeur de démarrage via une connexion USB
  hors tension (DFU), ce qui fonctionne même si le firmware a été totalement
  corrompu, car le chargeur de démarrage ST sous-jacent est dans la ROM.
  Cliquez sur **Select Bootloader** pour accéder à votre fichier téléchargé
  et le sélectionner (Suite évalue le fichier et rend compte de sa version
  et de sa pertinence), connectez la radio **éteinte**, puis cliquez sur
  **Flash**.

  !!! note "\"Radio connection is not detected!\""
      Il s'agit généralement d'un pilote DFU manquant ou incorrect. Sur la
      plupart des PC sous Windows 10 ou versions ultérieures, les systèmes
      Tandem se connectent à l'aide du pilote DFU USB par défaut, mais les
      mises à jour Windows le remplacent parfois par un pilote générique qui
      peut ne pas fonctionner — vérifiez le Gestionnaire de périphériques et
      envisagez un programme tel que l'Impulse Driver Fixer. Pour les
      utilisateurs d'Horus X10 en particulier, il peut être nécessaire
      d'installer manuellement le pilote de périphérique USB du chargeur de
      démarrage STM32 (avec Impulse Driver Fixer ou Zadig), car Windows 10
      ne l'installe pas par défaut.

- **Repair Tool** — destiné aux radios X18/S, TW Lite, XE et X20 Pro/R/RS :
  si la radio ne peut pas lire à partir de la NAND ou si les paramètres ne
  peuvent pas être enregistrés, cet outil reformate le stockage interne.

## Section Autres

- **Documentation** — liens vers la communauté Ethos-Feedback sur GitHub,
  les manuels officiels d'Ethos (téléchargeables) et une FAQ sur Ethos
  Suite.
- **Ethos Github** — versions et suivi des problèmes (pour éviter les
  doublons, effectuez une recherche dans les problèmes existants avant d'en
  publier un nouveau).

### Paramètres de la suite {: #suite-settings }

- **Language** — tchèque, allemand, anglais, espagnol, français, hébreu,
  italien, néerlandais, norvégien, portugais, slovénien, chinois.
- **Server location** — **FrSky server** ou **GitHub** (nécessaire pour
  l'accès aux versions préliminaires ci-dessus).
- **Debug options** — activer ou désactiver la boîte de dialogue
  contextuelle en cas d'erreur fatale ; activer le mode de débogage de Suite
  qui enregistre toutes les traces (pas seulement les plantages) ; ouvrir le
  répertoire des journaux.
- **Version** / **Update Suite** — version actuelle de la suite et
  vérification manuelle des mises à jour.
- **About** — une page de remerciements pour tous les composants réutilisés.

## Utilisation en ligne de commande

Ethos Suite peut être lancé depuis un terminal :

| Option | Effet |
|---|---|
| `--help` | Affiche l'aide en ligne de commande. |
| `--version` | Affiche la version de Suite installée. |
| `--list-radios` | Liste toutes les radios FrSky prises en charge. |
| `--radio-components --radio {RADIO}` (ou `--radio auto`) | Liste les composants d'une radio connectée et leurs chemins. `auto` détecte automatiquement ; précisez `{RADIO}` si plusieurs radios sont connectées. |
| `--get-path {COMPONENT}` | Obtient le chemin d'un composant — `BITMAPS`, `SCRIPTS`, `SCREENSHOTS`, `AUDIO` ou `I18N`. |
| `--serial start` \| `--serial stop` | Active/désactive le mode de débogage série. |

!!! note
    Suite ne démarre pas du tout s'il ne reconnaît pas une commande valide.
