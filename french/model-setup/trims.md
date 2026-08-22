---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Trims

![Trims](../screenshots/model-trims.png)

Permet de configurer, pour chaque manche, la plage de trim, le pas de trim
et le comportement du trim, ainsi que les trims croisés et le trim
instantané. Les **X20 Pro/R/RS** et la **X18** disposent de deux trims
supplémentaires, **T5**/**T6**, très utiles pour les réglages en vol
au-delà des quatre manches principaux :

![Trims T5/T6](../screenshots/model-trims-pro-t5-t6.png)

Il existe un ensemble de paramètres de trim indépendant pour chaque manche.

## Configuration des trims {: #trim-settings }

- **Plage** : la plage par défaut est de ±25 %, réglable jusqu'à la plage
  complète du manche, soit ±100 %. Notez que sur l'écran principal, un trim
  à plage par défaut est indiqué de −100 à 100. Un trim à plage complète
  (100 %) affichera de −400 à 400 (c'est-à-dire 4 fois la plage de trim
  normale).

  !!! warning
      Élargir la plage signifie qu'en maintenant une palette de trim trop
      longtemps, on peut ajouter tellement de trim que le modèle devient
      impossible à piloter.

- **Pas** : granularité du pas de trim : **Extra fin**, **Fin**,
  **Moyen**, **Grossier**, **Exponentiel** (pas fins près du centre, pas
  grossiers plus loin) ou **Personnalisé** (un pourcentage précis par
  clic).

  ![Options de pas](../screenshots/model-trims-step-options.png)

  | Pas | µs par clic (plage 25 %) |
  |---|---|
  | Extra fin | 0,5 |
  | Fin | 1 |
  | Moyen | 2 |
  | Grossier | 4 |
  | Exponentiel | 0,3–16 |

  En personnalisé, avec une plage de 25 % : taille du pas 1 % = 1 µs/clic,
  taille du pas 100 % = 128 µs/clic. Avec une plage de 100 % : taille du
  pas 1 % = 5 µs/clic, taille du pas 100 % = 512 µs/clic.

## Mode

![Mode du trim de profondeur](../screenshots/model-trims-mode-elevator.png)

Par défaut, les trims sont toujours activés, mais l'option **Mode** permet
de modifier ce comportement. Notez que les trims sont réinitialisés à 0
lorsque le mode est modifié.

- **OFF** : désactive complètement le trim.

  ![Mode : off](../screenshots/model-trims-mode-option-off.png)

  Utile, par exemple, sur un modèle électrique où le trim d'accélérateur
  n'est pas nécessaire : le trim ainsi libéré peut ensuite être
  [réutilisé pour ajuster une Var](variables.md).

- **Mode simple** : une seule valeur de trim, partagée entre tous les
  modes de vol. C'est généralement le choix approprié pour les trims des
  ailerons et de la dérive, car ces trims ne varient généralement pas
  selon les modes de vol.

  ![Mode : simple](../screenshots/model-trims-mode-option-easy.png)

- **Trim indépendant par mode de vol** : le trim n'affecte que le mode de
  vol actif. Cette option est normalement utilisée pour le trim de
  profondeur, car le trim de profondeur requis varie généralement selon le
  mode de vol, en raison par exemple de différences de carrossage de
  l'aile. C'est même souvent la raison principale de la mise en place de
  modes de vol.

  ![Mode : indépendant par mode de vol](../screenshots/model-trims-mode-option-fm.png)

- **Perso** : comportement de trim entièrement personnalisé, construit à
  partir de **comportements** que vous ajoutez vous-même.

### Comportements de trim personnalisés

![Ajouter un nouveau comportement](../screenshots/model-trims-mode-elevator-add-behaviour.png)

![Options de comportement](../screenshots/model-trims-mode-elevator-edit-behaviour.png)

Chaque ligne de comportement comporte une condition et l'une des options
suivantes :

- **Déconnecté** : désactive le trim de manière sélective sous cette
  condition (plutôt que de le désactiver totalement avec Mode = OFF).

  ![Déconnecté](../screenshots/model-trims-mode-elevator-edit-behaviour-unplugged.png)
  
  ![Condition de déconnexion](../screenshots/model-trims-mode-unplugged-select.png)

- **Normal** (par défaut) : comportement de trim ordinaire.
- **Égal (à un autre trim)** : le trim d'une condition est configuré pour
  être exactement égal au trim d'une autre condition.

  ![Égal](../screenshots/model-trims-mode-elevator-edit-behaviour-equal.png)

- **Décalage + (un autre trim)** : le trim d'une condition est configuré
  pour s'ajouter au trim d'une autre condition.

  ![Décalage](../screenshots/model-trims-mode-elevator-edit-behaviour-offset.png)

**Exemple de trim décalé** : un planeur avec un trim de profondeur de base
en **Cruise**, et des trims dépendants pour **Speed** et **Thermal** :

![Sélection de FM5 Speed](../screenshots/model-trims-mode-elevator-custom-select.png)

![Sélection de FM4 Thermal](../screenshots/model-trims-mode-elevator-custom-select-2.png)

1. Réglez le trim pour le vol en palier dans le mode de vol par défaut
   (Cruise).
2. Ajoutez un comportement : **Décalage + Par défaut**, avec la condition
   `FM5(Speed)`. Désormais, tout réglage de trim effectué en mode Speed est
   enregistré en tant que décalage par rapport à la valeur de trim de base
   en Cruise : le trim y sera donc séparé, mais aussi dépendant du trim de
   base.

   ![Décalage pour Speed](../screenshots/model-trims-mode-elevator-custom-speed.png)

3. Ajoutez un deuxième comportement : **Décalage + Par défaut**, avec la
   condition `FM4(Thermal)`, de la même manière. (Notez qu'une fois le
   premier comportement configuré, la boîte de dialogue propose également
   les options `Equal FM5(Speed)` et `Offset + FM5(Thermal)`, puisqu'elle
   peut désormais faire référence à ce comportement aussi.)

   ![Décalage pour Speed et Thermal](../screenshots/model-trims-mode-elevator-custom-speed-thermal.png)

Avec cette configuration, si le trim de croisière de base doit être modifié
par la suite (par exemple parce que vous avez modifié le centre de
gravité), les trims dépendants de Speed et de Thermal seront décalés
automatiquement de la même valeur, puisqu'il s'agit de décalages venant s'y
ajouter et non de valeurs indépendantes.

- **Audio** : pour chaque trim, l'audio peut être désactivé si les
  annonces de trim standard ne sont pas souhaitées, par exemple si le trim
  a été réutilisé.

## Trims supplémentaires

![Ajouter un trim supplémentaire](../screenshots/model-trims-add-trim-select.png)

![Réglages du trim supplémentaire](../screenshots/model-trims-add-trim-edit.png)

**Ajouter un trim supplémentaire** crée un trim en plus des quatre manches
standard (et de T5/T6) : **Nom**, sources **En haut**/**En bas** pour le
piloter, ainsi que les mêmes options **Plage**, **Pas**, **Mode** et
**Audio** que ci-dessus.

## Trims croisés

![Trims croisés](../screenshots/model-trims-cross.png)

![Modification des trims croisés](../screenshots/model-trims-cross-edit.png)

Permet de désigner l'inter de trim à utiliser réellement pour chaque manche :
autrement dit, le trim d'un manche peut être piloté par une commande de
trim physique différente de celle habituelle. (Les trims T5 et T6 ne sont
disponibles que sur les X20 Pro et X18.)

## Trim instantané {: #instant-trim }

![Trim instantané](../screenshots/model-trims-instant-trim.png)

Lorsque cette fonction est active, elle ajoute les positions actuelles des
manches aux valeurs de trim respectives des trims par défaut (également des
trims croisés). Il est préférable de l'attribuer à un interrupteur que vous
pouvez atteindre sans lâcher les manches : déclenchez-le en vol droit et à
niveau pour régler les trims instantanément, au lieu d'appuyer plusieurs
fois sur une palette de trim lorsque les trims sont très éloignés du bon
réglage. Ce paramètre doit être désactivé après le vol de mise au point,
afin d'éviter de perturber à nouveau accidentellement les trims par la
suite.

!!! note
    Le trim instantané n'est actif que lorsque l'une des vues principales
    est affichée.

## Déplacer les trims vers les subtrims

![Déplacer les trims vers les subtrims](../screenshots/model-trims-move-trims-to-subtrims.png)

Après avoir réglé les trims pour le vol en palier, cette fonction
transfère la valeur de trim d'une voie (par ex. la profondeur) dans son
réglage [Subtrim](outputs.md) et réinitialise à zéro le trim affiché à
l'écran : une manière propre de vérifier ensuite que les trims de vol
n'ont pas dérivé.

Lorsque des modes de vol sont utilisés, une voie peut avoir plusieurs
valeurs de trim pertinentes, alors que le Subtrim des Sorties est un
réglage global unique s'appliquant à tous les modes de vol. Cette fonction
en tient compte : elle prend le trim du mode de vol **actuellement
sélectionné**, transfère son contenu vers le Subtrim, réinitialise ce trim
et ajuste le trim de *tous les autres* modes de vol sur la même voie afin que
la position réelle de la gouverne reste
globalement inchangée dans chaque mode de vol.

!!! tip
    Effectuez toujours cette opération depuis le même mode de vol « de
    base » (par ex. Cruise sur un planeur) par souci de cohérence. Elle
    peut être répétée sans risque tant que vous procédez ainsi.

Des valeurs de trim ou de subtrim élevées entraînent des débattements très
asymétriques. Il serait plus sage de corriger le problème mécaniquement.
Visez des liaisons à 90° lorsque les gouvernes sont au neutre (les volets
étant l'exception, où l'on sacrifie un peu de course vers le haut au profit
de plus de course vers le bas), puis utilisez **PWM center** pour affiner
exactement à 90° une fois la liaison bien réglée.
