dofile("common.lua")

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-filemanager-radio.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(3) -- General selected
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-13)
simulator.screenshot("../assets/system-general-storage.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(2) -- Hardware selected
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10)
simulator.turnRotaryEncoder(-6)
simulator.screenshot("../assets/system-hardware-pots-x20pro.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(30)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/system-hardware-switches-x20pro.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-haptic-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-adc-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
