dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have no free mix, this macro starts from scratch
simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-add.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mixes-library-airplane.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-add-position.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-added.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mix-free-select-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-edit.png")
simulator.turnRotaryEncoder(7) -- down to add action
simulator.screenshot("../assets/model-mix-free-add-action.png")
simulator.turnRotaryEncoder(-3) -- up to source
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-source-ail.png")
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-actions-weight.png")
-- Direction section
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-actions-direction-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0)
simulator.screenshot("../assets/model-mix-free-actions-directions.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 444)
simulator.turnRotaryEncoder(-3)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-directions-top.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-directions-summary.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
-- simulator.screenshot("./screenshot5.png") -- confirm we are back at weight
-- end of Direction section
simulator.pressKey(KEY_ENTER) 
simulator.turnRotaryEncoder(1) -- scroll to edit select
simulator.screenshot("../assets/model-mix-free-actions-weight-edit-select.png")
simulator.pressKey(KEY_ENTER) -- enter edit mode
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mix-free-actions-weight-active-condition.png")
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-mix-free-actions-weight-add-weight.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(397, 442)
simulator.turnRotaryEncoder(-3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 446)
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-weight-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-weight-summary.png")
-- end of weight action
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mix-free-actions-weight-summary-add-action.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-mix-free-action-types.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- down to curve type
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-curve-type.png")
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-actions-curve-cv1-select.png")
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- to expo value
simulator.pressKey(KEY_ENTER)
simulator.touch(394, 444) -- select 10% step
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- finish 50%

simulator.turnRotaryEncoder(1) -- down to add a new curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 448)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 441)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-edit-summary.png")
-- strat of diff action
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mix-free-actions-curve-summary-add-action.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- down to action type

simulator.turnRotaryEncoder(1) -- down to differential
simulator.screenshot("../assets/model-mix-free-actions-type-differential.png")
simulator.pressKey(KEY_ENTER) -- select diff
simulator.turnRotaryEncoder(1) -- down to value
-- simulator.screenshot("./screenshot18.png") -- diff at 0%, not neede
simulator.pressKey(KEY_ENTER) -- enter edit mode
-- simulator.turnRotaryEncoder(1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER)
simulator.touch(393, 452)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-diff-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-actions-type-offset.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 442)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 448)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-offset-edit.png")
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source-thr-trim.png")
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source-thr-trim-full-range.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-mix-free-actions-type-slow.png")
simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-mix-free-actions-slow-edit.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 451)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN) -- 2s
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(394, 448)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN) -- 2s
simulator.turnRotaryEncoder(-2)
simulator.screenshot("../assets/model-mix-free-actions-slow-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-slow-summary.png")
-- add new trim action
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/model-mix-free-actions-type-trim.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-trim-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-trim-summary.png")
simulator.pressKey(KEY_RTN, 1) -- return home