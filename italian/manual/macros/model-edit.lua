-- 2025-08-14 add S.Port connector select options, add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have name Extra
simulator.loadModel("fwexample.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(2) -- scroll to model edit
simulator.screenshot("../assets/model-icon-editmodel.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-editmodel.png")
simulator.turnRotaryEncoder(3) -- scroll to model type
simulator.pressKey(KEY_ENTER) -- open model typ eoptions
simulator.screenshot("../assets/model-edit-modeltype.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(13) -- scroll to end to move page
simulator.turnRotaryEncoder(-5) -- scroll back to analog filter
simulator.screenshot("../assets/model-edit-analog-filter.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-edit-analog-filter-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(1) -- scroll to fn sw's
simulator.screenshot("../assets/model-edit-fn-switches.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-edit-fn-switches-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(2) -- scroll to SPort conn
simulator.screenshot("../assets/model-edit-sport.png")
simulator.pressKey(KEY_ENTER) -- open SPort conn options
simulator.screenshot("../assets/model-model-edit-sport-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(1) -- scroll to model runtime
simulator.screenshot("../assets/model-edit-model-runtime.png")
simulator.turnRotaryEncoder(1) -- scroll to reset all mixes
simulator.screenshot("../assets/model-edit-model-reset_all_mixes.png")
-- simulator.turnRotaryEncoder(1)
-- simulator.screenshot("./screenshot10.png")
simulator.pressKey(KEY_RTN, 1) -- return home
