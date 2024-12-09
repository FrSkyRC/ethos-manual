dofile("common.lua")
--simulator.setDateTime({year=2024, month=12, day=8, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(9)
simulator.screenshot("../assets/model-icon-lua.png")simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lua-config.png")
simulator.pressKey(KEY_RTN, 1)
