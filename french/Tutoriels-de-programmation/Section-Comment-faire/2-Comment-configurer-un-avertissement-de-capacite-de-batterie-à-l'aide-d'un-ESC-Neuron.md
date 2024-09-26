### 2. Comment configurer un avertissement de capacité de batterie à l'aide d'un ESC Neuron
La meilleure méthode de surveillance de l'utilisation de la batterie consiste à mesurer l'énergie ou le mAh consommé, afin de pouvoir calculer la capacité restante de la batterie. La série d'ESC FrSky Neuron offre cette capacité. Si votre ESC n'a pas cette capacité, un capteur de courant peut être utilisé avec un capteur de consommation calculé, Veuillez-vous référer à l'exemple suivant.
img

Dans Options du récepteur, définissez le port de télémétrie sur l'option S.Port. Connectez le port de télémétrie de l'ESC Neuron à votre récepteur via un câble S.Port et activez l'option « Découvrir de nouveaux capteurs » dans Modèle / Télémétrie. Les capteurs supplémentaires sont illustrés dans l'exemple ci-dessus. Le capteur d'intérêt est 'ESC Consumption'.

img

Ajoutez un nouveau inter logique pour surveiller la « consommation de l'ESC » et devenez Vrai/Actif lorsque la consommation dépasse 900 mAh, soit environ 60 % de la capacité de la batterie, ce qui permet d'obtenir une capacité suffisante pour atterrir et qu'il reste encore environ 30 %.

img

Ajout d'une fonction spéciale pour énoncer la valeur de 'ESC Consumption' lorsque l’inter logique BattCons devient True.

img

Sous 'Séquence', ajoutez une commande 'Play value' pour énoncer la valeur du capteur de télémétrie ESC Consumption.

Comme mesure de sécurité supplémentaire, nous pouvons également configurer une alerte pour la tension de la batterie à l'aide du capteur de tension ESC de Neuron.

img

Ajout d'un nouveau inter logique pour surveiller la tension de l'ESC et pour qu'il devienne Vrai/Actif lorsque la tension de l'ESC reste inférieure à 3,4 par cellule pendant 4 secondes. Dans l'exemple, un LiPo 4S est surveillé, de sorte que le seuil est fixé à 3,4×4 = 13,6 V. Un seuil de 3,4 V en charge reviendra à environ 3,7 V lorsqu'il ne sera plus en charge.

img

Maintenant, ajoutez une fonction spéciale pour énoncer la valeur de 'ESC Voltage' toutes les 5 secondes lorsque l’inter logique BattLow devient True.

img

Sous 'Séquence', ajoutez une commande 'Play value' pour énoncer la valeur du capteur de télémétrie ESC Tension.
