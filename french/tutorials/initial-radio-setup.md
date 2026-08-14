---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Configuration initiale de la radio

La configuration à effectuer une seule fois, avant de programmer un quelconque modèle. Les [Tutoriels](index.md) qui suivent supposent tous que cette étape a été réalisée au préalable.

!!! note
    Ces tutoriels ne sont pas de nature « livre de recettes » — ils supposent
    que l'utilisateur a une compréhension de base du vocabulaire des modèles
    radiocommandés et qu'il est familier avec la navigation dans les menus
    Ethos. Si quelque chose n'est pas clair ici, reportez-vous d'abord à
    [Interface utilisateur et
    navigation](../getting-started/user-interface-and-navigation.md).

## Étape 1. Chargez la radio et les batteries de vol

Chargez la batterie de la radio en suivant les instructions reçues avec la radio, et les batteries de vol à l'aide d'un chargeur adapté à leur type de chimie — en prenant des précautions particulières avec les batteries au lithium.

## Étape 2. Calibrez le matériel

Assurez-vous que l'[étalonnage
matériel](../system-setup/hardware.md#analogs-calibration) a bien été effectué
(il s'exécute automatiquement lors du démarrage initial), afin de confirmer que
la radio sait exactement où se trouvent les centres et les limites de chaque
cardan, potentiomètre et curseur. Il peut être refait dans **Système →
Matériel** chaque fois qu'un cardan, un potentiomètre ou un curseur est
remplacé.

## Étape 3. Effectuez la configuration du système radio

La [configuration du système](../system-setup/index.md) regroupe tout ce qui
est commun à tous les modèles, à la différence des fonctions [Configuration du
modèle](../model-setup/index.md), qui règlent les paramètres spécifiques à
chaque modèle. De nombreux paramètres peuvent (au moins dans un premier temps)
être conservés à leurs valeurs par défaut, mais les points suivants doivent
être examinés :

- **[Date et heure](../system-setup/date-and-time.md)** — réglez l'heure et la date correctement.
- **[Audio → Choix des
  voix](../system-setup/general.md#audio-settings)** — configurez les annonces
  vocales de la radio, y compris vos fichiers audios personnalisés.
- **[Manches](../system-setup/controls.md)** :
  - **Mode manches** — le mode 1 a la manette des gaz et les ailerons sur le
    manche droit, la profondeur et la dérive sur le manche gauche ; le mode 2 a
    la manette des gaz et la dérive sur le manche gauche, les ailerons et la
    profondeur sur le manche droit (mode par défaut d'Ethos).

    !!! warning
        Si un modèle est configuré pour un mode de manches alors que
        l'émetteur est réglé sur l'autre, il est possible de faire démarrer le
        moteur des modèles électriques dès la mise sous tension du récepteur.

  - **Ordre des voies** — l'ordre des voies par défaut pour Ethos est **AETR**
    (c'est-à-dire aileron, profondeur, manette des gaz, dérive) ; **TAER** est
    la valeur par défaut pour Spektrum/JR, et **AETR** pour Futaba/Hitec. Ce
    paramètre définit l'ordre dans lequel les entrées de manche sont insérées
    lors de la création d'un nouveau modèle — chaque modèle peut bien sûr être
    modifié individuellement par la suite.

    !!! note "Récepteurs stabilisés FrSky"
        Ceux-ci exigent spécifiquement l'ordre **AETR**. Cependant, pour les
        modèles avec plus d'une surface par fonction (par exemple 2 voies
        d'ailerons), l'assistant regroupe normalement ces surfaces, de sorte
        que vous obtiendrez **AAETR** — mais les récepteurs SRx s'attendent
        plutôt à l'ordre **AETRA**/**AETRAE** ; activez donc **[Quatre
        premières voies
        fixes](../system-setup/controls.md#first-four-channels-fixed)** dans
        Manches pour conserver dans tous les cas les quatre premières voies
        dans l'ordre strict AETR.

- **[Batterie](../system-setup/battery.md)** — passez en revue les
  spécifications de votre batterie radio et configurez la **Tension
  principale**, la **Basse tension** et la **Plage de tension d'affichage** en
  fonction de la batterie réellement installée dans la radio.
- **[ID d'enregistrement du
  propriétaire](../model-setup/rf-system.md#owner-registration-id)** — utilisé
  avec les récepteurs ACCESS, et partagé entre les émetteurs avec lesquels vous
  souhaitez utiliser la fonction Smart Share. Bien qu'il soit configuré dans la
  section Configuration du modèle, il fonctionne en pratique comme un paramètre
  du système, puisqu'il sera utilisé pour chaque nouveau modèle (il peut
  toutefois être modifié pour un récepteur particulier au cours du processus
  d'enregistrement, si nécessaire).

!!! note "Unités"
    Veuillez noter que dans Ethos il n'y a pas de paramètre métrique ou
    impérial global — les [unités des capteurs de
    télémétrie](../model-setup/telemetry.md#editing-a-sensor) sont configurées
    individuellement, par capteur.
