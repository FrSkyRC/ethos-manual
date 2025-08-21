#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/how-to-low-batt.lua

