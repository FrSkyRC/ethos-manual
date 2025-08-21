-- 2025-08-14 add comments
dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")
simulator.setSwitch(0, 2)
simulator.setAnalog(ANALOG_LAST_SLIDER, 70)

simulator.sleep(1) -- wait for checklist to load
simulator.screenshot("../assets/model-checklist-at_start.png")
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(2) -- scroll to checklist
simulator.screenshot("../assets/model-icon-checklist.png")
simulator.pressKey(KEY_ENTER) -- open checklist
simulator.turnRotaryEncoder(1) -- scroll to thr
simulator.screenshot("../assets/model-checklist.png")
simulator.turnRotaryEncoder(3) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open switches
simulator.turnRotaryEncoder(-3) -- scroll back to thr
simulator.pressKey(KEY_ENTER) -- open thr options
simulator.screenshot("../assets/model-checklist-check_function.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(9) -- scroll to SE (all that fits on screen)
-- simulator.screenshot("./screenshot5.png")
simulator.screenshot("../assets/model-checklist-switches.png")
simulator.pressKey(KEY_ENTER) -- open sw options
simulator.screenshot("../assets/model-checklist-switches-options.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model menu
simulator.pressKey(KEY_ENTER) -- open checklist
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to fn sw's
simulator.pressKey(KEY_ENTER) -- open
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to fs5 (all that fits on screen)
-- simulator.screenshot("./screenshot8.png")
simulator.turnRotaryEncoder(-4) -- scroll cursor back to fs1
simulator.screenshot("../assets/model-checklist-function-switches.png")
simulator.pressKey(KEY_ENTER) -- open fs1 options
simulator.screenshot("../assets/model-checklist-function-switches-options.png")
simulator.pressKey(KEY_RTN) -- close options
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model menu
simulator.pressKey(KEY_ENTER) -- open checklist
simulator.turnRotaryEncoder(6) -- scroll to pots/sliders
simulator.pressKey(KEY_ENTER) -- open pots
simulator.turnRotaryEncoder(9) -- scroll down
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(-6) -- scroll back to s1 value
simulator.screenshot("../assets/model-checklist-pots.png")
simulator.turnRotaryEncoder(-1) -- scroll back to s1 function
simulator.pressKey(KEY_ENTER) -- open pots options
simulator.screenshot("../assets/model-checklist-pots-options.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.pressKey(KEY_RTN, 1) -- return home
