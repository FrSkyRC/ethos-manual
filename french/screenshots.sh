#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20S-fr.bin --exec ./macros/menus.lua
"${ETHOS}/X20S/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20S-fr.bin --exec ./macros/mainview.lua
"${ETHOS}/X20S/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20S-fr.bin --exec ./macros/keyboard.lua
"${ETHOS}/X20S/simulator.exe" --read-only --no-audio --no-gui --radio-settings ./x20S-fr.bin --exec ./macros/error.lua
