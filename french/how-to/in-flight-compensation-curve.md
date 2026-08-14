---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Courbe de compensation réglable en vol

## Pourquoi

Le déploiement des volets modifie la courbure de l'aile — le changement
de portance provoque la montée des avions à aile haute et la descente des
avions à aile basse — ce qui nécessite une correction de la gouverne de
profondeur non linéaire par rapport au débattement des volets, donc une
courbe plutôt qu'un décalage fixe. Ce guide utilise les
[Vars](../model-setup/variables.md) pour rendre les points d'une courbe
de compensation réglables **en vol**, en réutilisant le trim
d'accélérateur, selon le point de courbe dont le manche des volets est
actuellement le plus proche — en s'appuyant sur l'étape de compensation
de profondeur du [Guide pratique : mixeur
papillon](butterfly-mixer.md).

## 1. Choisir le type de courbe

Une [courbe personnalisée](../model-setup/curves.md) à 5 points suffit
pour obtenir une compensation progressive sans complexité excessive. En
partant de la droite, le point 5 (manche des volets entièrement en haut /
aucun volet sorti) est toujours égal à zéro — aucune compensation n'est
nécessaire lorsque les volets ne sont pas déployés. Les 4 autres points
de la courbe seront réglables à l'aide de Vars. Comme le manche des
volets se trouvera souvent entre deux points définis, les deux points
situés de part et d'autre doivent pouvoir être réglés en même temps dans
cette zone de chevauchement.

## 2. Calculer les plages de chevauchement

Plages point à point (adaptées, avec son aimable autorisation, du
« Crow-aware adaptive elevator trim » de Mike Shellim développé pour
OpenTX, voir rc-soar.com — légèrement modifiées pour étendre la plage du
Pt2 jusqu'à +100 %, pour la raison expliquée à l'[Étape
6](#6-apply-the-curve)) :

| Plage du manche des volets | Point(s) actif(s) |
|---|---|
| +100 % à +45 % | Pt2 uniquement |
| +45 % à +20 % | Pt2 et Pt3 |
| +20 % à −20 % | Pt3 uniquement |
| −20 % à −45 % | Pt3 et Pt4 |
| −45 % à −90 % | Pt4 uniquement |
| −90 % à −100 % | Pt5 uniquement |

## 3. Configurer les interrupteurs logiques

![Interrupteurs logiques des points adaptatifs](../screenshots/how-in-flight-comp-lsws.png)

Quatre [interrupteurs logiques](../model-setup/logical-switches.md),
chacun utilisant **Range** avec le manche des volets (c'est-à-dire
l'accélérateur) comme source, actifs lorsque le manche se trouve dans la
plage définie du point concerné :

- `AdaptivePt2` — plage de 20 % à 100 % (portée jusqu'à 100 %
  spécifiquement pour permettre de régler le Pt2 même sans volets
  déployés — voir l'Étape 6).

  ![AdaptivePt2](../screenshots/how-in-flight-comp-lsw-adaptivept2.png)

- `AdaptivePt3` — plage de −45 % à 45 %.

  ![AdaptivePt3](../screenshots/how-in-flight-comp-lsw-adaptivept3.png)

- `AdaptivePt4` — plage de −90 % à −20 %.

  ![AdaptivePt4](../screenshots/how-in-flight-comp-lsw-adaptivept4.png)

- `AdaptivePt5` — plage de −100 % à −90 %.

  ![AdaptivePt5](../screenshots/how-in-flight-comp-lsw-adaptivept5.png)

## 4. Définir les Vars de réglage

![Vue d'ensemble des Vars](../screenshots/how-in-flight-comp-vars.png)

Quatre [Vars](../model-setup/variables.md), `VAdjPt2`–`VAdjPt5`, chacune
avec une fourchette de 0 à 50 % (qui peut être augmentée si nécessaire)
et une action définie pour **réutiliser le trim de l'accélérateur** — avec
une taille de pas de 1,0 %, la condition d'activation étant
l'interrupteur logique correspondant :

![VAdjPt2](../screenshots/how-in-flight-comp-var-vadjpt2.png)

![Action VAdjPt2](../screenshots/how-in-flight-comp-var-vadjpt2-2.png)

![VAdjPt3](../screenshots/how-in-flight-comp-var-vadjpt3.png)

![Action VAdjPt3](../screenshots/how-in-flight-comp-var-vadjpt3-2.png)

![VAdjPt4](../screenshots/how-in-flight-comp-var-vadjpt4.png)

![Action VAdjPt4](../screenshots/how-in-flight-comp-var-vadjpt4-2.png)

![VAdjPt5](../screenshots/how-in-flight-comp-var-vadjpt5.png)

![Action VAdjPt5](../screenshots/how-in-flight-comp-var-vadjpt5-2.png)

Comme un seul interrupteur logique (deux au maximum, dans les zones de
chevauchement) est actif à la fois, le même trim physique règle sans
risque différentes Vars selon la position des volets.

## 5. Définir la courbe de compensation

![Courbe de compensation](../screenshots/how-in-flight-comp-var-comp-curve.png)

![Points de la courbe de compensation](../screenshots/how-in-flight-comp-var-comp-curve-pts.png)

Créez une nouvelle courbe personnalisée à 5 points (nommée par exemple
« EleComp ») en activant l'option de lissage (**Smooth**). Appuyez
longuement sur `ENT` sur chacun des points 1 à 4 et utilisez l'option
**Utiliser une source** pour affecter respectivement les Vars
`VAdjPt5`…`VAdjPt2` (le point 5 reste fixé à 0, conformément à l'Étape 1).

## 6. Appliquer la courbe {: #6-apply-the-curve }

Utilisez cette courbe exactement à l'endroit où le [Guide pratique :
mixeur papillon](butterfly-mixer.md#7-add-the-elevator-compensation-curve-and-mix)
rattache sa courbe EleComp au mixage de compensation de profondeur.

Dans la mesure du possible, partez de données réelles (directives du
constructeur de l'avion, publications des forums) sur la course de
profondeur nécessaire pour une sortie de volets donnée ; sinon, quelques
millimètres de compensation à pleins volets constituent un point de
départ raisonnable.

!!! tip "Approche du réglage"
    Commencez avec de petites quantités de volets et de petites
    corrections de trim. `AdaptivePt2` peut être réglé **même si les
    volets ne sont pas déployés** — sortez un peu les volets, rentrez-les
    à nouveau, et composez la compensation petit à petit, plutôt que de
    lutter contre un modèle qui monte ou qui descend en essayant de
    trimmer sous pression. Réappliquez un peu de volets pour vérifier,
    puis ajustez de nouveau si nécessaire. Une fois le Pt2 satisfaisant,
    passez au point suivant, à peu près au milieu de la course du manche
    — si le Pt2 a nécessité une correction de trim importante, il peut
    être prudent d'atterrir et de régler les points restants pour que
    chacun soit légèrement plus grand que le précédent, plutôt que de
    deviner à l'aveugle.
