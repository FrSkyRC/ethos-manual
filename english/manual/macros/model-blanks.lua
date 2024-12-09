-- 2024-12-03 change model from zNewModel.bin to zblank.bin

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- for the blank shots

simulator.loadModel("zblank.bin")
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
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_DISP)
-- simulator.screenshot("../assets/display-home.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/display-change-source.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/display-home.png")
simulator.pressKey(KEY_RTN, 1)
