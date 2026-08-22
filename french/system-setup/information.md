---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Informations

![Informations système](../screenshots/system-info.png)

Détails du firmware de la radio, type de manches installés, informations sur les modules RF interne/externe, informations sur le récepteur appairé, durée d'utilisation de la radio, journaux d'erreurs et réinitialisation des paramètres d'usine.

## Informations sur la radio

- **Numéro de série** : le numéro de série de la radio.
- **Firmware** : version d'Ethos et type de radio (par exemple X20).
- **Version firmware** : variante de compilation, par exemple FCC, LBT ou Flex.
- **Date** : date et heure de la version du firmware.
- **RAM disponible** : mémoire RAM système libre, utile pour repérer un
  script Lua défaillant. Également disponible comme [source](../getting-started/user-interface-and-navigation.md#choosing-a-source)
  système, afin de pouvoir être affichée dans un widget.
- **Manches** : la version des capteurs à effet Hall des manches installés
  (« ADC » pour les manches analogiques).
- **Module interne** : versions du matériel et du firmware du module RF
  interne.
- **Récepteur** : les détails du récepteur actuellement appairé, affichés
  après le module interne. Si un récepteur redondant est lié au même
  emplacement que le récepteur principal, les détails des deux récepteurs
  s'affichent alternativement à l'écran (par exemple un Archer SR10 Pro et
  son R9MM-OTA redondant sous « Receiver1 »).
- **Module externe** : détails du matériel et du firmware de tout module RF
  FrSky externe installé utilisant le protocole ACCESS. Les multimodules
  (Multi-protocol) ne sont pas affichés ici.

![Informations X20 Pro](../screenshots/system-info-x20pro.png)

## Utilisation radio

![Utilisation radio](../screenshots/system-info-radio-runtime.png)

Comptabilise la durée totale d'utilisation de l'émetteur. **Réinit.** la remet à zéro.

## Erreurs

![Erreurs](../screenshots/system-info-errors.png)

Lorsque Ethos détecte une erreur, un avertissement représenté par un
triangle rouge s'affiche dans la barre supérieure de la vue principale.
L'erreur est détaillée ici. Les erreurs peuvent être dues à :

- **Erreurs de script Lua** : un problème lié à un script Lua en cours
  d'exécution.
- **RAM backup error (erreur mémoire de sauvegarde)** : un modèle trop
  volumineux pour la mémoire de sauvegarde du modèle. Ethos a fait passer
  celle-ci de 4 Ko à 32 Ko, ce qui rend cette erreur désormais improbable,
  mais si elle survient, elle est significative : le modèle se charge plus
  lentement depuis la SD card au lieu de la mémoire de sauvegarde si le
  [mode secours](../getting-started/emergency-mode.md) est déclenché.
- **Exécution d'une version de développement / test du firmware (nightly)** :
  un rappel que ces versions ne sont pas destinées à voler.

**Réinit.** efface les erreurs enregistrées : pratique en pleine session de
débogage Lua.

## Réinitialiser paramètres usine

![Réinitialisation de la radio](../screenshots/system-info-factory-reset.png)

Permet de rétablir les paramètres d'usine de la radio entièrement depuis
l'appareil : aucune connexion à un PC n'est nécessaire.

![Confirmation de réinitialisation de la radio](../screenshots/system-info-factory-reset-confirm.png)

!!! danger
    En confirmant, la radio efface **tous** les modèles, les fichiers
    journaux, les captures d'écran, les documents, les scripts, les bitmaps
    et les paramètres de la radio. Une barre de progression suit
    l'effacement, après quoi tous les lecteurs sont démontés et la radio
    redémarre.

La page Informations des X20 Pro/R/RS affiche les informations
équivalentes pour cette famille de radios.
