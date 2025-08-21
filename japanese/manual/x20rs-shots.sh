#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20RS/simulator.exe" --read-only --no-audio --radio-settings ./x20rs-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20rs.lua

