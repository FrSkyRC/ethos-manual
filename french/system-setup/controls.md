---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Commandes

![Manches](../screenshots/system-sticks.png)

Appelé **Manches** dans le menu : le mode des manches et l'ordre
d'affectation des voies par défaut.

## Mode des manches

- **Mode 1** : Gaz / Ailerons sur le manche de droite, Profondeur / Dérive
  sur celui de gauche.
- **Mode 2** : Gaz / Dérive sur le manche de gauche, Ailerons / Profondeur
  sur celui de droite.

Par défaut, les manches sont nommés selon les standards d'utilisation,
mais vous avez la possibilité de les renommer.

## Ordre voies

L'ordre des voies définit l'ordre dans lequel les quatre entrées des
manches sont affectées aux voies lorsqu'un nouveau modèle est créé par les
assistants de [Choix du modèle](../model-setup/model-select.md). L'ordre
par défaut est **AETR** (APGD). S'il y a plus d'une voie par type de
surface, elles seront regroupées, à moins que [4 premières voies
fixes](#first-four-channels-fixed) ne soit activé : par exemple, pour
2 ailerons, l'ordre des voies sera **AAETR** (AAPGD).

![Ordre voies](../screenshots/system-sticks-rx-order.png)

## 4 premières voies fixes {: #first-four-channels-fixed }

Lorsque cette option est activée, le regroupement des voies ne se produit
jamais sur les quatre premières voies. Avec l'ordre **AETR** (APGD) et un
modèle comportant 2 ailerons, 1 gouverne de profondeur, 1 moteur,
1 gouvernail de direction et 2 volets, l'assistant crée un ordre de voies
**AETRAFF** (les voies 1 à 4 restent exactement A-E-T-R, le second aileron
et les deux volets étant ajoutés à la suite) au lieu de **AAETRFF**. C'est
ce réglage qui permet à l'assistant de créer des modèles adaptés aux
récepteurs stabilisés SRx, qui attendent cette disposition fixe.

![Ordre fixe des 4 premières voies](../screenshots/system-sticks-4ch-fixed.png)
