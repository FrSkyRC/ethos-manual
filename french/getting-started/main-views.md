---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Vues principales

## Écran d'accueil

![Exemple de vue principale](../screenshots/mainview.png)

L'écran d'accueil est ce que vous voyez lorsqu'aucun menu n'est ouvert. Il peut comporter jusqu'à **huit** vues, que vous configurez vous-même (voir [Écrans](../displays/index.md)), et entre lesquelles on passe avec la touche `PAGE` ou par un geste de balayage tactile. Un modèle nouvellement créé ne comporte qu'une seule vue, avec un widget pour l'image du modèle, trois widgets pour les chronos et l'affichage des trims et des potentiomètres. Tout ce qui s'y trouve est ensuite personnalisable par l'utilisateur.

Les vues principales partagent normalement les barres supérieure et inférieure décrites ci-dessous, mais une vue peut aussi être réglée en plein écran, ce qui masque les deux barres.

## La barre supérieure

La barre supérieure affiche le nom du modèle sur la gauche (ainsi que la phase de vol active, si les phases de vol sont utilisées), et une rangée d'icônes d'état sur la droite :

- l'enregistrement des données actif
- l'écolage (maître ou élève, selon le cas)
- **RSSI** : liaison 2,4 GHz
- **RSSI** : liaison 900 MHz (si un module double bande / longue portée est installé)
- le volume sonore
- l'état de la batterie radio

Un appui sur l'icône du haut-parleur ou de la batterie permet d'accéder directement aux options de configuration correspondantes : [Général](../system-setup/general.md) (audio) ou [Batterie](../system-setup/battery.md).

### Avertissement d'erreur

Un triangle rouge s'affiche dans la barre supérieure dès qu'Ethos détecte une erreur : une erreur de script Lua, une erreur de sauvegarde de la RAM, ou l'exécution d'une version de test (nightly/instable) du firmware en sont les causes les plus fréquentes. Les détails relatifs à l'avertissement sont toujours affichés dans la page **Système → Infos**, sur la même page que la durée de fonctionnement de la radio et les [journaux d'erreurs](../system-setup/information.md).

## La barre inférieure

![Barre inférieure](../screenshots/bottombar.png)

Quatre onglets sont alignés en bas de l'écran pour accéder aux sections principales : **Vue principale**, **Configuration du modèle**, **Configurer les écrans** et **Configuration de la radio**. L'heure système s'affiche à droite. Un appui sur l'heure permet d'accéder directement à [Date et heure](../system-setup/date-and-time.md).

## La zone des widgets

La zone centrale de chaque vue se compose de différents **widgets** : image du modèle, chronos, données de télémétrie, barres de trims et de potentiomètres, et bien d'autres, tous placés et configurés par vous. Reportez-vous à la section [Écrans](../displays/index.md) pour savoir comment ajouter, déplacer et configurer les widgets, et à [Écrans supplémentaires](../displays/additional-displays.md) pour ajouter d'autres vues au-delà de la vue unique par défaut.
