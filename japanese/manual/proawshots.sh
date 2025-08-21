#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20PROAW/simulator.exe" --read-only --no-audio --radio-settings ./x20proaw-en.bin --sd-directory ./sd --flash-directory ./flash --radio-directory ./sd --exec ./macros/x20proaw.lua

