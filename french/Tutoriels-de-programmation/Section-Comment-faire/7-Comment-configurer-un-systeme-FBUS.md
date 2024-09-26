### 7. Comment configurer un système FBUS
Le protocole FBUS (anciennement F.Port 2.0) est le protocole mis à niveau qui intègre SBUS pour le contrôle et S.Port pour la télémétrie en une seule ligne. Ce nouveau protocole permet à un périphérique hôte de communiquer sur une ligne avec plusieurs accessoires élèves. Par exemple, les servos FBUS sont contrôlés sur une connexion en série tout en renvoyant leurs données de télémétrie d'asservissement au récepteur sur la même connexion. Tous les appareils FBUS connectés à un récepteur (hôte) peuvent être configurés sans fil à partir de la radio sur ce protocole.

Dans cet exemple, nous allons configurer 2 servos Xact pour qu'ils fonctionnent avec notre exemple d'avion à voilure fixe de base dans les tutoriels ci-dessus sur les voies d'aileron 1 et 5.

#### Étape 1 : Téléchargez la dernière version du micrologiciel
FBUS nécessite l'utilisation de la dernière version du micrologiciel pour les récepteurs et les appareils. Par exemple, le firmware des servos Xact doit être au moins v2.0.1.
Accédez à la section Téléchargement du site Web de FrSky https://www.frsky-rc.com/download/ et téléchargez les mises à jour pertinentes du récepteur et de l'appareil FBUS (tel que le servo Xact).

#### Étape 2 : Flasher le firmware
Copiez les fichiers de firmware téléchargés dans le dossier Firmware de la carte SD ou eMMC.
img

Accédez au Gestionnaire de systèmes / fichiers et faites défiler jusqu'au fichier de micrologiciel approprié. Dans l'exemple ci-dessus, nous avons choisi le fichier de mise à jour du servo Xact HV5201. La date du fichier est 202202-15, qui correspond à la version v2.0.1.

img

Branchez le câble du servo dans la connexion S.Port en haut de la radio. La laisse blanche ou jaune va sur le côté avec une encoche. Appuyez sur le nom du fichier en surbrillance et sélectionnez « Flash Périphérique externe ». Le clignotement commencera, avec un graphique à barres indiquant la progression.

#### Étape 3 : Configurer le récepteur pour FBUS
##### 3a : Configurer un récepteur SR10 Pro pour FBUS

img

Avec un SR10 Pro enregistré et lié, accédez au système RF et appuyez sur le bouton « SR10 ».

img

Appuyez sur « Options » du récepteur.

img

Faites défiler vers le bas jusqu'au paramètre « Port de télémétrie » et sélectionnez FBUS. Le port de télémétrie du récepteur fonctionnera désormais sur le protocole FBUS. Les servos Xact peuvent maintenant être connectés en série à partir de ce port FBUS. Étant donné que les servos n'ont qu'un seul connecteur, des prolongateurs multivoies F.Port 2.0 tels que le FP2CH4, le FP2CH6 ou le FP2CH8 peuvent être utilisés pour étendre le câblage FBUS.

##### 3b. Configurer un récepteur tandem TD-R18 pour FBUS

img

Avec un récepteur tandem TD-R18 enregistré et lié, accédez au système RF et appuyez sur le bouton « TD18R ».

img

Appuyez sur « Options » du récepteur.

img

Faites défiler vers le bas et appuyez sur le paramètre Pin1, puis sélectionnez FBUS comme option pour Pin1, pour modifier la connexion PWM par défaut au protocole FBUS.

img

Répétez l'opération pour la broche 5 afin de remplacer la connexion PWM par défaut par le protocole FBUS.

img

Le récepteur R18 est maintenant prêt à faire fonctionner deux servos Xact branchés sur les broches 1 et 5 via le protocole FBUS. Vous pouvez réaffecter autant de ports que nécessaire à FBUS, ce qui évite d'avoir à utiliser des prolongateurs multivoies.

#### Étape 4 : Configurer les ID physiques
Ensuite, nous devons configurer les ID physiques pour les deux servos Xact. Notez qu'ils doivent être uniques pour éviter les conflits sur le FBUS.

##### Étape 4a : Configurer l'ID physique du servo 1

img

Avec seulement le premier servo branché sur la broche 18, accédez à Télémétrie et supprimez tous les capteurs, puis découvrez à nouveau tous les capteurs. Allez ensuite dans System / Device Config / Xact.

img

Vérifiez que l'ID physique par défaut est 0C hexadécimal et que l'ID d'application est 6800 hexadécimal. Pour le premier servo, nous pouvons laisser l'ID physique et l'ID d'application aux valeurs par défaut.

##### Étape 4b : Configurer l'ID physique du servo 2

img

Pour le deuxième servo, nous devons changer l'ID physique par défaut de 0C en un emplacement inutilisé, Veuillez-vous référer au tableau d'ID physique dans la section Télémétrie. Nous choisirons l'hexadécimal 0D pour cet exemple.

Device Config ne peut se connecter qu'à un seul servo à la fois. Ainsi, avec seulement le deuxième servo branché sur la broche 17, accédez à la configuration de l'appareil / Xact et confirmez que l'ID physique est 0C hexadécimal et que l'ID d'application est 6800 hexadécimal.

Appuyez sur l'ID physique et sélectionnez 0D hex. Appuyez sur l'ID de l'application et sélectionnez 6801 hex.

img

Nous devons également attribuer le numéro de canal auquel nous voulons que ce servo réponde, dans cet exemple CH5. Faites défiler vers le bas et changez le canal en CH5.

Ensuite, faites défiler plus bas et appuyez sur le bouton « Enregistrer dans le flash ».

Quittez l'écran, sélectionnez à nouveau Device Config / Xact et confirmez que l'ID physique a été remplacé par 0D hex, l'ID d'application par 6801 hex et le canal par CH5.

#### Étape 5 : Vérifier le contrôle FBUS des servos

Les servos sont maintenant prêts à l'emploi. Branchez le servo 1 en position Pin1 sur le TD-R18 et le servo 2 en position Pin5, qui sont les voies d'aileron sur notre exemple d'avion à voilure fixe de base dans les tutoriels ci-dessus. Notez que toutes les broches du récepteur programmées en tant que FBUS transportent exactement le même signal FBUS, il s'agit simplement d'une méthode pratique de câblage de votre système afin que chaque servo et appareil FBUS ait un endroit où être branché.

Alimentez la radio et le récepteur, et vérifiez que les voies 1 et 5 font fonctionner les servos comme prévu.

#### Étape 6 : Vérifiez les données de télémétrie FBUS.
Enfin, nous pouvons configurer notre télémétrie. Une fois les deux servos branchés, accédez à Télémétrie et supprimez tous les capteurs, puis redécouvrez tous les capteurs.

img

Vous devriez maintenant voir quatre capteurs pour chaque servo comme indiqué ci-dessus, à savoir le courant d'asservissement, la tension d'asservissement, la température d'asservissement et l'état d'asservissement. L'état indique OK avec tout ce qui est normal.