dofile("common.lua")

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(9)
simulator.screenshot("../assets/model-icon-lua.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lua-config.png")
simulator.pressKey(KEY_RTN, 1)
