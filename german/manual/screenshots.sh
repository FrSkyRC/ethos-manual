#!/bin/bash

# note the lines with gui enabled must be left on, the sim does not run properly (it skips) if gui is turned off on these

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui  --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/system-menu.lua

"${ETHOS}/X20PRO/simulator.exe" --read-only --no-gui  --no-audio --radio-settings ./x20pro-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20pro.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui  --no-audio --radio-settings ./x20s-en.bin --exec ./macros/mainview.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/user-interface.lua


#"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui  --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-menu.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui  --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-select.lua
cp models/glider/magnus.bin models
rm -r models/flugzeug
rm -r models/segler
rm -r models/heli
rm -r models/multirotor

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-edit.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-fm.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-mixes.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-mixes-free.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-outputs.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --audio-directory ./sd/audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-timers.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-trims.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/telemetry.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-curves.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-checklist.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-blanks.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-lsw.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --audio-directory ./sd/audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-sf.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-vars.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-trainer.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-chview.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/display.lua

# These scripts only needed for the lua macro
# Copy the Lua section macros so the Lua icon appears
cp -r 'macro_support/scripts/lua task example' scripts
cp -r 'macro_support/scripts/source example' scripts
cp -r 'macro_support/scripts/demo source' scripts
"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-lua.lua
rm -r 'scripts/lua task example'
rm -r 'scripts/source example'
rm -r 'scripts/demo source'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-mix-eg.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/trainer-take-back.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/basic-example.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/wing-example.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/heli-example.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-low-batt.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-consumption.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-butterfly.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-in-flight-comp.lua

"${ETHOS}/X18S/simulator.exe" --read-only --no-gui --no-audio --radio-settings ./x18s-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x18s.lua

"${ETHOS}/X20PROAW/simulator.exe" --read-only --no-gui --no-audio --radio-settings ./x20proaw-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20proaw.lua

# toolbars must be rub last because it generates a Lua error
"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui  --no-audio --radio-settings ./x20s-en.bin --exec ./macros/toolbars.lua
