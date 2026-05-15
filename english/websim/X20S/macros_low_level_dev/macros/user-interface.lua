-- 2024-12-04 change adcValue() to setAnalog()
-- 2025-04-07 -- select altitude instead of lipo (due to sensors changes)
-- 2025-07-19 adapt macro to new Ethos 1.7 source select
-- 2025-08-04 fix switch-options.png and comments
-- 2025-12-03 fix 'use a source'
-- 2025-12-06 adapt for BT removal in Telemetry
-- 2026-04-16 adapt for ethos 26 new style
-- 2026-05-08 adapt for fn sw's added to source categories
-- 2026-05-15 remove surplus rtn statements due to bug fix

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.setAnalog(1, 100)
--
-- *** reset menu (from main page)
simulator.pressKey(KEY_ENTER, 0.6) -- Contextual menu
simulator.screenshot("/screenshots/resetmenu.png") -- Reset menu
simulator.pressKey(KEY_RTN)
--
-- *** Virtual keyboard
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
simulator.screenshot("/screenshots/keyboard-text-azerty.png")
simulator.touch(76, 452) -- Switch to numbers
simulator.screenshot("/screenshots/keyboard-text-numbers.png")
simulator.pressKey(KEY_RTN) -- leave edit mode
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the timers page
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the model page
--
-- *** Number value controls
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- Outputs
simulator.turnRotaryEncoder(1) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Contextual menu
simulator.turnRotaryEncoder(3) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Edit "Mini"
simulator.screenshot("/screenshots/keyboard-numbers.png")
simulator.touch(790, 452)
simulator.screenshot("/screenshots/keyboard-numbers-options.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/keyboard-numbers-slider.png")
simulator.touch(790, 452)
simulator.turnRotaryEncoder(4)
simulator.screenshot("/screenshots/keyboard-numbers-options-disable-slider.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--
-- numbers on telemetry 
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(14)
simulator.turnRotaryEncoder(8) -- select altitude instead of lipo (due to sensors changes)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/keyboard-numbers-on-telemetry.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to telemetry

--
-- source options in mixes
simulator.turnRotaryEncoder(-5) 
simulator.pressKey(KEY_ENTER) -- open mixes
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(14)
simulator.screenshot("/screenshots/source-with-options.png")
simulator.pressKey(KEY_ENTER, 0.6) -- long press ENT
simulator.screenshot("/screenshots/source-menu.png")
--simulator.turnRotaryEncoder(3) -- scroll to select a source
simulator.turnRotaryEncoder(4) -- scroll to select a source
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
simulator.turnRotaryEncoder(1) -- scroll to convert to value
simulator.screenshot("/screenshots/source-convert-to-value.png")
simulator.turnRotaryEncoder(1) -- scroll to options
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("/screenshots/source-stick-options.png")
simulator.pressKey(KEY_RTN) -- exit options
--simulator.pressKey(KEY_ENTER) -- open the dialog
--[[ old switch SF select
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- choose the switches category
simulator.turnRotaryEncoder(1) -- select the member column
simulator.pressKey(KEY_ENTER) -- member menu
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- choose SF (2pos)
]]--
-- new switch SF select
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(1) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- scroll to sw SF
simulator.pressKey(KEY_ENTER) --y
--
--simulator.turnRotaryEncoder(4) -- scroll to S1
--simulator.pressKey(KEY_ENTER) --y

--simulator.pressKey(KEY_RTN) -- remove selection
--simulator.pressKey(KEY_RTN) -- close the dialog
simulator.pressKey(KEY_ENTER, 0.6)
--simulator.turnRotaryEncoder(4)
simulator.turnRotaryEncoder(2) -- scroll to options
simulator.pressKey(KEY_ENTER) -- SF source options
simulator.screenshot("/screenshots/source-2pos-options.png")
simulator.pressKey(KEY_RTN) -- exit
--
-- *** Source options for trims
--
--simulator.pressKey(KEY_ENTER) -- open the dialog
--[[ olds thr trim select
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the trim category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
]]--
-- new thr trim select
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(3) -- scroll to trims
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to thr trim
simulator.pressKey(KEY_ENTER) --y
--
simulator.pressKey(KEY_ENTER, 0.6)
--simulator.turnRotaryEncoder(4)
simulator.turnRotaryEncoder(2) -- scroll to options
simulator.pressKey(KEY_ENTER) -- trim source options
simulator.screenshot("/screenshots/source-trim-options.png")
simulator.pressKey(KEY_RTN) -- exit
--
-- *** Var options
--
--[[ old var select
simulator.pressKey(KEY_ENTER) -- open the dialog
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the vars category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
]]--
-- new var select
simulator.pressKey(KEY_ENTER) -- open source select
simulator.pressKey(KEY_RTN) -- exit member select
simulator.turnRotaryEncoder(2) -- scroll to vars
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(2) -- scroll to
simulator.pressKey(KEY_ENTER) --y select var
--
simulator.pressKey(KEY_ENTER, 0.6)
--simulator.turnRotaryEncoder(4) -- scroll to options
simulator.turnRotaryEncoder(2) -- scroll to options
simulator.pressKey(KEY_ENTER) -- Var source options
simulator.screenshot("/screenshots/source-var-options.png")
simulator.pressKey(KEY_RTN) -- close the options menu
-- new fix for switch-options 
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- mixes page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- model page
simulator.turnRotaryEncoder(8) -- scroll to Special Fns
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to first sf
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(3) -- scroll to active condition
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
--simulator.turnRotaryEncoder(4)
--simulator.pressKey(KEY_ENTER) -- lsw options
simulator.screenshot("/screenshots/switch-options.png")

simulator.pressKey(KEY_RTN) -- close the options menu
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to functions page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to model page
--
-- *** Sensor options
simulator.turnRotaryEncoder(-1) -- scroll to logic switches
simulator.pressKey(KEY_ENTER) -- inters logiques
simulator.turnRotaryEncoder(1) -- scroll to lsw 1
simulator.pressKey(KEY_ENTER) -- Y
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- Y
simulator.turnRotaryEncoder(4) -- scroll to rssi

simulator.pressKey(KEY_ENTER, 0.6) -- edit inter logique
simulator.turnRotaryEncoder(1) -- scroll to min
simulator.pressKey(KEY_ENTER) -- sensor options
simulator.screenshot("/screenshots/source-sensor-options.png")
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER) -- tick "Max"
simulator.sleep(1) -- wait for sim
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.screenshot("/screenshots/source-sensor-maxi.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit LSW1
--
simulator.pressKey(KEY_RTN, 1)

