---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Tester la configuration d'un récepteur redondant

Il est important de tester minutieusement la redondance avant de voler —
ce test suppose qu'un [récepteur redondant](../model-setup/rf-system.md#redundant-receivers)
est déjà configuré.

!!! note "Captures d'écran à venir"
    Cette page ne comporte pas encore de captures d'écran du simulateur — voir [Chaîne
    de production des captures d'écran](../contributing/screenshot-pipeline.md).

## A. Test en situation réelle

En supposant que vous avez votre récepteur principal sur 2,4G et le récepteur redondant
sur 900M, activez le [test de portée](../model-setup/rf-system.md#range-check) et
éloignez-vous du modèle jusqu'à ce que le 2,4G cesse de fonctionner (c'est-à-dire après
l'alerte RSSI Critical). Le récepteur redondant 900M doit alors prendre le relais.

## B. Test au banc

1. **Confirmer la configuration normale** — les deux récepteurs sont liés, les deux
   voyants verts sont allumés et vos commandes fonctionnent normalement.
2. **Lier le récepteur principal à un autre ID de modèle** — créez un modèle de
   test simple (par exemple « TestRx ») avec un ID de modèle différent, et associez-y
   votre récepteur *principal*. Revenez ensuite à votre modèle testé : la LED du
   récepteur principal doit maintenant être **rouge** (car elle est liée à un autre
   modèle), tandis que le voyant du récepteur redondant reste **vert** — et vos
   commandes doivent toujours être fonctionnelles, ce qui prouve que le récepteur
   redondant à lui seul maintient le modèle pilotable.
3. **Reliez le récepteur principal** à son ID de modèle normal. Vérifiez que les
   voyants verts des deux récepteurs sont à nouveau allumés et que vos commandes
   fonctionnent avant de considérer le test comme terminé.
