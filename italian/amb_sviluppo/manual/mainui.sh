#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-it.bin --exec ./macros/mainview.lua
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-it.bin --exec ./macros/user-interface.lua

