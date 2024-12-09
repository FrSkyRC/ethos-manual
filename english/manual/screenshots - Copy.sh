#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/system-menu.lua
"${ETHOS}/X20PRO/simulator.exe" --read-only --no-audio --radio-settings ./x20pro-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20pro.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/mainview.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/user-interface.lua


#"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-menu.lua



# toolbars must be rub last because it generates a Lua error
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin --exec ./macros/toolbars.lua
