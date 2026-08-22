---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Liste de vérification

![Liste de vérification](../screenshots/model-checklist.png)

Un ensemble de contrôles de sécurité avant vol qui s'exécutent à la mise
sous tension de la radio et/ou au chargement d'un modèle. Les contrôles
intégrés comprennent le mode silencieux, le failsafe non défini, les
positions des interrupteurs/potentiomètres, la batterie de la radio et la
pile RTC : le contrôle des interrupteurs indique dans quel sens chaque
interrupteur doit être déplacé, au moyen de points rouges sur l'écran
d'avertissement :

![Liste de vérification au démarrage](../screenshots/model-checklist-at_start.png)

!!! note
    `OK` comme `RTN` ignore entièrement les contrôles avant vol, quoi que
    suggère l'avertissement affiché à l'écran.

## Contrôle des gaz

![Fonction de contrôle](../screenshots/model-checklist-check_function.png)

Activez le contrôle et choisissez un opérateur : `<` (inférieur à), `~`
(approximativement égal) ou `>` (supérieur à) : appliqué à une valeur. Un
avertissement est émis si le manche des gaz se trouve hors de la plage
autorisée par cette comparaison.

## Contrôle du failsafe

Avertit si le [failsafe](rf-system.md#failsafe) n'a pas été défini pour le
modèle courant.

!!! tip
    Il est fortement recommandé de laisser cette option activée.

## Contrôle des interrupteurs

![Interrupteurs](../screenshots/model-checklist-switches.png)

![Options de contrôle des interrupteurs](../screenshots/model-checklist-switches-options.png)

Pour chaque interrupteur, exigez une position précise au démarrage (les
interrupteurs portant un nom personnalisé défini dans [Configuration du
système →
Matériel](../system-setup/hardware.md#switches-settings) apparaissent avec
ces noms). **Charger toutes les positions des interrupteurs** enregistre
les positions physiques *actuelles* comme positions attendues pour chaque
interrupteur non réglé sur **Aucune vérification**.

## Contrôle des interrupteurs de fonction

![Interrupteurs de fonction](../screenshots/model-checklist-function-switches.png)

![Options de contrôle des interrupteurs de fonction](../screenshots/model-checklist-function-switches-options.png)

Le même principe, appliqué aux six [interrupteurs de
fonction](model-edit.md#function-switches). **Charger toutes les positions
des interrupteurs de fonction** fonctionne de la même manière que
ci-dessus.

## Contrôle des potentiomètres / curseurs

![Potentiomètres](../screenshots/model-checklist-pots.png)

![Options de contrôle des potentiomètres](../screenshots/model-checklist-pots-options.png)

Exige des positions précises des potentiomètres/curseurs au démarrage,
individuellement pour chaque commande (`~`/`<`/`>`, comme pour le contrôle
des gaz). **Charger toutes les positions des potentiomètres** enregistre
automatiquement les positions actuelles. Vérifiez ensuite attentivement
les opérateurs sélectionnés automatiquement, car `~` par rapport à
`<`/`>` peut ne pas correspondre à votre intention réelle.

## Texte défini par l'utilisateur

![Texte de liste de vérification utilisateur](../screenshots/model-checklist-user-checklist.png)

Affiche un fichier en texte simple ou enrichi dans le cadre de la liste de
vérification au démarrage, une fois installé pour le modèle. Voir [Guide
pratique : liste de vérification en texte défini par
l'utilisateur](../how-to/user-defined-checklist.md) pour la procédure
complète.
