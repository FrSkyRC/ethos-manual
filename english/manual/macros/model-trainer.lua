--dofile("common.lua")
simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")


simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/model-icon-trainer.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-options.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-master.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-link-mode-options.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-link-mode-bt.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-link-mode-bt-mode.png")
simulator.pressKey(KEY_RTN)
simulator.sleep(3) -- wait for load
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-trainer-link-mode-bt-search.png")
simulator.pressKey(KEY_ENTER)
--simulator.sleep(1) -- wait for load
simulator.screenshot("../assets/model-trainer-link-mode-bt-search-waiting.png")
simulator.sleep(3) -- wait for load
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-trainer-link-mode-bt-select-device.png")
simulator.pressKey(KEY_ENTER)
simulator.sleep(3) -- wait for load
simulator.screenshot("../assets/model-trainer-link-mode-bt-device-connected.png")
simulator.pressKey(KEY_ENTER) -- accept device connected
simulator.sleep(3) -- wait for load
simulator.turnRotaryEncoder(3) -- to active cond
-- set active cindition
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- switches
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- member
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- SA down
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
-- end active cond set

--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(9)
--simulator.screenshot("./screenshot11.png") -- place holder
simulator.turnRotaryEncoder(-9)
simulator.screenshot("../assets/model-trainer-active-condition.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-trainer-slave-channels.png")
simulator.pressKey(KEY_ENTER)
simulator.sleep(3) -- wait for load
simulator.screenshot("../assets/model-trainer-slave-channel-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-slave.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-slave-link-mode.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trainer-slave-mode.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
