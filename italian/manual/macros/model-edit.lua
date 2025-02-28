dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have name Extra
simulator.loadModel("fwexample.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-icon-editmodel.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-editmodel.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-edit-modeltype.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(13)
simulator.turnRotaryEncoder(-5)
simulator.screenshot("../assets/model-edit-analog-filter.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-edit-analog-filter-select.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-edit-fn-switches.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-edit-fn-switches-select.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-edit-sport.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-edit-model-runtime.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-edit-model-reset_all_mixes.png")
-- simulator.turnRotaryEncoder(1)
-- simulator.screenshot("./screenshot10.png")
simulator.pressKey(KEY_RTN, 1)
