---
translated_from: 4cf1808aa5b70d3f39900c1a7aff575ca60ee89e
---

# Mixages

![Icône Mixages](../screenshots/model-icon-mixes.png)

Les mixages constituent le cœur de la programmation d'un modèle dans Ethos —
c'est là que les entrées (manches, interrupteurs, capteurs, tout ce qu'une
[source](../getting-started/user-interface-and-navigation.md#choosing-a-source)
peut atteindre) sont dirigées, mises en forme et combinées sur les voies de
sortie. Jusqu'à 120 mixages peuvent être définis par modèle.

![Tableau des mixages](../screenshots/model-mixes.png)

Si votre modèle a été créé à l'aide de l'assistant **Choix modèle**, ses
mixages de base (ailerons, profondeur, gaz, dérive et tout ce que la cellule
requiert) apparaissent déjà dans cette section. Une fois un mixage
sélectionné, un appui sur `ENT` ouvre un menu contextuel permettant de le
modifier, d'ajouter un nouveau mixage, de passer à la
[vue par voie](#per-channel-view), de le déplacer vers le haut ou vers le
bas, de le dupliquer ou de le supprimer. Les mixages inactifs sont affichés
en grisé, et une confirmation est toujours demandée avant la suppression d'un
mixage.

## Anatomie d'un mixage {: #anatomy-of-a-mix }

Tous les mixages partagent le même ensemble de champs, quelle que soit la
catégorie dont ils proviennent. Le mixage **ailerons** est proposé en exemple.
La programmation reste identique pour la profondeur et la dérive.

![Mixage ailerons](../screenshots/model-mixes-ail-edit.png)

![Éditeur du mixage ailerons](../screenshots/model-mixes-ail.png)

**Nom** — le type de mixage est renseigné par défaut, mais peut être modifié.

**Condition** — la condition par défaut est *Toujours*. Le mixage peut être
rendu conditionnel en choisissant parmi les positions d'interrupteurs, les
inters de fonction, les inters logiques, les phases de vol, un événement
système (coupure ou maintien des gaz) ou les positions de trim ; le mixage ne
s'applique alors que lorsque la condition est vraie.

**Phases de vol** — si des phases de vol ont été définies, le mixage peut en
outre être conditionné à une ou plusieurs phases de vol.

**Courbe** — une courbe **Expo** est disponible en standard (0 = réponse
linéaire ; une valeur positive adoucit la réponse autour du neutre, tandis
qu'une valeur négative l'accentue) :

![Courbe Expo](../screenshots/model-mixes-ail-expo.png)

Toute courbe préalablement définie dans le menu [Courbes](curves.md) peut
être sélectionnée à la place. Jusqu'à 6 courbes peuvent être appliquées à un
même mixage, chacune avec sa propre condition — si plusieurs conditions sont
remplies simultanément, la courbe la plus élevée dans la liste prévaut. Les
courbes sont appliquées **avant** les courses (débattements).

**Courses (débattements)** — une ou plusieurs lignes de débattement, chacune
pouvant être soumise à une position d'inter, un inter de fonction, un inter
logique, une position de trim ou une phase de vol. La course par défaut
(c'est-à-dire la première ligne) est active lorsqu'aucune autre course n'est
active :

![Débattements ailerons](../screenshots/model-mixes-ail-weight.png)

Plutôt qu'un pourcentage fixe, une course peut être pilotée par une
[source](../getting-started/user-interface-and-navigation.md#choosing-a-source)
— par exemple un potentiomètre, afin de régler le débattement en vol :

![Débattement piloté par une source](../screenshots/model-mixes-ail-diff.png)

**Différentiel** (-100 à +100, valeur par défaut 0) — offre plus de
débattement dans une direction que dans l'autre. Pour les ailerons, c'est
l'astuce classique consistant à utiliser une plus grande course vers le haut
que vers le bas afin de réduire le lacet inverse. Cette option n'apparaît que
lorsque le mixage comporte plus d'une voie de sortie ; le différentiel n'a de
sens qu'avec une configuration de sortie de type empennage en V ou double
aileron.

**Nombre voies / sorties** — le nombre de voies de sortie que ce mixage
pilote et les sorties physiques auxquelles elles sont attribuées :

![Nombre de voies](../screenshots/model-mixes-ail-ch-count.png)

Un appui long sur `ENT` sur une voie de sortie ailleurs dans l'interface (par
exemple dans [Sorties](outputs.md)) vous ramène directement à cette page.

## Le mixage des gaz

Le mixage des gaz est un mixage de type ailerons/profondeur/dérive auquel
s'ajoutent des options de sécurité propres au moteur.

![Mixage des gaz](../screenshots/model-mixes-thr.png)

**Entrée** — la source des gaz, par défaut le manche des gaz, mais qui peut
être remplacée par un potentiomètre, un curseur, un inter, un trim, une voie,
un axe gyroscopique, une voie élève, un chrono ou toute autre source.

**Trim ralenti** — pour les moteurs thermiques, permet à un trim dédié de
régler le régime de ralenti sans affecter la position plein gaz. Si le trim
ralenti est activé, la voie des gaz a une valeur de -75 % lorsque le manche
des gaz est en position basse, et le trim de gaz peut alors être utilisé pour
régler le ralenti entre -100 % et -50 % :

![Menu du trim de ralenti](../screenshots/model-mixes-thr-trim-menu.png)

![Trim de ralenti en position basse](../screenshots/model-mixes-thr-trim-low-position.png)

**Coupure gaz** — un verrouillage de sécurité strict : la voie ne s'active
qu'à partir du moment où le manche des gaz est passé par le ralenti, de sorte
qu'une manipulation accidentelle d'un interrupteur ne puisse pas lancer le
moteur depuis une position plein gaz :

![Coupure gaz](../screenshots/model-mixes-thr-cut.png)

**Maintien gaz** — maintient la voie à une valeur fixe indépendamment de la
position du manche, sans le verrouillage de sécurité offert par la coupure
gaz :

![Maintien gaz](../screenshots/model-mixes-thr-hold.png)

Le mixage des gaz dispose également de son propre nombre de voies de sortie,
comme n'importe quel autre mixage :

![Nombre de voies des gaz](../screenshots/model-mixes-thr-ch-count.png)

!!! note "Verrouillage des gaz"
    Ethos exige que l'entrée du mixage des gaz passe par -100 % avant
    d'autoriser l'armement, quels que soient les réglages de coupure ou de
    maintien des gaz — un modèle créé avec l'assistant Choix modèle en tient
    déjà compte, mais un mixage des gaz construit manuellement doit également
    le prévoir.

## Bibliothèques de mixages {: #mix-libraries }

La bibliothèque de mixages prédéfinis de la boîte de dialogue **Ajouter un
mixage** est adaptée à la catégorie de modèle choisie lors de la création du
modèle — avion, planeur, hélicoptère et multirotor proposent chacun un
ensemble différent :

![Bibliothèque de mixages avion](../screenshots/model-mixes-library-airplane.png)

![Bibliothèque de mixages planeur](../screenshots/model-mixes-library-glider.png)

![Bibliothèque de mixages hélicoptère](../screenshots/model-mixes-library-heli.png)

![Bibliothèque de mixages multirotor](../screenshots/model-mixes-library-multirotor.png)

Chaque bibliothèque comprend également le **Mixage libre** — le mixage à
usage général, sans entrée/sortie prédéfinie, plus souple que les mixages
spécialisés, mais qui demande davantage de réglages pour parvenir au même
résultat.

## Vue par voie {: #per-channel-view }

Avec des mixages complexes empilés sur une même sortie, il peut être
difficile de voir leur effet combiné depuis le tableau des mixages
ci-dessus. Sélectionner un mixage et choisir **Afficher par voie** regroupe
au contraire tous les mixages qui affectent une même sortie :

![Passage à la vue par voie](../screenshots/model-mixes-chview-select.png)

![Voie repliée](../screenshots/model-mixes-chview-collapsed.png)

![Voie de profondeur développée](../screenshots/model-mixes-chview-elevator.png)

En développant la ligne récapitulative d'une voie, tous les mixages qui y
contribuent sont affichés, chacun avec sa sortie numérique et graphique en
temps réel — pratique pour vérifier précisément ce qu'un mixage secondaire
(par exemple une compensation Volets => Profondeur) ajoute par-dessus
l'action principale du manche :

![Détail de la vue par voie de la profondeur](../screenshots/model-mixes-chview-elevator-channel.png)

![Voie de profondeur, mixage mis en évidence](../screenshots/model-mixes-chview-elevator-channel-view.png)

En cliquant sur un sous-mixage au lieu de la ligne récapitulative, le même
menu contextuel que dans la vue tableau s'affiche (modifier, revenir à la vue
tableau, supprimer) :

![Sélection de la vue tableau depuis la vue par voie](../screenshots/model-mixes-chview-table-view-select.png)

![Retour à la vue tableau](../screenshots/model-mixes-chview-back-at-mixes-view.png)
