simulator.loadModel("../models/fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.adcValue(ANALOG_STICK_THROTTLE, 100)
simulator.screenshot("../.gitbook/assets/mainview.png") -- Home screen
simulator.pressKey(KEY_ENTER, 0.6) -- Contextual menu
simulator.screenshot("../.gitbook/assets/resetmenu.png") -- Reset menu
