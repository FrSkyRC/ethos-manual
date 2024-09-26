### Étape 8. Configurer une chrono de vol pour la batterie

img

Appuyez sur Chrono 1 dans la section Modèle / Chronos, puis sélectionnez Modifier. Dans cet exemple, nous configurons un minuteur de comptage vers le bas, avec une valeur de début de 5 minutes. Le chrono s'exécutera chaque fois que l'événement système Gaz actif' est True, à condition qu'il ne soit pas maintenu en réinitialisation.

Si vous attribuez une source de synchronisation proportionnelle, la vitesse de le chrono dépendra de la position du manche des gaz (par exemple). À plein régime, le chrono comptera en temps réel, mais ralentira à mesure que l'accélérateur sera réduit.

img

Le chrono sera réinitialisée par l'événement système ‘Coupure Gaz’. Il n'est pas persistant, il sera donc également réinitialisé à la mise sous tension.
Définissez « Voix » sur la voix souhaitée et configurez les actions audio. L'exemple ci-dessus montre un compte à rebours vocal pour commencer à 2 minutes restantes, avec un décompte toutes les 30 secondes. Il y a un compte à rebours supplémentaire pour émettre un bip pendant les 10 dernières secondes. Enfin, un fichier audio 'timup' sera lu lorsque le minuteur sera écoulé.
Cette configuration peut être utilisée pour vous avertir lorsqu'il est temps d'atterrir, la valeur de départ étant choisie de manière à ce qu'il reste environ 30 % de la capacité de la batterie. Les batteries de type LiPo ne tolèrent pas d'être trop déchargées.