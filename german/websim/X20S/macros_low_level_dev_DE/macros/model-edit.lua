-- 2025-08-14 add S.Port connector select options, add comments
-- 2025-09-13 add model-edit-thr-deadband.png
-- 2025-09-24 convert to web sim

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have name Extra
simulator.loadModel("fwexample.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(2) -- scroll to model edit
simulator.screenshot("/screenshots/model-icon-editmodel.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-editmodel.png")
simulator.turnRotaryEncoder(3) -- scroll to model type
simulator.pressKey(KEY_ENTER) -- open model typ eoptions
simulator.screenshot("/screenshots/model-edit-modeltype.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(1) -- scroll to rx type
simulator.pressKey(KEY_ENTER) -- open rx typ eoptions
simulator.screenshot("/screenshots/model-edit-receiver-type.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(13) -- scroll to end to move page
simulator.turnRotaryEncoder(-6) -- scroll back to thr stick deadband
simulator.screenshot("/screenshots/model-edit-thr-deadband.png")
simulator.turnRotaryEncoder(1) -- scroll to analog filter
simulator.screenshot("/screenshots/model-edit-analog-filter.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-edit-analog-filter-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(1) -- scroll to fn sw's
simulator.screenshot("/screenshots/model-edit-fn-switches.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-edit-fn-switches-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(2) -- scroll to SPort conn
simulator.screenshot("/screenshots/model-edit-sport.png")
simulator.pressKey(KEY_ENTER) -- open SPort conn options
simulator.screenshot("/screenshots/model-model-edit-sport-select.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(1) -- scroll to model runtime
simulator.screenshot("/screenshots/model-edit-model-runtime.png")
simulator.turnRotaryEncoder(1) -- scroll to reset all mixes
simulator.screenshot("/screenshots/model-edit-model-reset_all_mixes.png")
-- simulator.turnRotaryEncoder(1)
-- simulator.screenshot("./screenshot10.png")
simulator.pressKey(KEY_RTN, 1) -- return home
