#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-it.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-select.lua
cp models/glider/magnus.bin models
rm -r models/airplane
rm -r models/glider
rm -r models/heli
rm -r models/multirotor
