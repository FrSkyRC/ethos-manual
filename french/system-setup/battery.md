---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Batterie

![Réglages de la batterie de la radio](../screenshots/system-battery.png)

Permet l'étalonnage de la mesure de la batterie interne de la radio et le
réglage des seuils d'alarme — indépendamment des réglages du pack de
propulsion d'un modèle (voir [Guide pratique : alerte de tension de batterie
basse](../how-to/low-battery-warning.md)).

- **Tension principale** — affiche la tension actuelle de la batterie et
  permet également son étalonnage : saisissez la tension réelle mesurée avec
  un multimètre. La valeur par défaut est de 8,4 V (batterie Li-ion 2S
  pleinement chargée).
- **Tension basse** — il s'agit de la tension de seuil d'alarme, par défaut
  7,2 V (une valeur de 7,4 V donne une marge de sécurité supplémentaire).
  Lorsque l'[alerte de tension principale](alerts.md) est activée, une
  descente sous ce seuil déclenche une fenêtre d'avertissement ainsi qu'une
  annonce vocale « Batterie radio faible » toutes les minutes, que la fenêtre
  soit ouverte ou non.

  !!! Warning
      Lorsque cette alerte est donnée, il est prudent d'atterrir et de charger
      la batterie de la radio sans attendre — elle se répète chaque minute
      quoi qu'il arrive. À 6,0 V, la radio s'éteint automatiquement afin de
      protéger les deux cellules Li-ion de 3,0 V.

- **Plage affichage tension** — les valeurs min/max de l'icône graphique de
  batterie de la barre supérieure, dans le coin supérieur droit : MIN
  correspond au point où le premier segment s'éteint, MAX au point où le
  quatrième s'allume. Les valeurs par défaut sont de 6,4 à 8,4 V pour la
  batterie Li-ion d'origine ; de nombreux pilotes relèvent la valeur minimum
  afin d'avoir l'alerte de tension basse assez tôt et d'éviter une décharge
  trop importante. En cas de changement de type de batterie, il est nécessaire
  d'adapter cette plage aux caractéristiques de la batterie réellement
  installée.
- **Tension pile RTC** — affiche la tension de la pile bouton de l'horloge
  temps réel. La tension est de 3,0 V pour une pile neuve ; si elle est
  inférieure à 2,7 V, remplacez-la pour assurer le fonctionnement de l'horloge
  temps réel, et attendez-vous à l'[alerte de tension RTC](alerts.md) en
  dessous de 2,5 V.
