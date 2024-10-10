#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X18S/simulator.exe" --read-only --no-audio --radio-settings ./x18s-it.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x18s.lua

