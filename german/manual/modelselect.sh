#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-select.lua
cp models/segler/magnus.bin models
rm -r models/flugzeug
rm -r models/segler
rm -r models/heli
rm -r models/multirotor
