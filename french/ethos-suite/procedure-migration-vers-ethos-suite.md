## Procédure de migration vers Ethos Suite
1. Assurez-vous d'utiliser au moins la version 1.1.4 d'Ethos, la version minimale nécessaire pour flasher le nouveau chargeur de démarrage compatible Ethos Suite (format FRSK) à partir du gestionnaire de fichiers à la radio. Si ce n'est pas le cas, vous devrez effectuer manuellement la mise à jour vers la version 1.1.4 pour pouvoir migrer vers Ethos Suite pour les mises à jour automatisées.

2. Faites une sauvegarde de votre carte SD ou eMMC (il est conseillé de tout copier dans un dossier de votre ordinateur).

3. Téléchargez le fichier zip du dernier chargeur de démarrage de https://github.com/FrSkyRC/ETHOS-Feedback-Community/releases pour votre radio et décompressez-le. Les versions actuelles du chargeur de démarrage sont répertoriées dans un fichier appelé components.json qui répertorie tous les composants utilisés dans une version. Le fichier est publié à chaque nouvelle version du micrologiciel et peut être ouvert avec un éditeur de texte tel qu'un bloc-notes.

4. Recherchez simplement votre radio sous les rubriques « cibles », puis le numéro de version du chargeur d'amorçage correspondant sera répertorié en dessous. Vous trouverez le chargeur d'amorçage répertorié dans les actifs de la version Ethos avec ce numéro.

5. Allumez la radio en mode chargeur de démarrage (maintenez la touche Entrée enfoncée, maintenez-la enfoncée, puis appuyez sur ON) et connectez le système au PC à l'aide d'un câble USB de données.

6. Copiez le chargeur de démarrage dans un dossier de votre carte SD ou eMMC (normalement le dossier Firmware), puis éjectez les lecteurs et déconnectez la radio du PC.

7. Démarrez la radio, allez dans Système / Gestionnaire de fichiers, appuyez sur le fichier bootloader.frsk que vous venez de copier et sélectionnez l'option 'Flash bootloader'.

8. Téléchargez et installez la suite Ethos. Vous devriez maintenant être en mesure de suivre les sections ci-dessous pour mettre à jour le micrologiciel de votre radio et les fichiers Flash et carte SD ou eMMC vers les dernières versions, et utiliser les autres fonctionnalités d'Ethos Suite.

9. Veuillez noter que vous devrez peut-être renommer les bitmaps/dossier utilisateur sur la carte SD ou eMMC en bitmaps/modèles si ETHOS Suite ne le fait pas pour vous. Il s'agit du dossier dans lequel les bitmaps utilisateur sont stockés.