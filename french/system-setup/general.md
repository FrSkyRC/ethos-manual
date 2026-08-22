---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Général

![Paramètres généraux](../screenshots/system-general.png)

Couvre l'affichage, les paramètres audio, le vario, le retour vibreur et la barre infos supérieure.

## Affichage

- **Langue** : la langue des menus de la radio (English, 中文, Česky, Deutsch,
  Español, Français, `{\hebrewfont עברית}`{=latex}, Italiano, Nederlands, Norsk, Português
  Brasileiro, Polish, Português, et d'autres).
- **Clavier** : choix de la disposition du clavier virtuel parmi QWERTY,
  QWERTZ et AZERTY.
- **Luminosité** : un curseur pour la luminosité du rétroéclairage. Un appui
  long sur `ENT` permet de la piloter depuis une source (par exemple un
  potentiomètre ou un curseur, comme dans l'exemple ci-dessous), ou de la
  forcer au minimum/maximum.

  ![Menu pour la luminosité](../screenshots/system-general-brightness-menu.png)
  
  ![Utilisation d'un potentiomètre pour la luminosité](../screenshots/system-general-brightness-slider.png)

  !!! note
      Si **Luminosité** est égale à **Luminosité veille**, l'écran tactile
      reste actif même en « veille ».

- **Activation** : les éléments qui réveillent le rétroéclairage après la mise
  en veille (plusieurs options peuvent être sélectionnées simultanément) :
  **Toujours** (pas de mise en veille), **Manches**, **Inters**, **Gyro**
  (inclinaison de la radio). Les touches réveillent toujours l'écran, quels
  que soient ces réglages.

  ![Réveil de l'écran](../screenshots/system-general-sleep.png)

- **Mise en veille** : durée d'inactivité avant l'extinction du
  rétroéclairage (non modifiable si Activation est réglé sur Toujours).
- **Luminosité veille** : luminosité du rétroéclairage pendant la veille.

  ![Luminosité en veille](../screenshots/system-general-sleep-brightness.png)

- **Thème** : choix entre les thèmes **Sombre** (par défaut) et **Clair** de
  l'affichage. D'autres thèmes Lua peuvent également être installés.
- **Couleur de surbrillance** : la couleur de surbrillance de l'interface
  (par défaut `#F8B038`).

## Réglages audio {: #audio-settings }

![Audio](../screenshots/system-general-audio.png)

- **Langue audio** : langue des annonces vocales.
- **Choix des voix** : Ethos prend en charge plusieurs packs vocaux
  simultanés :

  - **Voix 1 (Princ.)** : utilisée pour toutes les annonces système Ethos.
    Pour l'anglais, le choix par défaut se fait entre les packs américain
    (`us`) et britannique (`gb`), lus depuis `audio/en/us/system` et
    `audio/en/gb/system`. Les fichiers audio de l'utilisateur proposés par la
    [fonction spéciale Lire audio](../model-setup/special-functions.md) se
    placent respectivement dans `audio/en/us/` ou `audio/en/gb/`.
  - **Voix 2 / Voix 3** : packs de voix alternatives, par exemple une voix TTS
    personnalisée. Chacune nécessite la même structure de dossiers que la
    Voix 1 : par exemple une voix appelée « Susan » nécessite
    `audio/en/Susan/` pour les fichiers audio de l'utilisateur et
    `audio/en/Susan/system` pour ses fichiers audio système (chaque voix doit
    avoir un dossier `/system`, puisque c'est là que **Lire valeur** et les
    annonces du chrono vont chercher leurs sons. Une liste `.csv` des
    fichiers audio système fournis en standard est incluse avec chaque version
    audio). Une fois installée, une voix peut être affectée par chrono et par
    fonction Lire audio, ou même définie comme Voix 1 pour remplacer purement
    et simplement les annonces système.
  - **Voix « default »** : installée automatiquement comme solution de repli
    sûre (et utilisée pour éviter les problèmes de conversion depuis les
    installations 1.4.x) : si la Voix 1 n'est pas déjà définie lors d'une
    installation ou d'une mise à jour, elle est réglée sur `default`, avec
    lecture depuis `audio/en/default/system`. Les fichiers audio
    personnalisés fréquemment demandés pour Lire audio se trouvent dans
    `audio/en/default/`.

- **Volume principal** : un curseur pour contrôler le volume audio général (un
  appui long sur `ENT` permet de le piloter depuis un potentiomètre). Des
  bips sont émis pendant le réglage afin d'aider à juger le niveau à
  l'oreille.
- **Modes audio** :

  ![Modes audio](../screenshots/system-general-audio-modes.png)

  - **Silencieux** : pas d'audio (une alerte sera tout de même émise au
    démarrage si la vérification du [mode silencieux](alerts.md) est activée).
  - **Alarmes uniquement** : seules les alarmes seront jouées.
  - **Par défaut** : les sons sont activés.
  - **Fréquent** : ajoute des bips d'erreur lors du dépassement des valeurs
    minimale ou maximale.
  - **Toujours** : ajoute des bips lors de la navigation dans les menus, en
    plus des sons du mode « Fréquent ».
  - **Bluetooth** (X20S/HD/Pro/R/RS uniquement) : relaie l'audio vers un
    appareil Bluetooth appairé (casque, etc.). Appuyez sur **Chercher
    périphériques**, placez l'appareil cible en mode d'appairage, puis
    sélectionnez-le dès qu'il est trouvé :

    ![Bluetooth audio](../screenshots/system-general-audio-bluetooth.png)

    ![Message d'attente de périphériques](../screenshots/system-general-audio-bluetooth-searching.png)

    ![Choix de périphérique Bluetooth](../screenshots/system-general-audio-bluetooth-device-selected.png)

    ![Message d'attente de l'appareil](../screenshots/system-general-audio-bluetooth-connecting.png)

    ![Appareil Bluetooth appairé](../screenshots/system-general-audio-bluetooth-connected.png)

    Une fois l'appareil appairé, validez avec **OK** : l'écran Bluetooth
    réaffiche alors la connexion établie.

    ![Appareil Bluetooth connecté](../screenshots/system-general-audio-bluetooth-connected-ok.png)

    Pour déconnecter l'appareil, appuyez dessus afin de faire apparaître
    l'option **Déconnecter**.

    ![Déconnexion Bluetooth](../screenshots/system-general-audio-bluetooth-disconnect-select.png)

    **Couper haut-parleur** contrôle alors le haut-parleur intégré : toujours
    activé, activé uniquement lorsque la télémétrie est active, ou contrôlé
    par une source telle qu'un inter. Le système se souvient du périphérique
    Bluetooth. Pour un fonctionnement normal, allumez la radio avant le
    périphérique Bluetooth, et comptez quelques secondes après sa connexion
    pour que la coupure du haut-parleur s'active à nouveau.

## Vario {: #vario }

![Vario](../screenshots/system-general-audio-vario.png)

- **Volume** : volume relatif de la tonalité du vario.
- **Tonalité zéro** : fréquence de la tonalité lorsque le taux de montée est
  nul.
- **Tonalité max** : fréquence de la tonalité à la vitesse de montée maximale.
- **Répétition** : délai entre les bips à la tonalité zéro.

Reportez-vous également au capteur VSpeed dans
[Télémétrie](../model-setup/telemetry.md) et à la [fonction spéciale
Vario](../model-setup/special-functions.md) pour d'autres paramètres du vario.

## Vibreur

![Vibreur](../screenshots/system-general-haptic.png)

- **Intensité** : un curseur pour l'intensité des vibrations.
- **Mode** : les mêmes options que les modes audio ci-dessus.

  ![Modes vibreur](../screenshots/system-general-haptic-options.png)

## Emplacement de stockage (X18 et X20 Pro/R/RS) {: #storage-location-x18-and-x20-prorrs }

Ces radios disposent d'une mémoire eMMC interne de 8 Go. Par défaut, Ethos
l'utilise, ce qui rend l'utilisation de la SD card facultative. Vous pouvez
néanmoins sélectionner l'eMMC, une SD card ou une combinaison des deux. Si le
choix se porte sur le déplacement du système et des modèles vers une SD card,
copiez tous les dossiers et fichiers concernés (y compris l'audio et les
bitmaps) **avant** de changer l'emplacement de stockage.

![Emplacement stockage](../screenshots/system-general-storage.png)

## Barre infos supérieure

![Barre infos sup.](../screenshots/system-general-topbar.png)

- **Affichage numérique** : affiche la tension de la batterie de la radio sous
  forme de valeur numérique plutôt que sous forme de barre dans la barre
  infos supérieure.
- **RSSI numérique** : idem, pour les RSSI 2,4 GHz et 900 MHz.
- **Choix modèle au démarrage** : affiche l'écran de sélection du modèle à la
  mise sous tension, avant que les alertes de la liste de contrôle du modèle
  précédemment sélectionné ne s'affichent, ce qui évite d'avoir à annuler ces
  alertes avant de choisir un autre modèle. Par défaut, le dernier modèle
  utilisé est mis en surbrillance.

  ![Choix modèle au démarrage](../screenshots/system-general-model-start.png)

## Présélection du mode USB

![Présélection du mode USB](../screenshots/system-general-usb.png)

Ce qui se produit automatiquement lorsque la radio est connectée à un PC via
USB :

- **Non défini** : une boîte de dialogue apparaît au moment de la connexion
  pour proposer le choix.
- **Joystick** : passe immédiatement en mode Joystick pour l'utilisation avec
  un simulateur RC.
- **Ethos Suite** : passe immédiatement en mode Ethos pour l'utilisation avec
  [Ethos Suite](../ethos-suite/index.md).
- **Série** : passe immédiatement en mode Série, en transmettant les traces de débogage Lua via USB-Serial à 115200 bps (un [pilote de port COM virtuel Windows](https://www.st.com/en/development-tools/stsw-stm32102.html) peut être nécessaire).
