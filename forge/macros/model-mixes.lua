-- 2025-04-07 due to new thr mix interlock must set thr to -100 first, then to mid
-- 2025-07-15 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 add missing comments
-- 2025-11-26 adapt for value edit options, add sequencer mix
-- 2026-02-19 add missing RTN line 144
-- 2026-05-09 use oxalys model for thr options with ignore trainer

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- simulator.loadModel("extra.bin")
-- model must have ail mix with 3 weight rates and no expo

simulator.loadModel("rarebear.bin")

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)
simulator.setAnalog(1, -100) -- set thr to -100
simulator.setAnalog(ANALOG_LAST_SLIDER, 50)
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.screenshot("/screenshots/model-icon-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to ail mix
simulator.screenshot("/screenshots/model-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.screenshot("/screenshots/model-mixes-ail-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-mixes-ail.png")
simulator.turnRotaryEncoder(4) -- curve select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- expo value
simulator.pressKey(KEY_ENTER) -- edit expo
simulator.touch(393, 448) -- select 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-mixes-ail-expo.png")
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to weight
simulator.screenshot("/screenshots/model-mixes-ail-weight.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER, 0.6) -- long press diff source
simulator.turnRotaryEncoder(4) -- scroll to use a source
simulator.pressKey(KEY_ENTER) -- select 

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to slider right
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-mixes-ail-diff.png")
simulator.turnRotaryEncoder(4) -- scroll to bottom
simulator.turnRotaryEncoder(-2) -- move cursor back for screenshot
simulator.screenshot("/screenshots/model-mixes-ail-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mixes list

simulator.setAnalog(1, 0) -- set thr to half way
simulator.turnRotaryEncoder(2) -- scroll to thr mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- open
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.screenshot("/screenshots/model-mixes-thr.png")

simulator.turnRotaryEncoder(1) -- scroll to input
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT open options
--simulator.screenshot("/screenshots/model-mixes-thr-options.png") --see below
simulator.pressKey(KEY_RTN) -- back to mix


simulator.turnRotaryEncoder(1) -- scroll to trim
simulator.pressKey(KEY_ENTER) -- open trim menu
simulator.screenshot("/screenshots/model-mixes-thr-trim-menu.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to low pos trim
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-mixes-thr-trim-low-position.png")
simulator.pressKey(KEY_ENTER) -- disable 
simulator.turnRotaryEncoder(1) -- scroll to thr cut
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(5) -- scroll down
simulator.turnRotaryEncoder(-5) -- scroll back for screenshot
simulator.screenshot("/screenshots/model-mixes-thr-cut.png")
simulator.turnRotaryEncoder(5) -- scroll to thr hold
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll down
simulator.turnRotaryEncoder(-5) -- scroll back for screenshot
simulator.screenshot("/screenshots/model-mixes-thr-hold.png")
simulator.turnRotaryEncoder(7) -- scroll to end
simulator.screenshot("/screenshots/model-mixes-thr-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
--
-- sequencer mix
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-1) -- scroll back to '+' add button
simulator.pressKey(KEY_ENTER) -- add mix
simulator.turnRotaryEncoder(20) -- scroll to sequencer mix
simulator.screenshot("/screenshots/model-mixes-library-seq.png")
simulator.pressKey(KEY_ENTER) -- add seq mix
simulator.turnRotaryEncoder(2) -- scroll to after last pos
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.screenshot("/screenshots/model-mixes-seq.png")
simulator.turnRotaryEncoder(13) -- scroll to end of page
simulator.turnRotaryEncoder(-1) -- scroll backto output 1 menu
simulator.screenshot("/screenshots/model-mixes-seq-op1-menu.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-mixes-seq-op1-options.png")
simulator.turnRotaryEncoder(1) -- scroll to edit curve
simulator.pressKey(KEY_ENTER) -- edit curve
simulator.screenshot("/screenshots/model-mixes-seq-op1-curve.png")
--simulator.pressKey(KEY_RTN) -- exit edit
--simulator.pressKey(KEY_ENTER) -- open menu again
--simulator.turnRotaryEncoder(2) -- scroll to add backward curve
--simulator.pressKey(KEY_ENTER) -- add backward curve
--simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(4) -- scroll to point 2 Y coord
simulator.pressKey(KEY_ENTER) -- edit point
simulator.touch(388, 447) -- set to 10% steps
simulator.turnRotaryEncoder(10) -- 100%
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(4) -- scroll to point 4 Y coord
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(395, 451) -- set to 10% steps
simulator.turnRotaryEncoder(-10) -- -100%
simulator.pressKey(KEY_RTN) -- exit edit
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit edit
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(2) -- scroll to add backward curve
simulator.pressKey(KEY_ENTER) -- add
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/model-mixes-seq-op1-options-2.png")
simulator.turnRotaryEncoder(1) -- scroll to edit fwd curve
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-mixes-seq-op1-curve-fwd.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(2) -- scroll to edit bkwd curve
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-mixes-seq-op1-curve-bkwd.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
--
-- now do thr options when trainer active
simulator.loadModel("oxalys.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(3) -- scroll to thr mix
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to input
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT open options
simulator.screenshot("/screenshots/model-mixes-thr-options.png") 
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)