#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

"${ETHOS}/X20S/simulator.exe"  --radio-settings ./x20s-it.bin   --sd-directory ./sd --flash-directory ./flash
