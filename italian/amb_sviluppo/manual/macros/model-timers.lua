dofile("common.lua")

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/model-icon-timers.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-timers.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-timers-action-select.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit name
simulator.touch(479, 400)
simulator.touch(59, 397)
simulator.touch(78, 357)
simulator.touch(358, 306)
simulator.touch(359, 305)
simulator.touch(74, 404)
simulator.touch(361, 304)
simulator.touch(70, 396)
simulator.touch(602, 299)
simulator.touch(632, 397)
simulator.touch(199, 298)
simulator.touch(279, 303)
simulator.pressKey(KEY_RTN) -- enter name
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit mode
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select down mode

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
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
simulator.turnRotaryEncoder(-3)
simulator.screenshot("../assets/model-timer1-edit.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- select custom stop condition
simulator.turnRotaryEncoder(1) -- 
simulator.pressKey(KEY_ENTER) -- edit custom
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
simulator.pressKey(KEY_ENTER, 1) -- bring up options
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select invert
simulator.pressKey(KEY_RTN) -- back to stop cond
simulator.screenshot("../assets/model-timer1-edit-stop.png") -- stop condition
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/model-timer1-add-action.png") -- add audio action

simulator.pressKey(KEY_ENTER) -- add action
simulator.pressKey(KEY_RTN) -- accept countdown
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) 
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select beep countdown
simulator.pressKey(KEY_RTN) -- accept beep countdown
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-9)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-timer1-actions-summary.png")
-- end of timer 1
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- return to timers home
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select timer 2
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- select edit
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit name
simulator.touch(56, 404)
simulator.touch(79, 400)
simulator.touch(520, 297)
simulator.touch(68, 396)
simulator.touch(758, 307)
simulator.touch(73, 403)
simulator.touch(360, 301)
simulator.touch(67, 400)
simulator.touch(205, 304)
simulator.touch(160, 354)
simulator.touch(357, 306)
simulator.pressKey(KEY_RTN) -- enter name
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit alarm vale
simulator.pressKey(KEY_ENTER) -- step past hours
simulator.turnRotaryEncoder(2) -- 
simulator.pressKey(KEY_RTN) -- enter timer
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit start cond
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
simulator.turnRotaryEncoder(-3)
simulator.screenshot("../assets/model-timer2-edit.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit start
simulator.pressKey(KEY_ENTER) -- skip hours
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_RTN) -- accept countdown
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select beep countdown
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
-- simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- add action
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit type
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- play file
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit start time
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- enter mins
simulator.pressKey(KEY_RTN) -- accept time
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit file
simulator.turnRotaryEncoder(-9)
simulator.pressKey(KEY_ENTER) -- select timup.wav
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-timer2-actions-summary.png")
simulator.pressKey(KEY_RTN, 1)
simulator.pressKey(KEY_DISP)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/model-timers-widget.png")
simulator.pressKey(KEY_RTN, 1)
