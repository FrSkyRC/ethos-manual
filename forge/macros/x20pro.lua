-- 2025-08-02 -- new 1.7 source select and add comments
-- 2025-10-22 add KEY_RTN now needed line 16; change to simulator.touch(400, 269) -- add new sf button '+'

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- open System page
--
-- sys filemanager
simulator.turnRotaryEncoder(1) -- scroll to File manager
simulator.pressKey(KEY_ENTER) -- selected
simulator.screenshot("/screenshots/system-filemanager-radio.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to system menu
--
-- sys general
simulator.turnRotaryEncoder(3) -- scroll to General 
simulator.pressKey(KEY_ENTER) -- selected
simulator.turnRotaryEncoder(-14) -- scroll back to storage
simulator.screenshot("/screenshots/system-general-storage.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--
-- sys hardware
simulator.turnRotaryEncoder(2) -- scroll to Hardware 
simulator.pressKey(KEY_ENTER) -- selected
simulator.turnRotaryEncoder(1) -- scroll to hw check
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-hardware-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4) -- scroll to pots/slider settings
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) -- scroll page for screenshot
simulator.turnRotaryEncoder(-6) -- scroll back to Ext1
simulator.screenshot("/screenshots/system-hardware-pots-x20pro.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(30)
simulator.turnRotaryEncoder(-7) -- scroll back to SN
simulator.screenshot("/screenshots/system-hardware-switches-x20pro.png")
simulator.turnRotaryEncoder(8) -- scroll to haptic
simulator.pressKey(KEY_ENTER) -- open dialog
simulator.turnRotaryEncoder(1) -- scroll to stick motors
simulator.screenshot("/screenshots/system-hardware-haptic-x20pro.png")
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to adc inspector
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-hardware-adc-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to sys menu
--
-- sys info
simulator.turnRotaryEncoder(3) -- scroll to info
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-info-x20pro.png")
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
simulator.screenshot("/screenshots/model-trims-pro-t5-t6.png") -- add trim
simulator.pressKey(KEY_RTN, 1) -- home
--
-- model sf
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(4) -- scroll to sf
simulator.pressKey(KEY_ENTER)

simulator.turnRotaryEncoder(-1) -- scroll to +
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- choose "Play text"
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to enable
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
--simulator.enterText("V F R low")
simulator.enterText(translate('VFRlow'))
simulator.pressKey(KEY_RTN) -- accept name

simulator.screenshot("/screenshots/model-sf-x20pro-play-text.png")
--[[
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-sf-haptic-x20proaw.png")
]]--
simulator.pressKey(KEY_RTN, 1) -- home