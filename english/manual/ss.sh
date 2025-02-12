#!/bin/bash

# note the lines with gui enabled must be left on, the sim does not run properly (it skips) if gui is turned off on these

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'


"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-butterfly.lua

"${ETHOS}/X20S/simulator.exe"   --read-only --no-gui --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-in-flight-comp.lua

