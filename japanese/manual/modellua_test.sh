#!/bin/bash

ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'

# These scripts only needed for this macro
cp -r 'macro_support/scripts/lua task example' scripts
cp -r 'macro_support/scripts/source example' scripts
cp -r 'macro_support/scripts/demo source' scripts
"${ETHOS}/X20S/simulator.exe"   --read-only --no-audio --documents-directory ./sd/documents --radio-settings ./x20s-en.bin   --sd-directory ./sd --flash-directory ./flash --exec ./macros/model-lua.lua
# Remove the scripts again so the LUA icon only appears in this macro
# rm -r 'scripts/lua task example'
# rm -r 'scripts/source example'
# rm -r 'scripts/demo source'
