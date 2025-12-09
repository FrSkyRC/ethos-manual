-- 2025-08-11 enable task example and add comments
-- 2025-10-20 add simulator.reloadScripts() so that Lua icon loads 
--
simulator.reloadScripts() -- reload for the Lua menu
dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=12, day=8, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(8) -- scroll to lua
simulator.screenshot("/screenshots/model-icon-lua.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- enable task example
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-lua-config.png")
simulator.pressKey(KEY_RTN, 1)
