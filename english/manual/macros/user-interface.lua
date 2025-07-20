--2024-12-04 change adcValue() to setAnalog()
--2025-04-07 -- select altitude instead of lipo (due to sensors changes)
--2025-07-19 adapt macro to new Ethos 1.7 source select

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.setAnalog(1, 100)
simulator.pressKey(KEY_ENTER, 0.6) -- Contextual menu
simulator.screenshot("../assets/resetmenu.png") -- Reset menu
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_MDL) -- Model page
simulator.turnRotaryEncoder(6) -- Timers icon selected
simulator.pressKey(KEY_ENTER) -- Timers page
simulator.turnRotaryEncoder(1) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Contextual menu
simulator.turnRotaryEncoder(2) -- Edit entry in menu
simulator.pressKey(KEY_ENTER) -- First timer page
simulator.turnRotaryEncoder(1) -- Cursor on "Name"
simulator.pressKey(KEY_ENTER) -- Edition of "Name"
simulator.touch(64, 407) -- Switch to lowercase
simulator.screenshot("../assets/keyboard-text-azerty.png")
simulator.touch(76, 452) -- Switch to numbers
simulator.screenshot("../assets/keyboard-text-numbers.png")
simulator.pressKey(KEY_RTN) -- leave edit mode
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the timers page
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the model page
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- Outputs
simulator.turnRotaryEncoder(1) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Contextual menu
simulator.turnRotaryEncoder(3) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Edit "Mini"
simulator.screenshot("../assets/keyboard-numbers.png")
simulator.touch(790, 452)
simulator.screenshot("../assets/keyboard-numbers-options.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/keyboard-numbers-slider.png")
simulator.touch(790, 452)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/keyboard-numbers-options-disable-slider.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(14)
simulator.turnRotaryEncoder(15) -- select altitude instead of lipo (due to sensors changes)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/keyboard-numbers-on-telemetry.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to telemetry
simulator.turnRotaryEncoder(-5) 
simulator.pressKey(KEY_ENTER) -- open mixes
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(14)
simulator.screenshot("../assets/source-with-options.png")
simulator.pressKey(KEY_ENTER, 0.6) -- long press ENT
simulator.screenshot("../assets/source-menu.png")
simulator.turnRotaryEncoder(3) -- scroll to select a source
simulator.pressKey(KEY_ENTER) --y
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.turnRotaryEncoder(2) -- scroll to analog
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) -- scroll to ail
simulator.pressKey(KEY_ENTER) --y

simulator.pressKey(KEY_ENTER, 0.6) --long pressd ENT
simulator.turnRotaryEncoder(3) -- scroll to convert to value
simulator.screenshot("../assets/source-convert-to-value.png")
simulator.turnRotaryEncoder(1) -- scroll to options
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/source-stick-options.png")
simulator.pressKey(KEY_RTN) -- exit options
--simulator.pressKey(KEY_ENTER) -- open the dialog
--[[
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- choose the switches category
simulator.turnRotaryEncoder(1) -- select the member column
simulator.pressKey(KEY_ENTER) -- member menu
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- choose SF (2pos)
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(1) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- scroll to sw SF
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(4) -- scroll to S1
--simulator.pressKey(KEY_ENTER) --y

--simulator.pressKey(KEY_RTN) -- remove selection
--simulator.pressKey(KEY_RTN) -- close the dialog
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- SF source options
simulator.screenshot("../assets/source-2pos-options.png")
simulator.pressKey(KEY_RTN) -- exit
--simulator.pressKey(KEY_ENTER) -- open the dialog
--[[
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the trim category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(2) -- scroll to trims
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to thr trim
simulator.pressKey(KEY_ENTER) --y

simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- trim source options
simulator.screenshot("../assets/source-trim-options.png")
simulator.pressKey(KEY_RTN) -- exit
--[[
simulator.pressKey(KEY_ENTER) -- open the dialog
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the vars category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(2) -- scroll to vars
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(2) -- scroll to
simulator.pressKey(KEY_ENTER) --y select var

simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- Var source options
simulator.screenshot("../assets/source-var-options.png")
simulator.pressKey(KEY_RTN) -- close the options menu
--[[
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- mixes page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- model page
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- model functions
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6) -- play audio
simulator.turnRotaryEncoder(3)
]]--
--[[
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(-3) -- scroll to LSW
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to lsw 
simulator.pressKey(KEY_ENTER) --y select LSW


simulator.pressKey(KEY_ENTER, 0.6) -- options menu
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- lsw options
simulator.screenshot("../assets/switch-options.png")
]]--
--simulator.pressKey(KEY_RTN) -- close the options menu
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to functions page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to model page
simulator.turnRotaryEncoder(7) -- scroll to logic switches
simulator.pressKey(KEY_ENTER) -- inters logiques
simulator.turnRotaryEncoder(1) -- scroll to lsw 1
simulator.pressKey(KEY_ENTER) -- Y
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- Y
simulator.turnRotaryEncoder(4) -- scroll to rssi

simulator.pressKey(KEY_ENTER, 0.6) -- edit inter logique
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- sensor options
simulator.screenshot("../assets/source-sensor-options.png")
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER) -- tick "Max"
simulator.sleep(1) -- wait for sim
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.screenshot("../assets/source-sensor-maxi.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit LSW1
simulator.turnRotaryEncoder(1) -- scroll to lsw 2
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to  edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(3) -- scroll to trigger on
simulator.pressKey(KEY_ENTER, 1)
simulator.screenshot("../assets/switch-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

