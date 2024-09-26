### 4. Comment créer un modèle pour SR8/SR10
Les assistants utilisent l'ordre des voies tel que défini dans Système / Manches, par défaut AETR (APGD). Cependant, pour les modèles avec plus d'une surface pour les ailerons, la profondeur, la gouverne de direction, les volets, etc., l'assistant regroupera normalement ces surfaces, de sorte que par exemple, vous obtiendrez AAETR (AAPGD) si vous utilisez 2 voies d'ailerons.

Les récepteurs SRx s'attendent à ce que l'ordre des voies soit AETRA (APGDA), de sorte que l'assistant peut être invité (dans System / Manches) à garder les 'quatre premiers voies fixes' :

#### Étape 1. Confirmez l'ordre des voies par défaut
Dans System / Manches, vérifiez que l'ordre des voies par défaut est AETR (APGD).

#### Étape 2. Activer l'option « Les quatre premiers voies sont fixes »
Dans Système / Manches, activez le paramètre « Quatre premiers voies fixes ». Cela permettra de s'assurer que l'assistant ne regroupe pas les voies similaires (dans les quatre premiers) et de conserver par exemple les deux voies d'aileron ensemble.

#### Étape 3. Créer le modèle à l'aide de l'assistant
Lancez l'assistant de création d'un nouveau modèle en cliquant sur le [+] dans Modèle / Sélectionner un modèle, et indiquez à l'assistant tous les voies que vous utilisez. Les 5 premiers voies seront AETRA.

#### Notes
Veuillez noter que l'auto-vérification des récepteurs Archer est désormais effectuée via l'outil System / Device Config / SxR. Le micrologiciel du récepteur Archer doit être v2.1.10 ou supérieur.

Notez que le canal d'accélérateur 3 doit être à -100, sinon l'auto-vérification ne sera pas lancée.