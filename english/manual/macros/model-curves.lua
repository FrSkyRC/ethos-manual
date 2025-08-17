-- 2025-08-13 add comments
-- 2025-08-16 add model-curves-edit-options, remove commented out sections
-- 2025-08-17 put back attach to mix section

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have no curves 
-- then loads zCurves.bin with curves
simulator.loadModel("zBlank.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(5) -- scroll to curves
simulator.screenshot("../assets/model-icon-curves.png")
simulator.pressKey(KEY_ENTER) -- open curves, no curves yet
simulator.turnRotaryEncoder(1) -- highlight '+'
simulator.screenshot("../assets/model-curves-add.png")
simulator.pressKey(KEY_ENTER) -- add a curve
simulator.turnRotaryEncoder(1) -- highlight name
simulator.screenshot("../assets/model-curves-edit.png")
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("../assets/model-curves-type.png")
simulator.turnRotaryEncoder(2) -- scroll to 'function' 
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to function
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("../assets/model-curves-fn-types.png")
simulator.turnRotaryEncoder(1) -- scroll to x>0
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-xgt0.png")
simulator.turnRotaryEncoder(1) -- scroll to offset
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(389, 449) -- set 1% steps
simulator.touch(389, 449) -- set 10% steps
simulator.turnRotaryEncoder(2) -- 20%
simulator.screenshot("../assets/model-curves-fn-xgt0-offset.png")
simulator.turnRotaryEncoder(-2) -- back to 0%
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(-1) -- back to function
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to x<0
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-xlt0.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to |x|
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-barx.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to f>0
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-fgt0.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to f<0
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-flt0.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to |f|
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-curves-fn-barf.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) --scroll to 
simulator.pressKey(KEY_RTN) -- back to curve
simulator.turnRotaryEncoder(-1) -- back to type
simulator.pressKey(KEY_ENTER) -- open type
simulator.turnRotaryEncoder(1) -- scroll to custom
simulator.pressKey(KEY_ENTER) -- select custom
-- simulator.screenshot("../assets/model-curves-custom5.png")
-- attach curve to a mix so that Input option appears
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to curves list
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to models
simulator.turnRotaryEncoder(-9)
simulator.pressKey(KEY_ENTER) -- back to mixes
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- to elevator
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(3) -- 
simulator.pressKey(KEY_ENTER) -- select curve
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- select curve1
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to models
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER) -- go to curves
simulator.turnRotaryEncoder(1) -- scroll to first curve
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(5) -- scroll to curve typed
simulator.screenshot("../assets/model-curves-custom5.png")


simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- open points edit
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit -100 point
simulator.touch(389, 445) -- 1%
simulator.touch(386, 445) --10%
simulator.turnRotaryEncoder(-10) -- -100%
simulator.pressKey(KEY_RTN) -- back to points list
simulator.turnRotaryEncoder(1) -- scroll to -50%
simulator.pressKey(KEY_ENTER) -- edit -50%
simulator.touch(391, 449) -- 1%
simulator.touch(391, 449) -- 10%
simulator.turnRotaryEncoder(-2) -- -20%
simulator.pressKey(KEY_RTN) -- back to points list
simulator.turnRotaryEncoder(1) -- scroll to 0%
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(394, 447) -- 1%
simulator.touch(394, 447) -- 10%
simulator.turnRotaryEncoder(1) -- 10%
simulator.touch(36, 447) -- back to 1%
simulator.turnRotaryEncoder(5) -- 10 to 15%
simulator.pressKey(KEY_RTN) -- back to points list
simulator.turnRotaryEncoder(1) -- scroll to 50%
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(391, 450) -- 1%
simulator.touch(391, 448) -- 10%
simulator.turnRotaryEncoder(2) -- 20%
simulator.touch(28, 447) -- back to 1%
simulator.turnRotaryEncoder(5) -- from 20 to 25%
simulator.pressKey(KEY_RTN) -- back to points list
simulator.turnRotaryEncoder(1) -- scroll to 100%
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(389, 443) -- 1%
simulator.touch(389, 443) -- 10%
simulator.turnRotaryEncoder(1) -- 10%
simulator.touch(34, 444) -- back to 1%
simulator.turnRotaryEncoder(5) -- from 10 to 15%
simulator.pressKey(KEY_RTN) -- back to points list
simulator.screenshot("../assets/model-curves-custom5-2.png")
simulator.turnRotaryEncoder(-7) -- scroll back to offset
simulator.pressKey(KEY_ENTER) -- open
simulator.pressKey(KEY_ENTER) -- close
simulator.turnRotaryEncoder(-1) -- back to smooth
simulator.pressKey(KEY_ENTER) -- enable smooth
simulator.screenshot("../assets/model-curves-custom5-2-smooth.png")
simulator.pressKey(KEY_RTN, 1) -- return home 

simulator.loadModel("zCurves.bin")


simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(5) -- scroll to curves
simulator.pressKey(KEY_ENTER) -- open curves
simulator.turnRotaryEncoder(1) -- scroll to cv1
simulator.pressKey(KEY_ENTER) -- edopenit 
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.screenshot("../assets/model-curves-edit-options.png")
simulator.pressKey(KEY_ENTER) -- edit cv1
simulator.screenshot("../assets/model-curves-expo.png")
simulator.pressKey(KEY_RTN) -- back to curves list
simulator.turnRotaryEncoder(1) -- scroll to cv2
simulator.pressKey(KEY_ENTER) -- open cv2
simulator.turnRotaryEncoder(1) -- scroll to edit 
simulator.pressKey(KEY_ENTER) -- edit cv2
simulator.turnRotaryEncoder(10) -- scroll to points header
simulator.pressKey(KEY_ENTER) -- edit points
simulator.turnRotaryEncoder(5) -- scroll page
simulator.turnRotaryEncoder(-2) -- scroll back to point 2
simulator.screenshot("../assets/model-curves-custom-easy-off.png")
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(3) -- scroll to
-- simulator.screenshot("./screenshot3.png") -- wait for bug fix cannot scroll
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to curves list
simulator.turnRotaryEncoder(1) -- scroll to cv3
simulator.pressKey(KEY_ENTER) -- open cv3
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- edit cv3
simulator.turnRotaryEncoder(4) -- scroll to offset
simulator.screenshot("../assets/model-curves-fn-offset-var.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to curves list 
simulator.turnRotaryEncoder(1) -- scroll to cv4
simulator.pressKey(KEY_ENTER) -- open cv4
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- edit cv4
simulator.turnRotaryEncoder(10) -- scroll to points header
simulator.pressKey(KEY_ENTER) -- open
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll page
simulator.turnRotaryEncoder(-2) -- scroll back up
simulator.screenshot("../assets/model-curves-custom-with-var.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to curves list
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model menu 
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- home
