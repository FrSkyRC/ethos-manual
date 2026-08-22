---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Avertissement de tension de batterie faible

Surveiller la tension du pack de propulsion **sous charge** et déclencher une alerte lorsqu'elle tombe en dessous d'un seuil est une approche plus fiable que de se fier à un chronomètre fixe : un capteur tel que le FrSky FLVSS rend cela très simple.

## 1. Connecter et découvrir le capteur

![Capteur de télémétrie LiPo](../screenshots/how-to-low-batt-telemetry-lipo-sensor.png)

Dans [Options du récepteur → Port de télémétrie](../system-setup/devices.md), sélectionnez l'option **S.Port**, connectez le FLVSS à votre récepteur via un câble S.Port, puis activez l'option **Découvrir de nouveaux capteurs** dans [Télémétrie](../model-setup/telemetry.md) : le capteur LiPo apparaît aux côtés des autres capteurs déjà découverts.

## 2. Ajouter un inter logique

![Inter logique batterie faible](../screenshots/how-to-low-batt-lsw-battlow-lipo.png)

Ajoutez un nouvel [inter logique](../model-setup/logical-switches.md) et sélectionnez le capteur Lipo comme source. Avec le capteur en surbrillance, appuyez longuement sur la touche `ENT` pour choisir laquelle de ses valeurs utiliser :

![Sélectionner la cellule la plus basse](../screenshots/how-to-low-batt-lsw-battlow-lipo-select-lowest.png)

- Tension minimale du pack / Tension maximale du pack
- **Tension de cellule la plus basse** / Tension de cellule la plus élevée
- Nombre de cellules
- Tensions cellulaires individuelles (sélectionnables uniquement lorsque le capteur est effectivement connecté à un récepteur lié et qu'une lipo est connectée)

Sélectionnez **Lowest** (tension de cellule la plus basse) : la valeur qui compte pour une protection de type LVC.

![Cellule la plus basse sélectionnée](../screenshots/how-to-low-batt-lsw-battlow-lipo-lowest.png)

Réglez la valeur de comparaison sur quelque chose comme **3,4 V** et **Délai avant l'activation** sur **4 secondes** : l'inter logique devient Vrai/Actif lorsque la tension de cellule la plus basse reste inférieure à 3,4 V par cellule pendant 4 secondes ou plus. (Un seuil de 3,4 V *en charge* reviendra à environ 3,7 V lorsqu'il ne sera plus en charge. Ce seuil traduit donc une véritable chute de tension, et non un simple parasite momentané.)

![Inter logique terminé](../screenshots/how-to-low-batt-lsw-summary.png)

## 3. Ajouter une fonction spéciale

![Fonction spéciale : BattLow](../screenshots/how-to-low-batt-sf-battlow.png)

Ajoutez une [fonction spéciale Play audio](../model-setup/special-functions.md), définissez la **Condition active** sur l'inter logique `BattLow`, sélectionnez la voix que vous souhaitez utiliser, puis, sous **Séquence**, ajoutez une commande **Play value** pour énoncer la tension totale LiPo :

![Play value : LiPo](../screenshots/how-to-low-batt-sf-play-value-lipo.png)

![Résumé de la séquence](../screenshots/how-to-low-batt-sf-play-value-lipo-summary.png)

Avec **Répétition** réglée sur 10 secondes, la tension LiPo est énoncée toutes les 10 s tant que la tension de cellule la plus basse reste inférieure au seuil de 3,4 V pendant 4 s.
