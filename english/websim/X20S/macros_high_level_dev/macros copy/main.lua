-- 2025-10-04 create for web sim
-- 2025-10-22 move the delete folder lines into the low level model-select.lua for ease of other langauges support
-- 2026-04-19 revert to trainer, remove links

--
-- high level macros for X20S
--
-- models
dofile("/macros/model-select.lua")
dofile("/macros/model-edit.lua")
dofile("/macros/model-fm.lua")
dofile("/macros/model-mixes.lua")
dofile("/macros/model-mixes-free.lua")
dofile("/macros/model-mix-eg.lua")
dofile("/macros/model-outputs.lua")
dofile("/macros/model-chview.lua")
--dofile("/macros/model-timers.lua")
dofile("/macros/model-trims.lua")
-- dofile("/macros/model-rf.lua")

dofile("/macros/model-checklist.lua")
dofile("/macros/model-lsw.lua")
dofile("/macros/model-sf.lua")
dofile("/macros/model-curves.lua")
dofile("/macros/model-vars.lua")
dofile("/macros/model-trainer.lua")
--dofile("/macros/model-links.lua")
dofile("/macros/model-glasses.lua")
dofile("/macros/model-blanks.lua")
-- display
dofile("/macros/display.lua")
-- how to
dofile("/macros/basic-example.lua")
dofile("/macros/wing-example.lua")
dofile("/macros/heli-example.lua")
dofile("/macros/how-to-low-batt.lua") -- how to 1
dofile("/macros/how-to-consumption.lua") -- how to 3
dofile("/macros/how-to-butterfly.lua") -- how to 6
dofile("/macros/how-to-in-flight-comp.lua") -- how to 10
dofile("/macros/trainer-take-back.lua") -- how to 11
dofile("/macros/how-to-gear-seq.lua") -- how to 13
-- lua
-- lua is done seperately 
-- must be done last because we only want lua icon in menu once
-- os.copy('RADIO:/macros/lua-fn/scripts' 'RADIO:/scripts')
--  dofile("/macros/model-lua.lua")
-- system
dofile("/macros/system-menu.lua")
-- ui
dofile("/macros/user-interface.lua")
dofile("/macros/mainview.lua")
-- this must be last due to the Lock SF in topbar.bin
dofile("/macros/telemetry.lua")
dofile("/macros/model-timers.lua") -- do at end because of long counting
dofile("/macros/toolbars.lua")
