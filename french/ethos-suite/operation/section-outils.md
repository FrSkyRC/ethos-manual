### Section Outils

La section Outils comprend :
a) Le gestionnaire d'images pour la conversion d'images au format ETHOS.
b) Le gestionnaire audio pour la conversion de fichiers audio au format ETHOS.
c) Outils de développement Lua.
d) L'onglet DFU Flasher. Veuillez-vous référer à la section DFU Flasher ci-dessous.
e) L'outil de réparation permet de réparer la mémoire flash NAND sur les radios X18/S, TW Lite, XE, X20 Pro/R/RS.
f) L'onglet FRSK Flasher pour les modules clignotants.


#### FRSK Flasher
##### Flash du Module interne

img

L'onglet FRSK Flasher est utilisé pour faire clignoter le module RF interne ou utilise la radio comme proxy pour flasher n'importe quel capteur, servo ou récepteur directement à partir d'Ethos Suite.


img

Traduction française par Philippe Moreau (@philandroid) page 400 v1.5.10 rev1
Dans l'exemple ci-dessus, on a cliqué sur le bouton 'Flash' sur la ligne V2.2.2 du module TD interne pour flasher le module TD. Si Suite ne parvient pas à déterminer la version actuelle d'un module, il peut vous demander de confirmer la version à flasher.

###### Flasher un capteur, un servo ou un récepteur.

img

Dans la section inférieure, cliquez sur le bouton « Sélectionner FRSK », puis naviguez pour sélectionner un fichier .frsk précédemment téléchargé à flasher. Dans l'exemple ci-dessus, la boîte de dialogue confirme qu'une mise à jour pour un récepteur Archer-X a été sélectionnée, version 2.1.10.



img

Cliquez sur le bouton 'Flash' pour commencer à clignoter. Une barre de progression « Dispositif clignotant » s'affiche.

img

Traduction française par Philippe Moreau (@philandroid) page 401 v1.5.10 rev1
Suivi de « FRSK clignote avec succès ». Cliquez sur « Fermer » pour continuer.

#### Outil Image
L'outil Image convertit vos images au format suivant :


* Taille: Comme spécifié par l'utilisateur, mais en conservant les proportions.
* Format: BMP 32 bits
* Espace color : RVB
* Canal alpha: Ajoutera de l'alpha uniquement si nécessaire si l'option est cochée.

Notez que les images des modèles X20 sont de 300 x 280 pixels et de 180 x 168 pixels pour X18.
Les images en plein écran pour X20 sont de 800 x 480 pixels et pour X18 de 480 x 320.

img

img

Cliquez sur le bouton '+' pour parcourir et sélectionner l'image à convertir. D'autres images peuvent être ajoutées à la liste. Veuillez noter que le format TIFF n'est pas pris en charge.

Sélectionnez ensuite le chemin de sortie, si vous souhaitez ouvrir le répertoire (dossier) et si vous souhaitez ajouter un canal alpha pour plus de transparence. Notez qu'il n'ajoutera le canal Alpha qu'en cas de besoin.

img

img

Exemple de conversion terminée.



#### Outil Audio

L'outil Audio convertira vos fichiers audio au format suivant :
* Format :PCM linéaire
* Fréquence d'échantillonnage :32kHz
* Voies : 1 (mono)
* Bits par échantillon : 16 bits, low endian (pcm_s16le)

img

Cliquez sur le bouton '+' pour sélectionner l'image à convertir. Sélectionnez ensuite le chemin de sortie et indiquez s'il faut ouvrir le répertoire (dossier) après la conversion.


#### Outil de développement Lua

Cette section vous permet d'afficher la documentation d'Ethos Lua et d'accéder aux scripts de démonstration Lua, ainsi que de fournir un terminal pour le débogage.

img

##### Lua Docs
Fournit un lien vers le guide de référence Ethos Lua.
Veuillez également vous référer au fil de discussion FrSky - ETHOS Lua Script Programming sur rcgroups pour plus d'informations et pour les scripts et widgets utilisateur.

##### Scripts de démonstration Lua
Ce bouton ouvre la page web de la communauté Ethos-Feedback sur Github où l'on peut trouver des liens vers des scripts de démonstration Lua donnant des exemples de codage.

##### Déboguer
La fonction de débogage fournit une fenêtre de journal de débogage pour afficher les traces de débogage Lua envoyées à USB-Série lorsque la radio est en mode série.

img

1. Tout d'abord, vous connectez l'émetteur à Suite Ethos comme d'habitude.
2. Passez en mode Ethos. Vous pouvez maintenant éditer votre lua directement sur la radio, à l'aide de l'Explorateur Windows ou du Finder macOS et de votre éditeur de code préféré.
3. Ouvrez l'onglet Outils de développement Lua.
4. Cliquez sur 'DÉMARRER LE DÉBOGAGE', cela fera passer l'émetteur en 'mode débogage', qui est le mode série.
5. Votre émetteur redémarre et réinitialise les scripts lua. Toutes les sorties d'impression des scripts lua qui sont actifs dans votre modèle sont envoyées à la fenêtre de terminal intégrée de Suite via le mode série.
6. Si un problème ou une erreur a été détecté, l'outil de développement est utilisé pour revenir en mode Ethos en cliquant sur 'STOP DEBUG'.
7. Le script lua peut être édité à nouveau

img

8. The error shown in the example above has been fixed, and normal running can be confirmed.


#### DFU Flasher

Le chargeur de démarrage radio peut toujours être flashé en mode DFU à l'aide d'une connexion hors tension, même si le micrologiciel radio a été corrompu pour une raison quelconque. C'est parce que le chargeur de démarrage ST est dans la ROM.

img

Cliquez sur le bouton « Sélectionner le chargeur de démarrage » pour accéder à votre fichier de chargeur de démarrage téléchargé et sélectionnez-le.

img

Ethos Suite évaluera le fichier sélectionné et rendra compte de sa version et de sa pertinence.

img

Connectez maintenant votre radio éteinte au PC à l'aide d'un câble USB. Cliquez sur le bouton 'Flash' pour flasher le chargeur de démarrage sélectionné. Il rendra compte de la réussite lorsqu'il sera terminé.

En cas d'erreur « La connexion radio n'est pas détectée ! », vous devrez installer le pilote DFU correct. Sur la plupart des PC Windows 10 ou versions ultérieures, les systèmes Tandem se connectent à l'aide du pilote DFU USB Windows par défaut et sont prêts à flasher le chargeur de démarrage. Cependant, les mises à jour Windows remplacent souvent les pilotes par des pilotes génériques qui peuvent ne pas fonctionner avec la radio.

img

Vérifiez le Gestionnaire de périphériques pour voir si votre périphérique DFU (c'est-à-dire votre radio) est reconnu et fonctionne. Dans cette situation, des programmes tels que l'Impulse Driver Fixer peuvent être utilisés pour corriger le pilote. Il peut être téléchargé à partir de https://impulserc.com/pages/downloads. Pour plus d'informations, veuillez consulter également ce Mise à jour d'Ethos Suite Publier.

Remarque pour les utilisateurs d'Horus X10 : Windows 10 n'installera pas par défaut le pilote de périphérique USB du chargeur de démarrage STM32 nécessaire pour les systèmes Horus. Il devra être installé avec un programme comme Impulse Driver Fixer ou Zadig.





#### Outil de réparation

L'outil de réparation est destiné aux radios X18/S, TW Lite, XE, X20 Pro/R/RS. Si votre radio ne peut pas lire à partir de la NAND ou si les paramètres ne peuvent pas être enregistrés, cet outil reformatera le stockage interne.

img

