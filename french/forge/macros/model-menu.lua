dofile("common.lua")

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_MDL) -- Model page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.screenshot("../assets/model-icon-modelselect.png")

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-icon-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-edit.png")
simulator.pressKey(KEY_RTN)

