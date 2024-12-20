dofile("common.lua")

simulator.loadModel("zBalance0.bin")


--simulator.adcValue(ANALOG_STICK_THROTTLE, 0)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5)
simulator.screenshot("../assets/model-icon-outputs.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-outputs.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-throttle-edit.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 443)
simulator.touch(391, 443)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-outputs-sbus-warning.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-2)
simulator.touch(37, 449)
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(8)
simulator.screenshot("../assets/model-outputs-swap-channels-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.touch(552, 258)
simulator.turnRotaryEncoder(7)
simulator.touch(499, 365)
simulator.screenshot("../assets/model-outputs-swap-channels.png")
simulator.touch(544, 319)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-outputs-reset-select.png")
simulator.turnRotaryEncoder(-2)
simulator.screenshot("../assets/model-outputs-balance-select.png")
simulator.pressKey(KEY_RTN, 1)
