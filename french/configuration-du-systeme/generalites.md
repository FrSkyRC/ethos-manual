## Généralités

![Icône Général](../.gitbook/assets/system-icon-general.png)
![Paramètres généraux](../.gitbook/assets/system-general.png)

Les éléments suivants peuvent être configurés ici :

* Attributs de l'écran LCD
* Les paramètres audio
* Les réglages vario
* Les paramètres de retour haptique
* La barre d'outils supérieure

**Attributs d'affichage**

Les attributs de l'écran LCD peuvent être configurés ici.

**Langue**

Les langues suivantes sont prises en charge pour les menus d'affichage :

* English
* 中文
* Česky
* Deutsch
* Español
* Français
* עִברִית
* Italiano
* Nederlands
* Norsk
* Português Brasileiro
* Polish
* Português

**Clavier**

Permet de choisir entre les dispositions de clavier virtuel QWERTY, QWERTZ et AZERTY.

**Luminosité**

Utilisez le curseur pour contrôler la luminosité de l'écran, de gauche à droite pour régler la luminosité de sombre à clair. Appuyez longuement sur \[ENT\] pour afficher les options permettant d'utiliser une source ou de la régler au minimum ou au maximum.

Veuillez noter que si Luminosité (pour le rétroéclairage activé) = « Luminosité du mode veille » (pour le rétroéclairage désactivé), l'écran tactile reste actif.

**Option potentiomètre**

![Menu pour la luminosité](../.gitbook/assets/system-general-brightness-menu.png)

Appuyez sur « Utiliser une source », puis sélectionnez un potentiomètre à utiliser comme contrôle de la luminosité.

![Utilisation d'un potentiomètre pour la luminosité](../.gitbook/assets/system-general-brightness-slider.png)

L'exemple ci-dessus montre que la luminosité est contrôlée via le potentiomètre sur le côté droit de la radio.

**Mise en veille**

![Options de mise en veille](../.gitbook/assets/system-general-sleep.png)

Le rétroéclairage de l'écran peut être réveillé de l'état de veille conformément à une ou plusieurs des options suivantes :

_**Toujours**_

Le rétroéclairage reste allumé en permanence.

_**Manches**_

Le rétroéclairage s'allume lorsque vous actionnez des manches ou des touches.

_**Inters**_

Le rétroéclairage s'allume lorsque des interrupteurs ou des touches sont actionnés.

**Gyro**

Le rétroéclairage s'allume lorsque vous inclinez la radio ou lorsque vous actionnez les touches.

Notez que plusieurs options peuvent être activées.

_**Veille**_

Durée d'inactivité avant la désactivation du rétroéclairage. Lorsque vous sélectionnez « Toujours » comme option d'affichage « Réveil », l'option Veille est grisée.

**Luminosité du mode veille**

![Luminosité en veille](../.gitbook/assets/system-general-sleep-brightness.png)

Utilisez le curseur pour contrôler la luminosité de l'écran en mode veille, de gauche à droite pour régler la luminosité de sombre à clair.

Veuillez noter que si Luminosité (pour le rétroéclairage activé) = « Luminosité du mode veille » (pour le rétroéclairage désactivé), l'écran tactile reste actif.

_**Mode sombre**_

Permet de choisir entre les modes clair et sombre pour l'affichage.

**Couleur de surbrillance**

Permet de sélectionner la couleur de surbrillance à utiliser dans l'affichage. La valeur par défaut est jaune (#F8B038).

**Emplacement de stockage (X18 et X20 Pro/R/RS)**

![](../.gitbook/assets/6 (2).jpeg)

Les radios X18 et X20 Pro/R/RS disposent d'une carte eMMC (MultiMediaCard intégrée) de 8 Go qui est un périphérique de stockage composé d'une mémoire flash NAND et d'un simple contrôleur de stockage. Le système ETHOS sélectionne par défaut le stockage eMMC, ce qui rend l'utilisation de la carte SD facultative. Cependant, l'utilisateur peut choisir l'utilisation du stockage eMMC ou utiliser une carte SD en option ou une combinaison des deux.

Veuillez-vous référer à l'écran de sélection de l'emplacement de stockage ci-dessus. Si le système et les modèles sont déplacés vers la carte SD, ces dossiers et fichiers doivent être copiés sur la carte SD avant d'effectuer la sélection. Il en va de même pour l'audio et les bitmaps.

**Paramètres audio**

![](<../.gitbook/assets/7 (1).png>)(fr)

**Langue audio**

Permet de sélectionner la langue des annonces vocales.

**Choix des voix**

La fonction de système multi-voix offre la possibilité de choisir parmi différents ensembles de voix dans une langue donnée.

Voice 1 (main)

La voix principale est utilisée pour toutes les annonces système qui font partie du système d'exploitation Ethos. Par défaut, pour le français, vous avez le choix entre une voix féminin et une voix masculine. Ces packs ne couvrent que les annonces système.

Dans l'exemple ci-dessus, la voix féminine a été sélectionnée comme 'Voix 1 (principale)'.

Les fichiers se trouvent dans les dossiers suivants :

audio/_fr/femme/system_\
_audio/fr/homme/system_

Fichiers audio de l'utilisateur

Les fichiers audios de l'utilisateur peuvent être installés pour être utilisés avec la fonction spéciale « Lire audio » (auparavant « Lire la piste » et « Lire la séquence »). Leur emplacement doit être :

_Audio/fr/femme_ ou\
_audio/fr/homme_

Voix 2 et 3

Des packs de voix alternatives peuvent être installés en tant que Voice 2 ou 3.

Pour garantir la sortie vocale appropriée pour Voice 2 ou 3, vous devrez ajouter vos fichiers audio personnalisés à une structure de dossiers similaire à celles standard présentées ci-dessus sous Voice 1. Par exemple, si vous utilisiez TTS et une voix appelée Susan, votre structure de dossiers serait la suivante :

_audio/fr/Susan_ pour les fichiers audio de l'utilisateur

_audio/fr/Susan/système_ pour les fichiers audio du système de remplacement

Veuillez noter que chaque voix doit avoir un dossier /system, contenant les fichiers audio nécessaires pour les annonces de la valeur de jeu et de le chrono. Notez qu'une liste des fichiers audio système fournis en standard est incluse sous forme de fichier .csv avec chaque version audio.

Vous pouvez ensuite choisir la voix à utiliser pour chaque chrono et la fonction spéciale « Lire audio ». Si vous le souhaitez, vous pouvez attribuer une voix personnalisée en tant que voix 1 (principale) si vous souhaitez remplacer les annonces système par la vôtre.

Voice par ‘défaut’

Pour éviter les problèmes de conversion à partir de la version 1.4.X, une voix par défaut est également installée. Lors de l'installation/de la mise à niveau, si la voix audio du système 1 (voix principale) n'a pas déjà été définie, alors 'Voix 1 (principale)' sera définie sur 'default', car il est certain que le dossier existe.

Les fichiers se trouvent dans ce dossier:

a_udio/fr/default/system_

Fichiers audios de l'utilisateur

Certains fichiers audios personnalisés couramment demandés sont fournis pour être utilisés avec la fonction spéciale « Lire audio » (auparavant « Lire la piste » et « Lire la séquence »). Leur emplacement est :

_audio/fr/default/_

_D'autres fichiers audio utilisateur personnalisés peuvent être ajoutés à ce dossier si l'utilisateur souhaite continuer à utiliser cette voix par défaut._

**Volume principal**

Utilisez le curseur pour contrôler le volume audio. Un appui long sur \[ENT] permet d'utiliser un potentiomètre. Les bips pendant le réglage aident à juger du volume.

**Mode audio**

![](<../.gitbook/assets/8 (1).png>)(fr)

**Silencieux**

Pas d'audio. Notez qu'une alerte sera émise au démarrage si la vérification du « mode silencieux » dans Système / Alertes est activée.

_**Alarmes uniquement**_

Seules les alarmes seront émises sur l'audio.

_**Par défaut**_

Les sons sont activés.

**Fréquent**

Il y aura également des bips d'erreur lorsque vous tenterez de dépasser la valeur maximale ou minimale sur les nombres modifiables.

**Toujours**

En plus des sons dans « Souvent », il y aura également des bips lorsque le menu est navigué.

**Bluetooth (X20S/HD/Pro/R/RS)**

Les modèles X20S, HD et X20 Pro/R/RS disposent d'un mode audio supplémentaire pour relayer l'audio vers un appareil Bluetooth comme un casque.

![](<../.gitbook/assets/9 (3).jpeg>)

Appuyez sur « Rechercher des appareils ».

![](<../.gitbook/assets/10 (1).jpeg>)

Le message « En attente d'appareils » s'affiche. Allumez votre appareil Bluetooth et placez-le en mode d'appairage.

![](<../.gitbook/assets/11 (4).jpeg>)

Une fois le périphérique Bluetooth trouvé, son nom s'affiche. Touchez-le pour sélectionner l'appareil.

![](<../.gitbook/assets/12 (4).jpeg>)

Le message « En attente de l'appareil » s'affiche.

![](<../.gitbook/assets/13 (3).jpeg>)

Lorsque la radio et l'appareil sont couplés, le message « Appareil Bluetooth connecté » s'affiche. Appuyez sur OK.

![](<../.gitbook/assets/14 (2).jpeg>)

L'écran Bluetooth s'affichera à nouveau.

**Mise en sourdine du haut-parleur**

Pour couper le son du haut-parleur du système (par exemple lors de l'utilisation d'un écouteur BT), sélectionnez l'option Toujours allumée, ou activée uniquement lorsque la télémétrie est active, ou contrôlée par une source telle qu'un inter ou toute autre condition.

Le système se souvient de l'appareil Bluetooth. Pour un fonctionnement normal, allumez la radio, puis l'appareil Bluetooth. L'appareil Bluetooth se connectera, ce qui prendra quelques secondes pour que la sourdine du haut-parleur s'active à nouveau.

**Vario**

![](../.gitbook/assets/15.png)

Les caractéristiques audio des tonalités vario peuvent être configurées ici.

_**Volume**_

Le volume relatif de la tonalité vario.

_**Tonalité zéro**_

La tonalité lorsque le taux de montée est nul.

_**Tonalité max**_

La tonalité à la vitesse de montée maximale.

_**Répétition**_

Le délai entre les bips à la tonalité zéro.

Reportez-vous au capteur VSpeed dans Télémétrie et à la fonction spéciale Lire vario pour d'autres paramètres Vario.

**Vibration**

![](../.gitbook/assets/16.png)

_**Intensité**_

Utilisez le curseur pour contrôler l'intensité des vibrations haptiques.

_**Mode**_

![](<../.gitbook/assets/17 (1).jpeg>)

Similaire au mode audio ci-dessus.

**Barre d'infos sup**

![](<../.gitbook/assets/18 (1).jpeg>)

_**Tension numérique (volts)**_

L'état de la batterie dans la barre d'outils supérieure peut être modifié à partir de l'affichage de la barre par défaut pour afficher la tension de la batterie radio sous forme de valeur numérique à la place.

_**RSSI numérique**_

De même, l'état RSSI peut être modifié d'un affichage à barres à une valeur numérique pour 2,4G et 900M.

**Sélectionnez le modèle à la mise sous tension**

![](<../.gitbook/assets/19 (1).jpeg>)

Lorsque cette option est activée, l'écran de sélection du modèle s'affiche à la mise sous tension, de sorte qu'un modèle peut être choisi avant que les alertes de la liste de contrôle du modèle précédemment sélectionné ne s'affichent. Cela évite d'avoir à annuler les alertes de la liste de contrôle avant de sélectionner un autre modèle.

Par défaut, le dernier modèle utilisé dans la session précédente est mis en surbrillance pour la sélection.

**Présélection du mode USB**

![](<../.gitbook/assets/20 (1).jpeg>)

Les présélections suivantes sont disponibles lorsque la radio est connectée à un PC via un câble USB :

_**Non défini**_

Si 'Non défini', une boîte de dialogue apparaîtra au moment de la connexion pour qu'une sélection soit effectuée à ce moment-là.

_**Joystick**_

Lors de la connexion, la radio entrera automatiquement en mode joystick pour une utilisation avec un simulateur RC.

_**Ethos Suite**_

Lors de la connexion, la radio entrera automatiquement en « mode Ethos » pour la communication avec Ethos Suite. Veuillez-vous référer au mode Ethos dans la section Ethos Suite.

_**Série**_

Lors de la connexion, la radio entrera automatiquement en mode série, dans lequel les traces de débogage Lua sont envoyées à USB-série s'il y en a. La vitesse de transmission est de 115200 bps. Un pilote de port COM virtuel Windows approprié peut être trouvé [ici](https://www.st.com/en/development-tools/stsw-stm32102.html).
