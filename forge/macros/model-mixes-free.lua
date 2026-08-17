-- 2025-07-15 adapt macro to new Ethos 1.7 source select
-- 2025-07-28 use new '+' add mix button, also add final screenshot showing free mix output parameters
-- 2025=11-16 add new feature to select a number as the source to a free mix
-- 2025-11-16 also adapt for 'use a source' dialog having 4 lines
-- 2025-12-04 remove set 1% steps
-- 2025-11-27 adapt for use a source options and new curve parameter order
-- 2026-07-03 add new option to create a Var in source select

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- first capture source categories and adding a var within source select
-- model must have no vars
simulator.loadModel("zblank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
--imulator.screenshot("/screenshots/model-checklist-user-checklist.png")
simulator.pressKey(KEY_ENTER) --ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER)
simulator.touch(546, 91) -- tap on '+' add mix button
simulator.turnRotaryEncoder(1) --scroll to free mix
--simulator.screenshot("/screenshots/model-mixes-library-airplane.png")
simulator.pressKey(KEY_ENTER) --add free mix
simulator.turnRotaryEncoder(2) --scroll to 'last position'
simulator.screenshot("/screenshots/model-mix-free-add-position.png")
simulator.pressKey(KEY_ENTER) --finish add free mix
simulator.pressKey(KEY_RTN) --back to mixes list
--simulator.screenshot("/screenshots/model-mix-free-added.png")
simulator.pressKey(KEY_ENTER) --open free mix
simulator.turnRotaryEncoder(1) --scroll to edit
--simulator.screenshot("/screenshots/model-mix-free-select-edit.png")
simulator.pressKey(KEY_ENTER) --enter edit
--simulator.screenshot("/screenshots/model-mix-free-edit.png")

simulator.turnRotaryEncoder(3) -- scroll to source
--simulator.screenshot("/screenshots/model-mix-free-source.png")
simulator.pressKey(KEY_ENTER) -- open source select
simulator.screenshot("/screenshots/model-mix-free-source-categories.png")
simulator.turnRotaryEncoder(-2) -- scroll back to 2nd page
simulator.screenshot("/screenshots/model-mix-free-source-categories-2.png")
simulator.turnRotaryEncoder(-3) -- scroll back to Vars
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-mix-free-source-categories-create-var.png")
simulator.pressKey(KEY_RTN) 
simulator.pressKey(KEY_RTN, 1) -- home

-- model must have no free mix, this macro starts from scratch
simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) --acknowledge alert
simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(4) --scroll to mixes
simulator.pressKey(KEY_ENTER) --open mixes menu
simulator.touch(546, 91) -- tap on '+' add mix button
simulator.turnRotaryEncoder(1) --scroll to free mix
simulator.screenshot("/screenshots/model-mixes-library-airplane.png")
simulator.pressKey(KEY_ENTER) --add free mix
simulator.turnRotaryEncoder(2) --scroll to 'last position'
simulator.screenshot("/screenshots/model-mix-free-add-position.png")
simulator.pressKey(KEY_ENTER) --finish add free mix
simulator.pressKey(KEY_RTN) --back to mixes list
simulator.screenshot("/screenshots/model-mix-free-added.png")
simulator.pressKey(KEY_ENTER) --open free mix
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.screenshot("/screenshots/model-mix-free-select-edit.png")
simulator.pressKey(KEY_ENTER) --enter edit
simulator.screenshot("/screenshots/model-mix-free-edit.png")
--

simulator.turnRotaryEncoder(4) -- scroll to source
simulator.screenshot("/screenshots/model-mix-free-source.png")
simulator.pressKey(KEY_ENTER, 0.6) -- open options
simulator.turnRotaryEncoder(1) -- scroll to convert to value
simulator.screenshot("/screenshots/model-mix-free-source-convert-to-value.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-mix-free-source-as-value.png")
simulator.pressKey(KEY_ENTER, 0.6) -- open options
simulator.turnRotaryEncoder(4) -- scroll to use a source
simulator.screenshot("/screenshots/model-mix-free-use-a-source.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- open source select
simulator.screenshot("/screenshots/model-mix-free-source-categories.png")
simulator.turnRotaryEncoder(-2)
simulator.screenshot("/screenshots/model-mix-free-source-categories-2.png")
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER) -- open analogs cat
simulator.turnRotaryEncoder(3) -- scroll to aileron
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-mix-free-source-ail.png")
simulator.turnRotaryEncoder(3) -- scroll to add action
simulator.screenshot("/screenshots/model-mix-free-add-action.png")



simulator.turnRotaryEncoder(-1) --scroll to weight action
simulator.screenshot("/screenshots/model-mix-free-actions-weight.png")
--
-- Direction section
simulator.pressKey(KEY_ENTER) -- open weight action
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- select edit
simulator.turnRotaryEncoder(4) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- open add 
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(3) --scroll to 'direction'
simulator.screenshot("/screenshots/model-mix-free-actions-direction-select.png")
simulator.pressKey(KEY_ENTER) -- confirm direction
simulator.screenshot("/screenshots/model-mix-free-actions-directions.png")
simulator.turnRotaryEncoder(2) -- scroll to Top
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- edit weight
simulator.touch(391, 444) -- select 10% step
simulator.turnRotaryEncoder(-3) -- reduce to 70%
simulator.pressKey(KEY_RTN) -- confirm
simulator.screenshot("/screenshots/model-mix-free-actions-directions-top.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to free mix
simulator.screenshot("/screenshots/model-mix-free-actions-directions-summary.png")
-- end of direction added section
--start of direction delete
simulator.pressKey(KEY_ENTER) -- bring up actions
simulator.turnRotaryEncoder(1) -- scroll to edit 
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(4) -- scroll to 'delete line'
simulator.pressKey(KEY_ENTER) -- delete direction line
simulator.pressKey(KEY_ENTER) -- confirm
simulator.pressKey(KEY_RTN) 
simulator.pressKey(KEY_RTN) -- exit edit mix action
-- end of Direction section
-- start of Weight section
simulator.pressKey(KEY_ENTER) -- open actions
simulator.turnRotaryEncoder(1) -- scroll to edit select
simulator.screenshot("/screenshots/model-mix-free-actions-weight-edit-select.png")
simulator.pressKey(KEY_ENTER) -- enter edit mode
simulator.turnRotaryEncoder(1) -- scroll to active condition
simulator.screenshot("/screenshots/model-mix-free-actions-weight-active-condition.png")
simulator.turnRotaryEncoder(3) --scroll to 'add new weight'
simulator.screenshot("/screenshots/model-mix-free-actions-weight-add-weight.png")
simulator.pressKey(KEY_ENTER) -- open add new weight
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(4) -- scroll to switches 
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(1) -- scroll to SA-
simulator.screenshot("/screenshots/model-mix-free-actions-weight-edit-select-SA.png")
simulator.pressKey(KEY_ENTER) -- select SA-
--end select
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) --open weight
simulator.touch(394, 453) -- select 10% steps
simulator.turnRotaryEncoder(-3) -- reduce to 70%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- open add weight
simulator.pressKey(KEY_ENTER) -- open 'active cond'
--select sw SA down
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- confirm
--end select
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- open weight
simulator.touch(384, 444) -- select 10%
simulator.turnRotaryEncoder(-5) -- reduce to 50%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("/screenshots/model-mix-free-actions-weight-edit.png")
simulator.pressKey(KEY_RTN) --exit action
simulator.pressKey(KEY_RTN) -- exit back to free mix
simulator.screenshot("/screenshots/model-mix-free-actions-weight-summary.png")
-- end of weight action
-- start of curve section
simulator.turnRotaryEncoder(1) --scroll to add new action
simulator.screenshot("/screenshots/model-mix-free-actions-weight-summary-add-action.png")
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to action type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) --scroll back to curve action 
simulator.screenshot("/screenshots/model-mix-free-action-types.png")
simulator.pressKey(KEY_ENTER) --y add curve action
simulator.turnRotaryEncoder(1) -- down to curve type
simulator.pressKey(KEY_ENTER) --open curve type
simulator.screenshot("/screenshots/model-mix-free-actions-curve-type.png")
simulator.turnRotaryEncoder(2) --scroll to cv1 for screenshot only
simulator.screenshot("/screenshots/model-mix-free-actions-curve-cv1-select.png")
simulator.turnRotaryEncoder(-1) --scroll back to expo
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-select.png")
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- to expo value
simulator.pressKey(KEY_ENTER) --y
simulator.touch(394, 444) -- select 10% step
simulator.turnRotaryEncoder(5) --50%
simulator.pressKey(KEY_ENTER) -- finish 50%
simulator.turnRotaryEncoder(1) -- down to add a new curve action
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- open active cond
--select sw SA- as active cond
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(1) --scroll to SA-
simulator.pressKey(KEY_ENTER) -- select
--end select 
simulator.turnRotaryEncoder(1) -- scroll to curve
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to expo value
simulator.pressKey(KEY_ENTER) -- select
simulator.touch(392, 451) -- change to 10%
simulator.turnRotaryEncoder(4) -- 40%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(1) -- scroll to add new curve action
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- open active cond
--select SA down as active cond
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- confirm
--end select
simulator.turnRotaryEncoder(1) -- scroll to curve type
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- confirm expo
simulator.turnRotaryEncoder(1) -- scroll to expo value
simulator.pressKey(KEY_ENTER) --open
simulator.touch(391, 443) -- select 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-edit.png")
simulator.pressKey(KEY_RTN) --exit curve cond
simulator.pressKey(KEY_RTN) --back to free mix
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-edit-summary.png")
-- now move the curve above the weight
simulator.pressKey(KEY_ENTER) -- open edit dialog
simulator.turnRotaryEncoder(4) -- scroll to move cmd
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-select-move-option.png")
simulator.pressKey(KEY_ENTER) -- select move
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-select-move.png")
simulator.turnRotaryEncoder(-1) -- move up 1
simulator.pressKey(KEY_ENTER) -- finish move
simulator.screenshot("/screenshots/model-mix-free-actions-curve-expo-edit-summary-moved.png")

-- end of curve action
-- start of diff action
simulator.turnRotaryEncoder(2) -- scroll to add new action 
simulator.screenshot("/screenshots/model-mix-free-actions-curve-summary-add-action.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- down to action type

simulator.turnRotaryEncoder(1) -- down to differential
simulator.screenshot("/screenshots/model-mix-free-actions-type-differential.png")
simulator.pressKey(KEY_ENTER) -- select diff
simulator.turnRotaryEncoder(1) -- down to value
simulator.pressKey(KEY_ENTER) -- enter edit mode
simulator.touch(393, 452) --set 10% steps
simulator.turnRotaryEncoder(5) --50%
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("/screenshots/model-mix-free-actions-diff-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to free mix
simulator.turnRotaryEncoder(1) --scroll to add action
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) --scroll to offset
simulator.screenshot("/screenshots/model-mix-free-actions-type-offset.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) --scroll to offset active
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 442) --set 10% steps
simulator.turnRotaryEncoder(4) --40%
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) --scroll to offset inactive
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 448) --set 10% steps
simulator.turnRotaryEncoder(4) --40%
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-mix-free-actions-offset-edit.png")
simulator.turnRotaryEncoder(-1) --scroll back to offset active
simulator.pressKey(KEY_ENTER, 1) -- long press for options
simulator.turnRotaryEncoder(4) -- scroll to use a source
simulator.screenshot("/screenshots/model-mix-free-actions-offset-use-source.png")
simulator.pressKey(KEY_ENTER) -- confirm use a source
--select thr trim
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(6) -- scroll to trim
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(2) -- scroll to thr trim
simulator.pressKey(KEY_ENTER) -- confirm
--
simulator.screenshot("/screenshots/model-mix-free-actions-offset-use-source-thr-trim.png")
simulator.pressKey(KEY_ENTER, 1) -- long press for options
simulator.turnRotaryEncoder(4) -- scroll to options
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(2) -- scroll to full range
simulator.pressKey(KEY_ENTER) -- confirm
simulator.screenshot("/screenshots/model-mix-free-actions-offset-use-source-thr-trim-full-range.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to free mix


simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(2) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(3) -- scroll to slow
simulator.screenshot("/screenshots/model-mix-free-actions-type-slow.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to up value
simulator.pressKey(KEY_ENTER)
--simulator.touch(395, 451) -- set 1% steps
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN) -- 2s
simulator.turnRotaryEncoder(1) -- scroll to down value
simulator.pressKey(KEY_ENTER)
--simulator.touch(394, 448) -- set 1% steps
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN) -- 2s
simulator.turnRotaryEncoder(-2)
simulator.screenshot("/screenshots/model-mix-free-actions-slow-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to free mix
simulator.screenshot("/screenshots/model-mix-free-actions-slow-summary.png")
-- add new trim action
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to trim
simulator.screenshot("/screenshots/model-mix-free-actions-type-trim.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) --scroll to rud
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-mix-free-actions-trim-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to free mix
simulator.screenshot("/screenshots/model-mix-free-actions-trim-summary.png")
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
simulator.screenshot("/screenshots/model-mix-free-actions-slow-move.png")
simulator.turnRotaryEncoder(-4) -- move up 4
simulator.pressKey(KEY_ENTER) -- set slow at top
simulator.sleep(1) -- wait for screen to be painted
simulator.screenshot("/screenshots/model-mix-free-actions-slow-at-top.png")
--now show bottom of page incl output
simulator.turnRotaryEncoder(10) -- scroll to output
simulator.screenshot("/screenshots/model-mix-free-output.png")
simulator.pressKey(KEY_RTN, 1)
