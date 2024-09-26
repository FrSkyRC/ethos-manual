#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-fr.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/system-menu.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-fr.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-menu.lua
"${ETHOS}/X20PRO/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20pro-fr.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20pro.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-fr.bin --exec ./macros/mainview.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-fr.bin --exec ./macros/user-interface.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --no-gui --radio-settings ./x20s-fr.bin --exec ./macros/toolbars.lua
