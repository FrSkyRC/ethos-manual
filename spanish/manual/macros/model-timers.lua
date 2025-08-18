-- 2024-12-03 simulator.setSwitch(0, 1) -- set switch A to mid for thr active
-- 2025-04-08  due to new thr mix interlock must set thr to -100 first, then to mid; select new audio files
-- 2025-08-14 add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

-- simulator.setSwitch(3, 2) -- set switch
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

-- simulator.setAnalog(ANALOG_LAST_SLIDER, -100)
-- simulator.sleep(1) -- wait 
simulator.setAnalog(1, -100) -- set thr to -100 - sim now requires thr to 0
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.setSwitch(0, 1) -- enable thr on swotch SA so timer 1 runs
simulator.setAnalog(1, 0) -- set thr to mid
simulator.turnRotaryEncoder(6) -- scroll to timers
simulator.screenshot("../assets/model-icon-timers.png")
simulator.pressKey(KEY_ENTER) -- open
-- simulator.setSwitch(0, 1) -- set switch A to mid for thr active
simulator.screenshot("../assets/model-timers.png")
simulator.turnRotaryEncoder(1) -- scroll to timer 1
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-timers-action-select.png")
simulator.turnRotaryEncoder(2) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit name
simulator.touch(479, 400) -- B
simulator.touch(59, 397) -- shift
simulator.touch(78, 357) -- a
simulator.touch(358, 306) -- t
simulator.touch(359, 305) -- t
simulator.touch(74, 404) -- shift
simulator.touch(361, 304) -- T
simulator.touch(70, 396) -- shift
simulator.touch(602, 299) -- i
simulator.touch(632, 397) -- m
simulator.touch(199, 298) -- e
simulator.touch(279, 303) -- r
simulator.pressKey(KEY_RTN) -- accept name
simulator.turnRotaryEncoder(1) -- scroll to mode
simulator.pressKey(KEY_ENTER) -- edit mode
simulator.turnRotaryEncoder(1) -- scroll to down mode
simulator.pressKey(KEY_ENTER) -- select down mode

simulator.turnRotaryEncoder(1) -- scroll to start value
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) -- skip hours
simulator.turnRotaryEncoder(4) -- 4 mins
simulator.pressKey(KEY_RTN) -- exit value
simulator.turnRotaryEncoder(1) --scroll to start cond 
simulator.pressKey(KEY_ENTER) -- edit

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- select thr active
simulator.turnRotaryEncoder(6) --scroll to system event
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to thr active
simulator.pressKey(KEY_ENTER) --y
-- deselect thr active
simulator.turnRotaryEncoder(-3) -- scroll back to name
simulator.screenshot("../assets/model-timer1-edit.png")
simulator.turnRotaryEncoder(4) -- scroll to stop condition
simulator.pressKey(KEY_ENTER) -- select custom stop condition
simulator.turnRotaryEncoder(1) -- scroll to stop cond
simulator.pressKey(KEY_ENTER) -- edit custom

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- category dialog
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- select system event
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- open memebr list
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER) -- select telem active
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to stop cond
]]--
-- select telem active
simulator.turnRotaryEncoder(6) --scroll to system event
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) -- scroll to telem active
simulator.pressKey(KEY_ENTER) --y

-- end select
simulator.pressKey(KEY_ENTER, 0.6) -- bring up options
simulator.turnRotaryEncoder(1) -- scroll to
simulator.pressKey(KEY_ENTER) -- select invert
simulator.pressKey(KEY_RTN) -- back to stop cond
simulator.screenshot("../assets/model-timer1-edit-stop.png") -- stop condition
simulator.turnRotaryEncoder(5) -- scroll to add action
simulator.screenshot("../assets/model-timer1-add-action.png") -- add audio action

simulator.pressKey(KEY_ENTER) -- add action
simulator.screenshot("../assets/model-timer1-action-countdown.png") -- add audio action
simulator.pressKey(KEY_RTN) -- accept countdown

simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1) -- scroll to action type
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/model-timer1-action-type-select.png") -- add audio action
simulator.turnRotaryEncoder(1) -- scroll to beep
simulator.pressKey(KEY_ENTER) -- select beep countdown
simulator.pressKey(KEY_RTN) -- accept beep countdown
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1) -- scroll to action type
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to play file
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(3) -- scroll to file
simulator.pressKey(KEY_ENTER) -- open
--simulator.turnRotaryEncoder(-10) 
simulator.turnRotaryEncoder(1) -- scroll to timer-1-elapsed.wav
simulator.pressKey(KEY_ENTER) -- select timer-1-elapsed.wav
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- return to timer 1
simulator.screenshot("../assets/model-timer1-actions-summary.png")
-- end of timer 1
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- return to timers home
simulator.turnRotaryEncoder(1) -- scroll to timer options
simulator.pressKey(KEY_ENTER) -- select timer 2
simulator.turnRotaryEncoder(2) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- select edit
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit name
simulator.touch(56, 404) -- U
simulator.touch(79, 400) -- shift
simulator.touch(520, 297) -- p
simulator.touch(68, 396) -- shift
simulator.touch(758, 307) -- T
simulator.touch(73, 403) -- shift
simulator.touch(360, 301) -- e
simulator.touch(67, 400) -- s
simulator.touch(205, 304) -- t
simulator.touch(160, 354)
simulator.touch(357, 306)
simulator.pressKey(KEY_RTN) -- accept name
simulator.turnRotaryEncoder(2) -- scroll to alarm value
simulator.pressKey(KEY_ENTER) -- edit alarm value
simulator.pressKey(KEY_ENTER) -- step past hours
simulator.turnRotaryEncoder(2) -- 2 minutes
simulator.pressKey(KEY_RTN) -- enter timer
simulator.turnRotaryEncoder(1) -- scroll to start cond
simulator.pressKey(KEY_ENTER) -- edit start cond

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- 
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- enter thr active
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- select thr active
simulator.turnRotaryEncoder(6) --scroll to system event
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to thr active
simulator.pressKey(KEY_ENTER) --y

-- end select thr active
simulator.turnRotaryEncoder(-3) -- scroll back to name
simulator.screenshot("../assets/model-timer2-edit.png")
simulator.turnRotaryEncoder(9) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(2) -- scroll to start value
simulator.pressKey(KEY_ENTER) -- edit start
simulator.pressKey(KEY_ENTER) -- skip hours
simulator.turnRotaryEncoder(-1) -- reduce from 2 to 1 minute
simulator.pressKey(KEY_RTN) -- accept countdown
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(1) -- scroll to beep
simulator.pressKey(KEY_ENTER) -- select beep countdown
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
-- simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(2) -- scroll to play file
simulator.pressKey(KEY_ENTER) -- play file
simulator.turnRotaryEncoder(1) -- scroll to start time
simulator.pressKey(KEY_ENTER) -- edit start time
simulator.pressKey(KEY_ENTER) -- skip hours
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- set to 2m
simulator.pressKey(KEY_ENTER) -- enter mins
simulator.pressKey(KEY_RTN) -- accept time
simulator.turnRotaryEncoder(2) -- scroll to
simulator.pressKey(KEY_ENTER) -- edit file
--simulator.turnRotaryEncoder(-10)
simulator.turnRotaryEncoder(2) -- scroll to timer-2-elapsed
simulator.pressKey(KEY_ENTER) -- select timer-2-elapsed
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- return to timer 2
simulator.screenshot("../assets/model-timer2-actions-summary.png")
simulator.pressKey(KEY_RTN, 1) -- return home
-- simulator.pressKey(KEY_DISP)
-- simulator.turnRotaryEncoder(7)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(1)
-- simulator.pressKey(KEY_RTN)
-- simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE) -- to main screen 2
simulator.sleep(120) -- wait for timer 2 to time out 
simulator.pressKey(KEY_RTN) -- wake up screen
simulator.screenshot("../assets/model-timers-widget.png")
simulator.pressKey(KEY_RTN, 1) -- return home
