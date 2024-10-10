dofile("common.lua")

simulator.loadModel("topbar.bin")
simulator.pressKey(KEY_ENTER)
simulator.connectUsb()
simulator.pressKey(KEY_RTN) -- we cancel the USB popup without choosing anything
simulator.screenshot("../assets/topbar.png", {x=0, y=0, w=800, h=90}) -- Top bar
simulator.screenshot("../assets/bottombar.png", {x=0, y=410, w=800, h=70})
simulator.touch(510, 33)
simulator.screenshot("../assets/system-info-errors.png")

