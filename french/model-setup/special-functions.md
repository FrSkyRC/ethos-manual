---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Fonctions spéciales

![Menu des fonctions spéciales](../screenshots/model-sf-menu.png)

Les fonctions spéciales déclenchent une action — lecture audio, capture
d'écran, écriture de journaux, retour haptique, et bien d'autres — lorsqu'une
condition devient vraie. Jusqu'à 100 fonctions sont prises en charge ; aucune
n'existe par défaut. Ajoutez-en une avec **+** ; appuyez sur une fonction
existante pour **Modifier**/**Déplacer**/**Copier-coller**/**Cloner**/
**Supprimer**.

![Ajouter une fonction spéciale](../screenshots/model-sf-add.png)

![Déplacer](../screenshots/model-sf-move.png)

## Champs communs à toutes les actions

- **État** — active/désactive cette fonction sans la supprimer.
- **Condition d'activation** — **Toujours actif**, ou conditionnée par la
  position d'un interrupteur/interrupteur de fonction/interrupteur
  logique/trim, ou par une phase de vol. Effectuez un appui long sur `ENT`
  sur un interrupteur et cochez **Négatif** pour l'inverser (par exemple
  `SG-up` devient `!SG-up`, actif dès que SG n'est *pas* en haut).
- **Global** — ajoute cette fonction à **tous** les modèles, existants et
  futurs. Si un modèle possède déjà une fonction locale configurée à
  l'identique, l'option Global l'ajoute comme entrée supplémentaire ;
  désactiver Global la supprime de tous les modèles sauf celui actuellement
  sélectionné. Les fonctions globales sont enregistrées dans `radio.bin`,
  les fonctions locales dans le fichier du modèle.

## Actions {: #actions }

**Réinitialisation** — réinitialise les **Données de vol** (télémétrie +
chronos), **Tous les chronos**, ou **Toute la télémétrie**.

![Réinitialisation](../screenshots/model-sf-reset.png)

**Capture d'écran** — enregistre une capture d'écran dans `screenshots/` sur
la SD card/eMMC.

![Capture d'écran](../screenshots/model-sf-screenshot.png)

**Définir le failsafe** — enregistre les positions actuelles des voies comme
failsafe, via le **Module** RF interne ou externe.

![Définir le failsafe](../screenshots/model-sf-set-failsafe.png)

**Lecture audio** — l'action la plus riche, prenant en charge une séquence
complète :

![Lecture audio](../screenshots/model-sf-play-audio.png)

- **Voix** — laquelle des 3 voix configurables utiliser (voir
  [Général](../system-setup/general.md#audio-settings)).
- **Répétition** — lecture unique, ou répétition à un intervalle
  configurable (jusqu'à 10 minutes).
- **Ignorer au démarrage** — empêche le déclenchement de cette fonction
  pendant le démarrage.
- **Séquence** — jusqu'à 100 étapes, chacune étant :

  - **Lire un fichier** — lit un fichier audio sélectionné.

    ![Lire un fichier](../screenshots/model-sf-play-audio-add-play-file.png)

  - **Annoncer une valeur** — énonce la valeur d'une source : analogiques,
    interrupteurs, interrupteurs logiques, trims, voies, gyro, horloge
    système, écolage, chronos ou télémétrie.

    ![Annoncer une valeur](../screenshots/model-sf-play-audio-add-play-value.png)

  - **Attendre une durée** — une pause fixe, jusqu'à 10 minutes.
  - **Attendre une condition** — met la séquence en pause jusqu'à ce qu'une
    condition soit remplie.

  ![Ajouter une ligne de séquence](../screenshots/model-sf-play-audio-add-line.png)
  
  ![Type de ligne de séquence](../screenshots/model-sf-play-audio-add-line-type.png)

  Par exemple : lire `vfrlow.wav` lorsque l'interrupteur logique `VFRlow`
  devient actif, puis énoncer la valeur VFR minimale enregistrée —

  ![Annoncer une valeur après un fichier](../screenshots/model-sf-play-audio-add-play-value-add-line.png)

  — ou mettre une séquence en pause jusqu'à ce que l'interrupteur SH soit
  placé vers le bas avant de continuer :

  ![Séquence avec attente d'une condition](../screenshots/model-sf-play-audio-add-sequence.png)

  Appuyez sur une ligne de la séquence pour la modifier, en ajouter une, les
  réorganiser ou les supprimer :

  ![Gestion de la séquence](../screenshots/model-sf-play-audio-add-sequence-management.png)

**Haptique** — retour vibratoire :

![Haptique](../screenshots/model-sf-haptic.png)

- **Motif** — simple, double, triple, quintuple, ou très bref.

  ![Motif haptique](../screenshots/model-sf-haptic-pattern.png)

- **Intensité** — 1 à 10 (5 par défaut).
- **Répétition** — une fois, ou à un intervalle défini.
- **Sélection des moteurs haptiques** — sur les radios équipées de moteurs
  haptiques dans les manches (X20 Pro AW, X20RS, ou une X20 Pro/X20R équipée
  de manches MC20R — voir
  [Matériel](../system-setup/hardware.md#radio-specific-hardware-options)) :
  **Par défaut** (haptique interne), **Tous les moteurs**, **Manche gauche**,
  ou **Manche droit**.

  ![Haptique sur X20 Pro AW](../screenshots/model-sf-haptic-x20proaw.png)

**Écriture des logs** — écrit des journaux `.csv` dans `Logs/` sur la SD
card/eMMC, horodatés depuis le RTC (indispensable pour distinguer ensuite les
sessions de vol) :

![Écriture des logs](../screenshots/model-sf-write-logs.png)

- **Intervalle d'écriture** — 100 à 500 ms.
- **Manches/Potentiomètres/Curseurs**, **Interrupteurs**, **Interrupteurs
  logiques**, **Voies** — catégories d'enregistrement activables
  indépendamment.

  **Consultation des logs** : ouvrez un fichier de log depuis `/Logs` dans le
  Gestionnaire de fichiers. Choisissez les voies à tracer (RSSI est
  sélectionné par défaut) ; déplacez-vous avec l'encodeur rotatif ou par
  balayage, et zoomez en tournant l'encodeur tout en maintenant `PAGE`.
  `DISP` place le focus sur le premier bouton de la colonne de droite.

**Lecture de texte** (X20 PRO uniquement) — synthèse vocale intégrée à la
radio au lieu d'un fichier pré-enregistré :

![Lecture de texte](../screenshots/model-sf-x20pro-play-text.png)

- **Texte** — la chaîne à énoncer. Les MAJUSCULES sont épelées lettre par
  lettre (par exemple « OFF » → « O-F-F ») ; les minuscules sont prononcées
  comme un mot (« off »).
- **Répétition**, **Ignorer au démarrage** — comme ci-dessus.

**Aller à l'écran** — bascule l'affichage vers un écran choisi, par exemple
pour afficher l'enregistrement des données de vol d'un récepteur lors de
l'appui sur un bouton :

![Aller à l'écran](../screenshots/model-sf-go-to-screen.png)

![Options d'écran](../screenshots/model-sf-go-to-screen-options.png)

**Verrouiller l'écran tactile** — verrouille l'écran tactile contre les
appuis involontaires (également accessible directement en maintenant `ENT` +
`PAGE` ensemble pendant 1 s depuis l'écran d'accueil) :

![Verrouiller l'écran tactile](../screenshots/model-sf-lock-touchscreen.png)

**Charger un modèle** — charge le **Modèle** spécifié lors du déclenchement,
avec une **Confirmation** facultative avant le changement effectif :

![Charger un modèle](../screenshots/model-sf-load-model.png)

**Lecture vario** — pilote l'audio du vario à partir d'une source choisie
(normalement le capteur VSpeed d'un vario FrSky, mais tout capteur en unité
m/s convient) :

![Lecture vario](../screenshots/model-sf-play-vario.png)

![Source vario : VSpeed](../screenshots/model-sf-play-vario-vspeed.png)

- **Plage** — taux de montée/descente associé à la hauteur du son, ±10 m/s
  par défaut (jusqu'à ±100 m/s). Au-dessus du **Centre**, la hauteur du son
  augmente linéairement avec le taux de montée jusqu'à la valeur maximale de
  la Plage (la hauteur du son au taux maximal se règle dans [Général →
  Vario](../system-setup/general.md#vario)) ; en descente, un son continu
  descend en hauteur jusqu'à la valeur minimale de la Plage.
- **Centre** — la bande de « montée nulle », ±0,3 m/s par défaut (jusqu'à
  ±2 m/s) ; la hauteur du son y reste constante (la hauteur au taux nul se
  règle également dans Général → Vario). Passez **Bip**→**Silencieux** pour
  couper entièrement le son.

  ![Options de plage/centre du vario](../screenshots/model-sf-play-vario-options.png)
