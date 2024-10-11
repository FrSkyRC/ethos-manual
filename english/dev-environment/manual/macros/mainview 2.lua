dofile("common.lua")

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.adcValue(ANALOG_STICK_THROTTLE, 100)
simulator.screenshot("../assets/mainview.png") -- Home screen
simulator.connectUsb()
simulator.screenshot("../assets/usbmenu.png") -- USB menu

