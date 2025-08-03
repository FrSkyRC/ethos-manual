-- 2025-08-02 -- new 1.7 source select and add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- open System page
--
-- sys filemanager
simulator.turnRotaryEncoder(1) -- scroll to File manager
simulator.pressKey(KEY_ENTER) -- selected
simulator.screenshot("../assets/system-filemanager-radio.png")
simulator.pressKey(KEY_RTN)
--
-- sys general
simulator.turnRotaryEncoder(3) -- scroll to General 
simulator.pressKey(KEY_ENTER) -- selected
simulator.turnRotaryEncoder(-13)
simulator.screenshot("../assets/system-general-storage.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--
-- sys hardware
simulator.turnRotaryEncoder(2) -- scroll to Hardware 
simulator.pressKey(KEY_ENTER) -- selected
simulator.turnRotaryEncoder(1) -- scroll to hw check
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4) -- scroll to pots/slider settings
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) -- scroll page for screenshot
simulator.turnRotaryEncoder(-6) -- scroll back to Ext1
simulator.screenshot("../assets/system-hardware-pots-x20pro.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(30)
simulator.turnRotaryEncoder(-7) -- scroll back to SN
simulator.screenshot("../assets/system-hardware-switches-x20pro.png")
simulator.turnRotaryEncoder(8) -- scroll to haptic
simulator.pressKey(KEY_ENTER) -- open dialog
simulator.turnRotaryEncoder(1) -- scroll to stick motors
simulator.screenshot("../assets/system-hardware-haptic-x20pro.png")
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to adc inspector
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-adc-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to sys menu
--
-- sys info
simulator.turnRotaryEncoder(3) -- scroll to info
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-info-x20pro.png")
-- simulator.pressKey(KEY_RTN, 1) -- home
simulator.sleep(5) -- wait fsys info
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to home
--
-- model trims
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(7) -- scroll to trims
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(31) -- scroll to move page for screenshot
simulator.turnRotaryEncoder(-6) -- scroll back to t5 heading
simulator.screenshot("../assets/model-trims-pro-t5-t6.png") -- add trim
simulator.pressKey(KEY_RTN, 1) -- home
--
-- model sf
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(4) -- scroll to sf
simulator.pressKey(KEY_ENTER)
simulator.touch(571, 91) -- add new sf button '+'
--simulator.turnRotaryEncoder(1) -- scroll to first sf
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(1) -- scroll to edit
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to play text
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to enable
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to active condition
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(4) -- scroll to logic sw's
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0) -- vfr low
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1) -- scroll to text
simulator.pressKey(KEY_ENTER)

simulator.touch(395, 401)
simulator.touch(398, 450)
simulator.touch(317, 352)
simulator.touch(402, 453)
simulator.touch(277, 302)
simulator.touch(400, 454)
simulator.touch(62, 400) -- shift
simulator.touch(713, 352) -- l
simulator.touch(674, 308) -- o
simulator.touch(125, 305) -- w
simulator.touch(738, 451) -- ENTER
--simulator.pressKey(KEY_RTN)

simulator.screenshot("../assets/model-sf-x20pro-play-text.png")
--[[
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-sf-haptic-x20proaw.png")
]]--
simulator.pressKey(KEY_RTN, 1) -- home