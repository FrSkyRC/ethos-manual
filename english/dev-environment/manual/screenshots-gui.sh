#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/system-menu.lua

"${ETHOS}/X20PRO/simulator.exe" --read-only --no-audio --radio-settings ./x20pro-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20pro.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/mainview.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/user-interface.lua


#"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-menu.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-select.lua
cp models/glider/magnus.bin models
rm -r models/airplane
rm -r models/glider
rm -r models/heli
rm -r models/multirotor

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-edit.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-fm.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-mixes.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-mixes-free.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --audio-directory ./sd/audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-timers.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-trims.lua

"${ETHOS}/X18S/simulator.exe" --read-only --no-audio --radio-settings ./x18s-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x18s.lua


# toolbars must be rub last because it generates a Lua error
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/toolbars.lua
