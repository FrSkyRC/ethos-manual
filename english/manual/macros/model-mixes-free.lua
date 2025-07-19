-- 2025-07-15 adapt macro to new Ethos 1.7 source select

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
--[[ old ail selection 
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
--]]
simulator.pressKey(KEY_ENTER) -- edit source
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER) -- select analogs
simulator.turnRotaryEncoder(3) -- scroll to ail
simulator.pressKey(KEY_ENTER) -- select ail
simulator.screenshot("../assets/model-mix-free-source-ail.png")

simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mix-free-actions-weight.png")
-- Direction section
simulator.pressKey(KEY_ENTER) -- edit weight
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- select edit
simulator.turnRotaryEncoder(4) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- open add 
simulator.pressKey(KEY_ENTER) -- open active cond
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-mix-free-actions-direction-select.png")
simulator.pressKey(KEY_ENTER) -- confirm direction
--simulator.turnRotaryEncoder(2)
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(0)
simulator.screenshot("../assets/model-mix-free-actions-directions.png")
simulator.turnRotaryEncoder(2) -- scroll to Top
simulator.pressKey(KEY_ENTER) -- confirm
--simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- edit weight
simulator.touch(391, 444) -- select 10% step
simulator.turnRotaryEncoder(-3) -- reduce to 70%
simulator.pressKey(KEY_RTN) -- confirm
simulator.screenshot("../assets/model-mix-free-actions-directions-top.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-directions-summary.png")
-- end of directions section

simulator.pressKey(KEY_ENTER) -- bring up actions
simulator.turnRotaryEncoder(1) -- scroll to edit 
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(4) -- scroll to 'delete line'
simulator.pressKey(KEY_ENTER) -- delete direction line
simulator.pressKey(KEY_ENTER) -- confirm
simulator.pressKey(KEY_RTN) 
simulator.pressKey(KEY_RTN) -- exit edit mix action
-- simulator.screenshot("./screenshot5.png") -- confirm we are back at weight
-- end of Direction section
-- start of Weight section
simulator.pressKey(KEY_ENTER) -- open actions
simulator.turnRotaryEncoder(1) -- scroll to edit select
simulator.screenshot("../assets/model-mix-free-actions-weight-edit-select.png")
simulator.pressKey(KEY_ENTER) -- enter edit mode
simulator.turnRotaryEncoder(1) -- scroll to active condition
simulator.screenshot("../assets/model-mix-free-actions-weight-active-condition.png")
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-mix-free-actions-weight-add-weight.png")
simulator.pressKey(KEY_ENTER) -- open add new weight
simulator.pressKey(KEY_ENTER) -- open active cond
--[[
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
]]--
--simulator.pressKey(KEY_ENTER) -- open action dialog
--simulator.turnRotaryEncoder(1) -- scroll to edit
--simulator.pressKey(KEY_ENTER) -- edit
--simulator.turnRotaryEncoder(4) -- scroll to add new weight
--simulator.pressKey(KEY_ENTER) -- open add weight
--simulator.pressKey(KEY_ENTER) -- open 'active condition'
simulator.turnRotaryEncoder(4) -- scroll to switches 
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(1) -- scroll to SA-
simulator.screenshot("../assets/model-mix-free-actions-weight-edit-select-SA.png")
simulator.pressKey(KEY_ENTER) -- select SA-
simulator.turnRotaryEncoder(1) -- scroll to weigth
simulator.pressKey(KEY_ENTER) --open weight
simulator.touch(394, 453) -- select 10%
simulator.turnRotaryEncoder(-3) -- reduce to 70%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- open add weight
simulator.pressKey(KEY_ENTER) -- open 'active cond'
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- open weight
simulator.touch(384, 444) -- select 10%
simulator.turnRotaryEncoder(-5) -- reduce to 50%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("../assets/model-mix-free-actions-weight-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- exit 
simulator.screenshot("../assets/model-mix-free-actions-weight-summary.png")
-- end of weight action
-- start of curve section
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
--[[ 
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
]]--
simulator.turnRotaryEncoder(1) -- down to add a new curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(1) --scroll to SA-
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to curve
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to expo value
simulator.pressKey(KEY_ENTER) -- select
simulator.touch(392, 451) -- change to 10%
simulator.turnRotaryEncoder(4) -- 40%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to add new curve
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
--simulator.pressKey(KEY_RTN) 
--simulator.turnRotaryEncoder(-1)
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to curve type
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- confirm expo
simulator.turnRotaryEncoder(1) -- scroll to expo value
simulator.pressKey(KEY_ENTER) --open
simulator.touch(391, 443) -- select 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-edit-summary.png")
-- now move the curve above the weight
simulator.pressKey(KEY_ENTER) -- open edit dialog
simulator.turnRotaryEncoder(4) -- scroll to move cmd
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-select-move-option.png")
simulator.pressKey(KEY_ENTER) -- select move
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-select-move.png")
simulator.turnRotaryEncoder(-1) -- move up 1
simulator.pressKey(KEY_ENTER) -- finish move
simulator.screenshot("../assets/model-mix-free-actions-curve-expo-edit-summary-moved.png")

-- end of curve action
-- start of diff action
simulator.turnRotaryEncoder(2) -- scroll to add new action 
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
simulator.pressKey(KEY_ENTER, 1) -- long press for options
simulator.turnRotaryEncoder(3) -- scroll to use a source
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source.png")
simulator.pressKey(KEY_ENTER) -- confirm use a source
--[[
simulator.pressKey(KEY_ENTER) -- 
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
]]--
--simulator.pressKey(KEY_ENTER,1)
--simulator.turnRotaryEncoder(3) -- scroll to Use a source
--simulator.pressKey(KEY_ENTER) -- confirm
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(5) -- scroll to trim
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(2) -- scroll to thr trim
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source-thr-trim.png")
simulator.pressKey(KEY_ENTER, 1) -- long press for options
simulator.turnRotaryEncoder(4) -- scroll to options
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(2) -- scroll to full range
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("../assets/model-mix-free-actions-offset-use-source-thr-trim-full-range.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
-- simulator.screenshot("../assets/model-mix-free-actions-offset-use-source-thr-trim-summary.png")


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
-- add actions move section to put slow first
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to free mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) -- scroll to slow
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to move cmd option
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mix-free-actions-slow-move.png")
simulator.turnRotaryEncoder(-4) -- move up 4
simulator.pressKey(KEY_ENTER) -- set slow at top
--simulator.turnRotaryEncoder(2) -- scroll to curve
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(4) -- select move cmd option
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(-1) -- move up 1
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(4)
--simulator.screenshot("./screenshot3.png")
--simulator.turnRotaryEncoder(-5)
simulator.screenshot("../assets/model-mix-free-actions-slow-at-top.png")
simulator.sleep(1) -- wait for screen to be painted
simulator.pressKey(KEY_RTN, 1)
