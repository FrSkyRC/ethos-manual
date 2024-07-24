simulator.loadModel("../models/topbar.bin")
simulator.pressKey(KEY_ENTER)
simulator.connectUsb()
simulator.pressKey(KEY_RTN) -- we cancel the USB popup without choosing anything
simulator.screenshot("../.gitbook/assets/topbar.png", {x=0, y=0, w=800, h=90}) -- Top bar
simulator.screenshot("../.gitbook/assets/bottombar.png", {x=0, y=410, w=800, h=70})
