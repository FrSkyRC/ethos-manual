# Configuration de l'écran principal

![](../.gitbook/assets/????????.jpeg)

Par défaut, le premier écran comporte un grand widget sur la gauche pour afficher le bitmap du modèle, et trois widgets sur la droite pour afficher les huit chronos. Ces widgets peuvent être reconfigurés pour afficher d'autres paramètres, ou l'ensemble de la disposition de l'écran peut être remplacé par un écran nouvellement défini avec un nombre différent de cellules ou une disposition des cellules.

Chaque widget affiche le type de widget en haut à gauche. Pour les widgets configurables, la source est affichée en bas à gauche du widget. Le widget peut être configuré en appuyant sur le bouton 'Configurer'.

![](../.gitbook/assets/????????.jpeg)

La source du widget peut être modifiée en appuyant sur la flèche vers le bas.

![](../.gitbook/assets/????????.jpeg)

Le widget peut être configuré en appuyant sur le bouton « Configurer le widget ».
Dans l'exemple ci-dessus, le widget est de type 'Value', avec la source définie sur 'Timer1'. Le titre du widget est activé.

![](../.gitbook/assets/????????.jpeg)

Si un widget n'est pas configurable, ou n'est pas encore attribué, seul un bouton 'Modifier le widget' s'affiche. Appuyez sur le bouton « Modifier le widget » pour afficher une boîte de dialogue de catégorie de widget. Les widgets Lua personnalisés apparaîtront également dans la liste. 

## Widgets standard

**Bitmap**
Permet d'afficher un bitmap sélectionné.

![](../.gitbook/assets/????????.jpeg)

Dans l'exemple ci-dessus, le widget affichera le bitmap du modèle, qui doit se trouver dans /bitmaps/model.

![](../.gitbook/assets/????????.jpeg)

Le widget peut également afficher un bitmap utilisateur, qui doit se trouver dans /bitmaps/user.

**Valeur**

![](../.gitbook/assets/????????.jpeg)

![](../.gitbook/assets/????????.jpeg)

Le widget Valeur affiche simplement la valeur de la source sélectionnée.

**Valeur min/max**

![](../.gitbook/assets/????????.jpeg)

Lors de l'affichage des valeurs de télémétrie, un appui long sur le capteur après la sélection vous permet d'afficher la valeur min ou max.

**Journaux de chrono**

![](../.gitbook/assets/????????.jpeg)

![](../.gitbook/assets/????????.jpeg)

Les journaux de chrono fournissent un journal des valeurs de chrono. Les valeurs de le chrono sont écrites lorsque le chrono est réinitialisée.

![](../.gitbook/assets/????????.jpeg)

**Carte GPS**

Ce widget prend en charge l'affichage d'une carte GPS. Veuillez-vous référer au fil de discussion X20 Ethos sur rcgroups pour plus de détails, en particulier le post #8854.

**LiPo**

![](../.gitbook/assets/????????.jpeg)

Le widget Lipo affichera les informations de tension Lipo provenant de capteurs tels que FLVSS.

![](../.gitbook/assets/????????.jpeg)

Si la tension de cellule la plus basse est inférieure au seuil « Basse tension », les tensions sont affichées en rouge.

**Voies**

![](../.gitbook/assets/????????.jpeg)

Le widget Voies permet d'afficher jusqu'à 8 voies sous forme de graphique à barres, avec des barres horizontales ou verticales.

![](../.gitbook/assets/????????.jpeg)

L'exemple ci-dessus montre deux widgets Voies, celui de gauche affichant 4 voies verticalement, tandis que celui de droite affiche 8 voies horizontalement.

**Tracé ligne**
***Configuration***

![](../.gitbook/assets/????????.jpeg)

Le widget Graphique linéaire permet de représenter graphiquement la source sélectionnée.
Notez que le widget réinitialise ses données lors d'une « réinitialisation de vol ».

![](../.gitbook/assets/????????.jpeg)

***Source***
Sélectionnez la source à cartographier.

***Condition de pause***
Sélectionnez la source à utiliser comme contrôle de pause. Si vous n'avez pas de pièces de rechange, vous pouvez également mettre en pause et reprendre le graphique en courbes en appuyant sur le widget pendant qu'il est en cours d'exécution.

***Période de journalisation***
La période de journalisation peut être définie. En utilisant une période de 500 ms, le graphique couvrira environ 6 minutes avant de commencer à faire défiler la page, tandis que 1 s couvrira environ 12 minutes.

***Inversé***
Le graphique de journal peut être inversé.

***Gamme automatique***
Si la plage automatique est activée, l'axe vertical sera mis à l'échelle en fonction de l'entrée. Si la plage automatique est désactivée, l'axe vertical sera mis à l'échelle en fonction des paramètres Min et Max. Dans l'exemple ci-dessus, le widget supérieur a été défini pour la plage automatique et le graphique montre une oscillation de la source de +26 % à -22 % jusqu'à présent.

***Min/Max***
Dans l'exemple ci-dessus, la plage automatique du widget inférieur est désactivée et une plage fixe de -100 % à +100 % est utilisée.

**Options d'exécution**
 
![](../.gitbook/assets/????????.jpeg)

Appuyez sur le graphique en courbes pendant qu'il est en cours d'exécution pour afficher une boîte de dialogue qui vous permet de :
•	Suspendre ou reprendre la journalisation
•	Réinitialisez le graphique et recommencez
•	Configurer les paramètres du widget
•	Allez dans le menu 'Configurer les écrans'

•	Allez dans le menu 'Configurer les écrans'

**Texte**
Le widget de texte affichera le contenu d'un fichier texte. Le format Markdown est pris en charge.

Le fichier texte doit être placé dans un dossier nommé documents/user.
 
![](../.gitbook/assets/????????.jpeg)
 
Utilisez le Gestionnaire système/fichier pour accéder au fichier, puis cliquez dessus. Une boîte de dialogue s'ouvrira avec une option permettant d'ouvrir le fichier.
 
![](../.gitbook/assets/????????.jpeg)
 
Le contenu du fichier s'affiche.  Le format Markdown est pris en charge.


## Exemple de widgets de l'écran principal

Dans l'exemple ci-dessus, le widget Bitmap du modèle affiche l'image du modèle qui a été configurée dans Modèle / Modifier le modèle / Image. Le widget du milieu à droite affiche la tension de la batterie de l'horloge en temps réel de la radio, tandis que le widget inférieur affiche la fréquence d'images valide.
 
Appuyez sur n'importe quel widget des vues principales pour afficher une boîte de dialogue permettant de configurer le widget ou pour accéder à la fonction principale Configurer les écrans .
