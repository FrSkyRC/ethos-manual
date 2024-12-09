dofile("common.lua")

-- model must have only default FM0
simulator.loadModel("zBlank.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(11) -- to lsw
simulator.screenshot("./screenshot1.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("./screenshot2.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- to sf
simulator.screenshot("./screenshot3.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("./screenshot4.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- to curves
simulator.screenshot("./screenshot5.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("./screenshot6.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- to vars
simulator.pressKey(KEY_ENTER)
simulator.screenshot("./screenshot7.png")
simulator.pressKey(KEY_RTN, 1)
