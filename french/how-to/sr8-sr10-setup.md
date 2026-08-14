---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Configuration du modèle SR8/SR10 et réorganisation des voies

Les récepteurs stabilisés SRx de FrSky s'attendent à un ordre des voies
spécifique. Deux cas de figure : créer de toutes pièces un nouveau modèle
pour l'un d'eux, ou convertir un modèle existant pour qu'il corresponde.

!!! note "Captures d'écran à venir"
    Cette page ne comporte pas encore de captures d'écran du simulateur —
    voir [Screenshot
    Pipeline](../contributing/screenshot-pipeline.md).

## Création d'un nouveau modèle

L'assistant [Sélectionner un modèle](../model-setup/model-select.md)
regroupe par défaut les surfaces de même fonction (par exemple 2 voies
d'ailerons → `AAETR`), mais les récepteurs SRx exigent que les quatre
premières voies soient fixes en **AETRA**.

1. Dans [Manches](../system-setup/controls.md), vérifiez que **l'ordre des
   voies** est `AETR`.
2. Activez **[Quatre premières voies
   fixes](../system-setup/controls.md#first-four-channels-fixed)** — cela
   empêche l'assistant de regrouper les quatre premières voies, en les
   conservant strictement dans l'ordre `AETRA…` quel que soit le nombre de
   surfaces de chaque type que comporte la cellule.
3. Lancez l'assistant de création de modèle normalement — les 5 premières
   voies seront AETRA.

!!! note "Auto-vérification des récepteurs Archer"
    Veuillez noter que l'auto-vérification des récepteurs Archer est
    désormais effectuée via [Device Config →
    SxR](../system-setup/devices.md) (micrologiciel v2.1.10 ou supérieur)
    plutôt que par une procédure d'auto-vérification dédiée. La voie des
    gaz doit être à −100 %, sinon l'auto-vérification ne sera pas lancée.

## Réorganisation d'un modèle existant

Convertir un modèle existant (par exemple actuellement en `AAETRFF`) vers
l'ordre attendu par les récepteurs stabilisés (`AETRAE`, puis voie 9 pour
le gain, 10/11 pour les modes de vol, 12 pour l'auto-vérification sur les
anciens récepteurs SxR) consiste en une série de permutations de voies dans
[Sorties](../model-setup/outputs.md#swap-channels).

Point de départ :

| Voie | Fonction |
|---|---|
| 1 | Aileron1 (droit) |
| 2 | Aileron2 (gauche) |
| 3 | Profondeur |
| 4 | Gaz |
| 5 | Direction |
| 6 | Volet1 (droit) |
| 7 | Volet2 (gauche) |
| 8 | Train rentrant |

Ordre visé : `AETRAE` — CH1 Aileron1, CH2 Profondeur, CH3 Gaz,
CH4 Direction, CH5 Aileron2, CH6 Profondeur2/AUX2 (puis gain/modes de
vol/auto-vérification sur les voies 9 à 12).

1. **Commencez par déplacer Aileron2 hors du chemin** : dans Sorties,
   sélectionnez CH2 (Aileron2), appuyez à nouveau, sélectionnez **Permuter
   les voies**, et permutez-la avec une voie inutilisée (par exemple CH9).
   La permutation a lieu immédiatement — tous les mixages faisant référence
   à l'une ou l'autre voie sont ajustés automatiquement.
2. **Permutez CH3 (Profondeur) en CH2.**
3. **Permutez CH4 (Gaz) en CH3.**
4. **Permutez CH5 (Direction) en CH4.**
5. **Permutez CH9 (Aileron2, mise de côté à l'étape 1) en CH5.**

Résultat :

| Voie | Fonction |
|---|---|
| 1 | Aileron1 (droit) |
| 2 | Profondeur |
| 3 | Gaz |
| 4 | Direction |
| 5 | Aileron2 (gauche) |
| 6 | Volet1 (droit) |
| 7 | Volet2 (gauche) |
| 8 | Train rentrant |

— soit désormais l'ordre attendu par les récepteurs stabilisés FrSky.
