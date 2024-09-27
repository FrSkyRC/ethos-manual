### Section Radio
L'onglet Radio permet de gérer la radio.

#### Ethos

img

Dans l'exemple ci-dessus, le « X20 Pro » à côté de « Radio » apparaît lors de la connexion pour indiquer qu'un X20 Pro est connecté. Appuyez sur « Ethos » pour afficher les détails de la radio.

#### Bootloader mode

img

L'exemple ci-dessus montre qu'un X20 Pro est connecté en mode Bootloader, ce qui permet de mettre à jour la radio.
Le firmware, le chargeur de démarrage, le module RF ISRM interne, la carte SD ou l'eMMC (Radio Internal
Stockage) Les fichiers audio et les versions Bitmaps système de la mémoire flash sont affichés.

Les versions du micrologiciel et des bitmaps système sont affichées comme étant supérieures à la version actuelle
versions stables. La version du chargeur d'amorçage est à jour, mais le module RF ISRM et les fichiers audio ne sont pas à jour.
Si le firmware interne du module RF n'est pas à jour, cliquez sur le bouton « gestionnaire de modules » pour le mettre à jour (voir ci-dessous).
Il y a des boutons pour :
a.
Basculement vers le 'gestionnaire de modules' RF pour le mettre à jour.
b.
Éjection des lecteurs de connexion radio [Éjecter les lecteurs]
c.
Passage de la radio en mode Ethos pour les modules clignotants [Passer à Ethos]
d.
Mise à jour de tous les composants obsolètes en une seule fois, ou individuellement le firmware, le chargeur de démarrage, la carte SD ou les fichiers audio eMMC, et les bitmaps du système de mémoire flash.
e.
Il existe également une option pour faire clignoter la radio à partir d'un fichier local, avec un bouton pour sélectionner le fichier de firmware local.
Exécution des mises à jour

img

##### Options de mise à jour
Si la radio n'est pas à jour, vous :
a)
Sélectionnez la version souhaitée, en sélectionnant d'abord la branche souhaitée telle que « Stable » ou « Version de test », puis en sélectionnant la version souhaitée.
b)
Ensuite, vous pouvez « Écrire tous les composants » en cliquant sur le bouton de mise à jour gris foncé à droite.  <<< inserer ici icone>>>

img

Alternativement, en cliquant sur l'option « Écrire tous les composants » elle-même, une liste déroulante s'ouvrira montrant les options alternatives pour écrire uniquement les fichiers de firmware et de langue i18n (nécessaires pour exécuter le firmware), ou le chargeur de démarrage, ou les fichiers bitmap audio ou système individuellement.

##### Mise à jour du micrologiciel

img

Sélectionnez l'option « Écrire les composants obsolètes » ou « Écrire le micrologiciel », puis cliquez sur le bouton de mise à jour gris foncé à côté de l'option sélectionnée.  <<< inserer ici icone>>>

Les messages de progression de la mise à jour du micrologiciel seront les suivants :
Passer au chargeur d'amorçage
◦ Téléchargement du firmware...
◦ Copie du firmware...
◦ Démontage des disques... (sur les ordinateurs Mac)
◦ Rédaction du firmware... (voir la capture d'écran ci-dessus ; à ce stade, l'écran radio affichera également la progression) ◦ Rafraîchissement des informations radio ◦ Mise à jour réussie !

##### Mise à jour à partir d'anciennes versions
Si vous effectuez une mise à jour à partir de la version 1.2.8 ou d'une version antérieure, il se peut qu'Ethos Suite ne soit pas en mesure de flasher automatiquement le micrologiciel. Dans ce cas, la boîte de dialogue de guide suivante s'affiche pour vous guider dans la réalisation manuelle du flash :

img

Il serait également prudent d'éjecter les disques manuellement avant de débrancher le câble USB.

##### Mise à jour des fichiers audio

Sélectionnez l'option « Écrire des composants obsolètes » ou « Écrire des fichiers audio », puis cliquez sur le bouton de mise à jour gris foncé à côté de l'option sélectionnée.    <<< inserer ici icone>>>

Les messages audio de progression de la mise à jour seront les suivants :
◦ Téléchargement du pack audio en anglais... (ou la langue de votre choix) ◦ Copie d'un pack audio anglais sur la radio... ◦ Mise à jour réussie !

##### Mise à jour des fichiers bitmap système

img

Sélectionnez l'option « Écrire les fichiers bitmap système », puis cliquez sur le bouton de téléchargement gris foncé à côté de l'option sélectionnée. Ethos Suite téléchargera la dernière version des fichiers bitmap système sur la radio, qui sera affichée dans la liste des versions une fois terminé. Dans l'exemple ci-dessus, les fichiers bitmap système 1.4.6 ont été réécrits.

Les messages de progression des fichiers bitmap système de mise à jour seront les suivants :
◦ Téléchargement des fichiers bitmap système... ◦ Copie de fichiers bitmap système sur la radio... ◦ Mise à jour réussie !

##### Mise à jour du bootloader

img

img

Sélectionnez l'option « Write bootloader », puis cliquez sur le bouton de téléchargement gris foncé à côté de l'option sélectionnée. Ethos Suite téléchargera le dernier chargeur de démarrage sur la radio, qui sera affiché dans la liste des versions une fois terminé. Dans l'exemple ci-dessus, le chargeur de démarrage 1.4.3 a été réécrit.

Les messages de progression de la mise à jour du micrologiciel seront les suivants : 

    ◦ Passage au micrologiciel... (passe en mode Ethos) ◦ En attente du disque...

    ◦ Copier le chargeur d'amorçage dans Flash...

    ◦ Chargeur d'amorçage clignotant... (voir l'exemple de capture d'écran ci-dessus) ◦ Mise à jour réussie !

##### Mise à jour à partir d'anciennes versions

Si vous effectuez une mise à jour à partir de la version 1.2.8 ou d'une version antérieure, il se peut qu'Ethos Suite ne soit pas en mesure de flasher automatiquement le chargeur de démarrage. Dans ce cas, la boîte de dialogue de guide suivante s'affiche pour vous guider dans la réalisation manuelle du flash :

img

Il serait également prudent d'éjecter les disques manuellement avant de débrancher le câble USB.

#### Gestionnaire du modules RF

img

Le gestionnaire de modules RF est utilisé pour mettre à jour le micrologiciel du module RF.

img

Sélectionnez la version souhaitée (normalement la plus récente) et cliquez sur 'Flash module' pour écrire le firmware sur le module RF interne.

img

La boîte de dialogue « FRSK a été flashé avec succès » s'affiche à la fin.

#### Ethos Mode
Cela permet à la radio de passer du mode chargeur de démarrage au démarrage et à l'exécution Ethos, avec la possibilité de revenir en arrière. Le mode Ethos est nécessaire pour qu'Ethos Suite puisse utiliser la radio comme proxy et utiliser l'onglet FRSK Flasher pour flasher directement le module interne ou pour flasher n'importe quel capteur, servo ou récepteur. Le chargeur d'amorçage peut également être flashé.

img

Cliquez sur le bouton « Passer à Ethos » pour passer en mode Ethos.

img

Un message « Passage au micrologiciel » apparaît, puis la radio redémarre en mode Ethos et affiche une icône USB verte ronde. Le haut de la page passe de « X20 Pro (mode Bootloader) » à « X20 Pro » pour indiquer qu'Ethos Suite fonctionne désormais en mode Ethos.     <<< inserer ici icone>>>

Notez que le bouton 'Switch to Ethos' a été changé en 'Switch to Bootloader', ce qui vous permet de repasser en mode bootloader.

En mode Ethos, l'onglet « FRSK Flasher » dans la section Outils peut être utilisé pour flasher le module RF interne ou tout capteur, servo ou récepteur. Veuillez-vous référer à la section Clignotant FRSK ci-dessous pour plus de détails.

#### Débranchement de la radio

Cliquez sur le bouton « Éjecter les disques » pour déconnecter la radio.

### Gestionnaire de modèles

À l'aide du Gestionnaire de modèles, une sauvegarde des modèles et des paramètres de la radio peut être enregistrée sur le disque, ou une sauvegarde précédemment enregistrée peut être restaurée sur la radio. Les modèles ne sont pas rétrocompatibles, de sorte que les anciens fichiers de modèles doivent être restaurés à partir du PC lors de la rétrogradation vers un micrologiciel plus ancien.

#### Avertissement!
La restauration ne restaure PAS le firmware ! Après avoir restauré vos modèles et vos paramètres, vous devez toujours utiliser Suite pour réécrire le micrologiciel en utilisant la version qui correspond à votre sauvegarde. Reportez-vous à la section « Mise à jour du micrologiciel » ci-dessus.

img

#### Emplacement de sauvegarde
Cliquez sur l'icône du dossier pour accéder à l'emplacement de sauvegarde souhaité et le sélectionner. Le chemin de sauvegarde sera enregistré pour chaque type de radio.
La date et l'heure de la dernière sauvegarde s'affichent sous l'emplacement.

#### Sauvegarde
Cliquez sur Sauvegarder pour faire une sauvegarde des fichiers de modèle sur la radio.

#### Restaurer
Cliquez sur Restaurer pour restaurer les fichiers de modèle précédemment sauvegardés sur la radio. Cela peut être nécessaire lors de la rétrogradation du micrologiciel de la radio vers une version antérieure.

#### Actualiser la liste
Cliquez sur Actualiser la liste pour rafraîchir la liste des modèles.

img

