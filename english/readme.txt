


To run the screenshot bash scripts for the EN manual
----------------------------------------------------
Run cmd as admin
Bash
cd /mnt/c/Users/lotharthole/manual
sh screenshots.sh -- full set
or
sh screenshots-gui.sh -- full set with gui active

or individually:
sh sysmenu.sh -- runs sysmenu.lua (uses fwexample.bin)
sh mainui.sh -- for mainviews and user interface screenshots -- runs mainview.lua and user-interface.lua (uses fwexample.bin)
sh proshots.sh -- for the x20 pro screenshots (uses oxalys.bin exclusive to pro)
sh x18

sh modelselect -- for model select section (uses rarebear.bin)
sh modeledit.sh -- for model/edit section (uses fwexample.bin) -- relies on Extra model
sh modelfm.sh -- for model/flight modes section (uses rarebear.bin)
sh modelmixes.sh -- for model/mixes first section (uses rarebear.bin)
sh modelmixesfree.sh -- for model mixes - free mix (uses rarebear.bin)
sh modeltimers.sh -- for model timers (uses rarebear.bin)
sh modeltrims.sh -- for model trims (uses blaster.bin for offset trims) 

-- To edit models: (from Bash window)
-- "C:\Program Files (x86)\FrSky\Ethos\X20S\simulator.exe" --radio-settings x20s-en.bin
-- "/mnt/c/Program Files (x86)\FrSky\Ethos\X20S\simulator.exe" --radio-settings x20s-en.bin



To run sim for manual manually to allow editing of models etc
-------------------------------------------------------------
From cmd window
Run cmd as admin
setman - to set up the folder to c:/Users/lotharthole/manual
simman - to run sim 
simmanro - to run sim in read only mode
simmanpro - for pro

Changes made to Bertrand's macros:
1. For screenshots.sh (or sysmenu, mainui, proshots individually)
Rename model to Extra in Model/edit
Rename timer 1 to BattTimer
Configure Status widget on main page 
Check system/general/vario is ON (bluetooth?)
ensure model is bound
ensure model has telemetry enabled
back in File Explorer rename file to fwexample.bin

2. For top bar screenshots 
Rename model to Extra 300 in Model/edit
Rename timer 1 to BattTimer
back in File Explorer rename file to topbar.bin

Sim options
-----------
Nightly build warning is removed, simulator can be considered as safe to fly
--no-audio
--no-gui
--read-only

--system-directory
--user-directory
--audio-directory
--documents-directory
--bitmaps-directory
--scripts-directory
--radio-settings
--exec option added to execute a lua script as a macro

C:\Users\lotharthole\AppData\Local\VirtualStore\Program Files (x86)\FrSky\Ethos\X20S\models




Changes for Bertrand
1. topbar.bin : change model name to Extra 300
2. fwexample.bin : change model name to 'Extra'
3. oxalys.bin : is a clone of fwexample.bin for X20Pro only to avoid constant conversion
4. rarebear.bin : used for Model section macros
5. weasel.bin used for model/select since not visible in select screen
 
