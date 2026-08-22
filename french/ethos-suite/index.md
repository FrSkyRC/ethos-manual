---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Ethos Suite

Ethos Suite est l'application PC compagnon, pour Windows ou Mac, qui permet de gérer une radio exécutant Ethos, connectée par un câble USB.

![Onglet Radio d'Ethos Suite](../assets/suite/1000000100000CA2000008B0CFAA509D.png)

Une fois la connexion établie, Ethos Suite peut faire les choses suivantes :

1. Déterminer le type de la radio, son ID et les versions installées, firmware, bootloader, module RF interne, fichiers de la mémoire flash et fichiers de la SD card ou eMMC.
2. Faire passer la radio du mode bootloader à l'exécution d'Ethos, avec la possibilité de revenir en arrière.
3. Comparer les versions installées aux versions actuelles et effectuer la mise à jour automatiquement (uniquement les composants obsolètes, tous les composants, ou chaque composant individuellement).
4. À l'aide du **Model Manager**, enregistrer sur le disque une sauvegarde des modèles de la radio, ou restaurer une sauvegarde précédemment enregistrée (nécessaire car les fichiers de modèles ne sont pas rétrocompatibles d'une version de firmware à l'autre).
5. Télécharger n'importe quel firmware depuis le site de téléchargement FrSky via le **Download center**, et utiliser la radio comme proxy pour flasher directement un module, un capteur, un servo ou un récepteur.
6. Convertir des images et des fichiers audio au format natif d'Ethos.
7. Fournir les **Lua development tools** (documentation de l'API, scripts de démonstration et terminal pour le débogage).
8. Flasher le bootloader de la radio en mode DFU (connexion hors tension), que le firmware de la radio fonctionne encore ou non.
9. Réparer le stockage interne des radios X18/S, TW Lite, XE et X20 Pro/R/RS à l'aide du **Repair Tool**, si la radio ne peut pas lire depuis la NAND ou si les paramètres ne peuvent pas être enregistrés.
10. Éjecter proprement les lecteurs USB de la radio.
11. Signaler au démarrage qu'une mise à jour d'Ethos Suite elle-même est disponible (l'installation a lieu lorsque vous quittez Suite).

## Modes de connexion

Notez qu'en plus de ses outils, Suite propose trois modes de fonctionnement distincts avec la radio :

- **Radio en mode bootloader**. L'onglet **Radio** permet de vérifier et de mettre à jour le firmware de la radio ainsi que les fichiers de la mémoire flash, de la SD card ou de l'eMMC. Le **Model Manager** effectue une sauvegarde de la radio ou restaure une sauvegarde enregistrée.
- **Radio en mode Ethos**. Dans ce mode, Suite utilise la radio comme proxy (via les outils **FRSK Flasher**/Download center) pour flasher directement le module interne, ou n'importe quel capteur, servo ou récepteur connecté.
- **Radio en mode DFU**. La radio est connectée hors tension et le **DFU Flasher** est utilisé pour flasher le bootloader lui-même, par exemple lorsque le firmware de la radio a été corrompu et que celle-ci ne s'allume plus normalement.

Voir [Migration](migration.md) pour transférer une radio existante vers Ethos Suite pour la première fois, et [Utilisation](operation.md) pour l'interface de Suite proprement dite.
