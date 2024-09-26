### Étape 2. Identifier les servos/voies requis

La fonction Mixes constitue le coeur de la radio. Il permet de combiner n'importe laquelle des nombreuses sources d'entrée comme on le souhaite et de les mapper sur l'un des voies de sortie. Ethos dispose de 100 voies de mixage pour la programmation de votre modèle. Normalement, les voies numérotées les plus bas seront attribués aux servos, car les numéros de canal correspondent directement aux voies du récepteur. Le module RF (radiofréquence) interne X20 dispose de jusqu'à 24 voies de sortie.

Les voies de mixage supérieurs peuvent être utilisés comme « voies virtuels » dans une programmation plus avancée, ou comme voies réels à l'aide de plusieurs modules RF (internes + externes) et SBus. L'ordre des voies est une question de préférence personnelle ou de convention, ou il peut être dicté par le récepteur. Nous utiliserons AETR (APGD) pour notre exemple.

Notre exemple d'avion a les servos/voies suivants :

- 1 moteur
- 2 ailerons
- 2 volets
- 1 Gouverne de profondeur
- 1 Gouvernail

Nous ajouterons également des rétractations plus tard.