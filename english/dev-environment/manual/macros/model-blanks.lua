dofile("common.lua")

-- for the blank shots

simulator.loadModel("zBlank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
simulator.screenshot("../assets/model-checklist-user-checklist.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)

simulator.turnRotaryEncoder(11)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-add.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-sf-add.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-icon-vars.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-vars-add.png")
-- simulator.turnRotaryEncoder(1) -- to vars
-- simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-vars-edit.png")
simulator.pressKey(KEY_RTN, 1)
