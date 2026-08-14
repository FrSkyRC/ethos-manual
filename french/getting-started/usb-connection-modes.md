---
translated_from: 4cf1808aa5b70d3f39900c1a7aff575ca60ee89e
---

# Les différents modes de connexion USB

![Menu USB](../screenshots/usbmenu.png)

Le comportement d'une connexion USB vers un PC dépend de la manière dont la radio était alimentée au moment du branchement.

## Connexion USB en mode hors tension

La connexion de la radio à un PC via un câble USB **lorsqu'elle est éteinte** correspond au mode DFU, utilisé pour flasher le bootloader (chargeur de démarrage) lui-même.

## Connexion USB en mode « bootloader » {: #bootloader-mode }

Allumez la radio **en maintenant la touche `ENT` enfoncée** pour démarrer en mode bootloader : le message d'état « Bootloader » s'affiche à l'écran. La connexion du câble USB fait alors passer l'état à « USB Connecté » et **deux** disques apparaissent sur le PC comme lecteurs externes : le premier correspond à la mémoire flash interne de la radio, le second au contenu de la SD card ou eMMC. Ce mode est utilisé pour la lecture et l'écriture directes de fichiers sur l'une ou l'autre de ces zones de stockage, et c'est également ainsi qu'[Ethos Suite](../ethos-suite/index.md) met à jour le firmware de la radio — veuillez vous référer au mode Bootloader dans la section Ethos Suite.

## Connexion USB en mode « normal »

Si la radio est connectée à un PC via un câble de données USB alors qu'elle est **sous tension normalement**, une boîte de dialogue permet de choisir le mode :

- **Joystick** — la radio est présentée comme un joystick USB HID, pour contrôler les simulateurs de vol RC sur PC.
- **FrSky Suite** — la radio passe en « mode Ethos » pour communiquer avec [Ethos Suite](../ethos-suite/index.md).
- **Serial** — la radio envoie les traces de débogage Lua sur la liaison USB-série (115200 bps). L'onglet Lua Development Tools d'Ethos Suite intègre un terminal permettant de les afficher ; un pilote Virtual COM Port pour Windows peut être nécessaire.
