### Étape 7. Introduction aux modes de vol

Les modes de vol sont un excellent moyen de configurer un modèle pour différentes tâches. Par exemple, un planeur peut avoir des modes de vol pour des tâches telles que la croisière, la vitesse, le thermique, le décollage et l'atterrissage. Chaque mode de vol peut se souvenir de ses propres paramètres de trim, donc une fois que vous avez réglé l'aile pour qu'elle vole bien dans chaque mode, vous n'avez plus besoin de continuer à modifier vos assiettes pendant le vol lorsque vous changez de tâche. Le changement de mode avion devient un peu comme changer de vitesse dans une voiture. Les modes de vol sont parfois appelés « Conditions » dans d'autres firmwares.

Pour simplifier, cet exemple montre uniquement la configuration des modes de vol Normal, Volets mi-volets et Volets pleins.

Il y a 20 modes de vol, y compris le mode par défaut, disponibles pour l'utilisation. Le premier mode de vol dont la condition active est activée est le mode actif. Lorsque la condition active none est activée, le mode par défaut est actif. Cela explique pourquoi le mode par défaut n'a pas d'option de sélection de inter.

img

Pour notre exemple, nous avons configuré le mode de vol par défaut comme Normal, et ajouté deux modes de vol supplémentaires nommés Flaps Half (inter SE-mid) et Flaps Full (inter SE-Up).

img

Pour les volets, vous voudrez peut-être ralentir la transition entre les modes de vol.

img

Ensuite, nous allons dans la section Trims et changeons le manche de profondeur pour qu'il ait « Trims indépendants par mode de vol ». Cela vous permet alors d'avoir une compensation de profondeur indépendante pour les deux volets déployés. L'interrupteur de compensation de profondeur basculera automatiquement entre les réglages lorsque vous actionnerez les volets sur l'interrupteur SE.