-- 2025-01-02 created 
-- 2025-07-30 add full comments
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("zblank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
simulator.pressKey(KEY_ENTER) -- accept checklist
--simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(1) -- open model select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(15) -- scroll to create new model
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to create not receive
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to heli
--simulator.screenshot("./screenshot1.png")
simulator.screenshot("../assets/tut-heli-eg-wiz-create-heli.png")
simulator.pressKey(KEY_ENTER)
--simulator.screenshot("../assets/tut-heli-eg-wiz-create-heli.png")
--simulator.pressKey(KEY_PAGE) -- go to next page
simulator.screenshot("../assets/tut-heli-eg-wiz-fbl.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-heli-eg-wiz-ch-reassign.png")
simulator.pressKey(KEY_PAGE) -- go to next page
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
simulator.touch(55, 452) -- ?123 to nums
simulator.touch(283, 300) --4
simulator.touch(360, 305) --5
simulator.touch(755, 301) --0
simulator.touch(63, 453) --alpha
simulator.touch(754, 303) --p
simulator.touch(281, 301) --r
simulator.touch(675, 305) --o
simulator.pressKey(KEY_RTN) -- accept name
simulator.screenshot("../assets/tut-heli-eg-wiz-name.png")
simulator.pressKey(KEY_PAGE) -- complete model creation
--
-- review mixes
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.screenshot("../assets/tut-heli-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER) -- open mixes
simulator.screenshot("../assets/tut-heli-eg-mixes.png")
simulator.turnRotaryEncoder(1) -- scroll to ail mix
simulator.screenshot("../assets/tut-heli-eg-mixes-ail.png")
--
-- now load the preconfigured heli example model
simulator.loadModel("xheli.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
--
-- review the mixes
simulator.turnRotaryEncoder(4) -- scroll to mixes
--simulator.screenshot("../assets/tut-heli-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-final.png")
simulator.turnRotaryEncoder(5) -- scroll to pitch
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-pitch.png")
simulator.pressKey(KEY_RTN) -- back to mixes list
simulator.turnRotaryEncoder(1) -- scroll to bank mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-bank.png")
simulator.pressKey(KEY_RTN) -- back to mixes list
simulator.turnRotaryEncoder(1) -- scroll to gain mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-gyro-gain.png")
simulator.pressKey(KEY_RTN) -- back to mixes list
simulator.pressKey(KEY_RTN) -- deselect mix
simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu
simulator.turnRotaryEncoder(-1) -- scroll back to flight modes
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to fm1
simulator.screenshot("../assets/tut-heli-eg-flight-modes.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to model menu
--simulator.turnRotaryEncoder(1)
--
-- now do the curves
simulator.pressKey(KEY_PAGE) -- next page
simulator.turnRotaryEncoder(4) -- scroll to curves
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to first curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-normal.png")
simulator.turnRotaryEncoder(10) -- scroll to points
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll down
simulator.screenshot("../assets/tut-heli-eg-curves-normal2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to curves
simulator.turnRotaryEncoder(1) -- scroll to 2nd curve 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-iup1.png")
simulator.turnRotaryEncoder(10) -- scroll to points
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll down
simulator.screenshot("../assets/tut-heli-eg-curves-iup1-2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to curves
simulator.turnRotaryEncoder(1) -- scroll to 3rd curve 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-iup2.png")
simulator.turnRotaryEncoder(10) -- scroll to points
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll down
simulator.screenshot("../assets/tut-heli-eg-curves-iup2-2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE) -- back to first model menu page
simulator.turnRotaryEncoder(3) -- scroll from model select to mixes
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to thr mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to thr cut
simulator.pressKey(KEY_ENTER) -- open thr cut meanu
simulator.turnRotaryEncoder(4)
simulator.turnRotaryEncoder(-3) -- scroll to make thr cut detail visible
simulator.screenshot("../assets/tut-heli-eg-mixes-thr-cut.png")
simulator.turnRotaryEncoder(17) -- scroll to end of thr mix
simulator.screenshot("../assets/tut-heli-eg-mixes-thr-curves.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)


simulator.pressKey(KEY_ENTER, 1)