-- 2025-04-07 due to new thr mix interlock must set thr to -100 first, then to mid
-- 2025-07-15 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 add missing comments

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
simulator.screenshot("../assets/model-icon-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to ail mix
simulator.screenshot("../assets/model-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.screenshot("../assets/model-mixes-ail-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-ail.png")
simulator.turnRotaryEncoder(4) -- curve select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- expo value
simulator.pressKey(KEY_ENTER) -- edit expo
simulator.touch(393, 448) -- select 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-ail-expo.png")
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to weight
simulator.screenshot("../assets/model-mixes-ail-weight.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER, 0.6) -- long press diff source
simulator.turnRotaryEncoder(3) -- scroll to use a source
simulator.pressKey(KEY_ENTER) -- select 

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to slider right
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-ail-diff.png")
simulator.turnRotaryEncoder(4) -- scroll to bottom
simulator.turnRotaryEncoder(-2) -- move cursor back for screenshot
simulator.screenshot("../assets/model-mixes-ail-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mixes list

simulator.setAnalog(1, 0) -- set thr to half way
simulator.turnRotaryEncoder(2) -- scroll to thr mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- open
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.screenshot("../assets/model-mixes-thr.png")

simulator.turnRotaryEncoder(1) -- scroll to input
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT open options
simulator.screenshot("../assets/model-mixes-thr-options.png")
simulator.pressKey(KEY_RTN) -- back to mix


simulator.turnRotaryEncoder(1) -- scroll to trim
simulator.pressKey(KEY_ENTER) -- open trim menu
simulator.screenshot("../assets/model-mixes-thr-trim-menu.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to low pos trim
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/model-mixes-thr-trim-low-position.png")
simulator.pressKey(KEY_ENTER) -- disable 
simulator.turnRotaryEncoder(1) -- scroll to thr cut
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(5) -- scroll down
simulator.turnRotaryEncoder(-5) -- scroll back for screenshot
simulator.screenshot("../assets/model-mixes-thr-cut.png")
simulator.turnRotaryEncoder(5) -- scroll to thr hold
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll down
simulator.turnRotaryEncoder(-5) -- scroll back for screenshot
simulator.screenshot("../assets/model-mixes-thr-hold.png")
simulator.turnRotaryEncoder(7) -- scroll to end
simulator.screenshot("../assets/model-mixes-thr-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_MDL)
