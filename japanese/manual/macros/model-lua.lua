-- 2025-08-11 enable task example and add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=12, day=8, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(8) -- scroll to lua
simulator.screenshot("../assets/model-icon-lua.png")simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- enable task example
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lua-config.png")
simulator.pressKey(KEY_RTN, 1)
