### Étape 5. Configuration FBL

#### Installer l'outil de configuration FBL
Commencez par installer le logiciel Spirit Settings sur votre PC.

#### Connectez votre récepteur à l'unité FBL
Connectez votre récepteur à votre unité FBL conformément à la section Câblage du manuel FBL. Votre récepteur 'SBUS Out' doit être connecté au port 'RUD' de l'unité FBL (notez que certains modèles Spirit nécessitent un adaptateur SBUS). Vous pouvez également vous connecter à l'aide du F.Port 1 (prise en charge du F.Port 2/FBUS prévue prochainement).

#### Connectez l'unité FBL à votre PC
Connectez votre PC à votre unité FBL conformément à la section Configuration du manuel Spirit FBL, soit à l'aide du câble fourni, soit via Bluetooth.
Établissez une connexion réussie à votre unité FBL. Vous êtes maintenant prêt à configurer le côté programmation radio de votre installation d'hélicoptère. Comme nous l'avons déjà indiqué, vous devez vous référer à la documentation de configuration de Spirit FBL dans le manuel pour terminer la configuration restante.

&nbsp;&nbsp;**Avertissement!**  Ne connectez pas encore de servos !

#### Vérifier la version du micrologiciel FBL
Si nécessaire, mettez à jour le micrologiciel FBL vers la dernière version (reportez-vous à l'onglet Mise à jour de l'outil Paramètres Spirit).

#### Configuration générale
Veuillez-vous référer à l'onglet Général du logiciel Spirit Settings.
a.
Réglez le type de récepteur sur 'Futaba SBUS' ou 'FrSky F.Port' (selon le cas) et redémarrez le système.
b.
Cliquez sur le bouton 'Voies' pour accéder à la boîte de dialogue de mappage des voies du récepteur. Si vous avez utilisé l'ordre des voies AETR (APGD) dans l'assistant Heli, vous pourrez attribuer les voies comme suit :


| ...  | ... |
| ------------- | ------------- |
| Throttle  | ch1 |
| Aileron  | ch2 |
| Elevator  | ch3 |
| Rudder  | ch4 |
| Gyro  | ch5 |
| Pitch  | ch6 |
| Bank  | ch7 |
| Rescue/Stabi  | ch8 |


L'ordre des voies ci-dessus est dû au fait que l'unité Spirit fait des hypothèses sur la position des voies dans le flux de données SBUS.

#### Limites de canal
Reportez-vous à l'onglet Diagnostic du logiciel Spirit Settings.

Pour le bon fonctionnement de l'unité FBL, les limites des voies radio doivent être calibrées et les centres vérifiés.

À la radio, assurez-vous que tous les subtrims et trims sont remis à zéro. Réglez votre pas collectif sur la position du stick central pour donner une sortie de 1500uS dans l'écran de sortie. Mettez maintenant l'unité FBL sous tension et vérifiez que les voies des ailerons, de la profondeur, du tangage et de la dérive de direction sont centrés à 0 % dans l'onglet Diagnostic. L'unité FBL détecte automatiquement la position neutre lors de chaque initialisation.

Déplacez les commandes jusqu'à leurs limites et ajustez les paramètres de projection minimale et maximale correspondants dans la page Sorties pour chaque canal afin d'obtenir une lecture de +100 % et 100 % dans l'onglet Diagnostics. Le sens du mouvement des barres doit également correspondre à celui des manches. N'utilisez pas les fonctions de subtrim ou de trim sur votre émetteur pour ces voies, car l'unité Spirit FBL les considérera comme une commande d'entrée.

Ajustez la valeur de décalage dans le mixage Gain gyroscopique pour vous assurer que le verrouillage de cap est atteint.

Après ces réglages, tout doit être configuré en ce qui concerne l'émetteur. Vous pouvez maintenant continuer avec le reste de la configuration FBL conformément au manuel Spirit FBL.