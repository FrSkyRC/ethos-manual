-- 2024-12-04 change adcValue() to setAnalog()
-- 2024-12-29 make 4 ch balance into ch2, ch9, ch8, ch1 instead of ch2, ch9, ch1, ch8
-- 2025-08-08 adapt macro to new Ethos 1.7 source select, add comments

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)


dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("magnus.bin")
simulator.pressKey(KEY_ENTER) -- ack alert

simulator.setAnalog(1, -100) -- set thr to -100
simulator.setAnalog(2, 30) -- set ele to 30
simulator.setAnalog(ANALOG_LAST_SLIDER, -100) -- set thr channel to -100
simulator.pressKey(KEY_MDL) -- open model menu
--simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5) -- scroll to model channels (prev outputs)
simulator.screenshot("../assets/model-icon-outputs.png")
simulator.pressKey(KEY_ENTER) -- open channels
simulator.turnRotaryEncoder(1) -- to aileron left
simulator.screenshot("../assets/model-outputs.png")

simulator.turnRotaryEncoder(1) -- to elevator
simulator.pressKey(KEY_ENTER) -- edit ele
simulator.screenshot("../assets/model-outputs-elevator-edit.png")
simulator.pressKey(KEY_RTN) -- cancel
simulator.turnRotaryEncoder(1) -- to throttle
simulator.pressKey(KEY_ENTER) -- edit thr
simulator.screenshot("../assets/model-outputs-throttle-edit.png")
simulator.pressKey(KEY_RTN) -- cancel
simulator.turnRotaryEncoder(3) -- scroll to ch flap R
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to max
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(391, 443) -- set steps to 1%
simulator.touch(391, 443) -- set steps to 10%
simulator.turnRotaryEncoder(3) -- increase from 100 to 130% to generate warning
simulator.screenshot("../assets/model-outputs-sbus-warning.png")
simulator.pressKey(KEY_RTN) -- cancel warning, max capped at 125%
simulator.turnRotaryEncoder(-2) -- reduce 20%
simulator.touch(37, 449) -- set steps to 1%
simulator.turnRotaryEncoder(-5) -- reduce by 5% back to 100%
simulator.pressKey(KEY_RTN) -- cancel
--
-- swap channels demo
--
simulator.turnRotaryEncoder(8) -- scroll to swap channels
simulator.screenshot("../assets/model-outputs-swap-channels-select.png")
-- select ch to be swapped
simulator.pressKey(KEY_ENTER) -- open swap dialog
--simulator.turnRotaryEncoder(5)
--simulator.touch(552, 258)
--simulator.turnRotaryEncoder(7)
--simulator.touch(499, 365)
simulator.turnRotaryEncoder(-1) -- scroll back to 2nd ch select
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(7) -- scroll to flap r ch7
simulator.pressKey(KEY_ENTER) -- y
--
simulator.screenshot("../assets/model-outputs-swap-channels.png")
simulator.touch(544, 319)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-outputs-reset-select.png")

simulator.pressKey(KEY_RTN, 1)

--
--start of 2 ch balance section
--
--simulator.loadModel("zBalance.bin")
--simulator.pressKey(KEY_ENTER) -- ack alert
simulator.setAnalog(1, 80) -- set flap stick to 80
simulator.pressKey(KEY_MDL) -- open model menu

simulator.turnRotaryEncoder(5) -- scroll to outputs
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(6) -- scroll to flap left ch6
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(11) -- scroll to balance channels
simulator.screenshot("../assets/model-outputs-balance-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-balance-choose_channels.png")
--simulator.screenshot("./screenshot4.png")
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll to flap R ch7
simulator.pressKey(KEY_ENTER) -- select
simulator.pressKey(KEY_PAGE) -- page to ok button
simulator.screenshot("../assets/model-outputs-balance-choose-ch7-and-ch6.png")
simulator.pressKey(KEY_ENTER) -- confirm channels
simulator.screenshot("../assets/model-outputs-balance-ch7-and-ch6.png")
simulator.turnRotaryEncoder(2) -- scroll to rh balance windoe
simulator.pressKey(KEY_ENTER) -- enable balancing
simulator.pressKey(KEY_SYS) -- move edit point left
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-off.png")
simulator.pressKey(KEY_RTN) -- cancel
simulator.turnRotaryEncoder(2) -- scroll to magnet icon
simulator.pressKey(KEY_ENTER) -- enable magnet
simulator.turnRotaryEncoder(-2) -- scroll back to rh balance window
simulator.pressKey(KEY_ENTER) -- enable balancing
simulator.turnRotaryEncoder(9) -- dial in some balance correction
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-on.png")

simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-outputs-balance-curve-edit.png")
--
--start of multi ch balance section
--
simulator.loadModel("zBalance.bin")
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.setAnalog(1, 90) -- set flap stick to 80

simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(11)
simulator.pressKey(KEY_ENTER)
--simulator.screenshot("./screenshot8.png")
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE)
--simulator.screenshot("./screenshot9.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-balance-ch2-9-8-1.png")
simulator.pressKey(KEY_RTN, 1)










simulator.pressKey(KEY_RTN, 0.6)





--[[
simulator.screenshot("../assets/model-outputs-balance-choose_channels.png")
simulator.sleep(1) -- wait  

--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll to flap R ch7
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/model-outputs-balance-choose-ch7-and-ch6.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-outputs-balance-ch7-and-ch6.png")

simulator.turnRotaryEncoder(4) -- scroll to magnet
simulator.screenshot("./screenshot1.png")
simulator.turnRotaryEncoder(-2) -- scroll back to flap R curve
simulator.pressKey(KEY_ENTER) -- enable for balancing
simulator.turnRotaryEncoder(10) -- dial in an adjustment
simulator.screenshot("./screenshot2.png")
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-on.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_SYS)
simulator.screenshot("./screenshot3.png")
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-off.png")
simulator.touch(552, 6)








simulator.turnRotaryEncoder(2)
simulator.screenshot("./screenshot2.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)


simulator.turnRotaryEncoder(7)
--simulator.turnRotaryEncoder(-1)
simulator.touch(530, 283)
simulator.screenshot("../assets/model-outputs-balance-choose-ch7-and-ch6.png")
simulator.touch(514, 391)
simulator.screenshot("../assets/model-outputs-balance-ch7-and-ch6.png")
simulator.touch(540, 353)
simulator.touch(540, 353)
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-off.png")
simulator.touch(79, 448)
simulator.touch(563, 355)
simulator.touch(551, 348)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/model-outputs-balance-ch6-magnet-on.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 0.6)
]]--
--[[
simulator.pressKey(KEY_ENTER)
simulator.touch(528, 183)
simulator.touch(526, 184)
simulator.turnRotaryEncoder(4) -- to ch6
simulator.touch(535, 334) -- untick it
simulator.turnRotaryEncoder(1) -- to ch7
simulator.touch(533, 335) -- untick it
simulator.turnRotaryEncoder(2) -- to ch9
simulator.touch(532, 336) -- tick it
--simulator.turnRotaryEncoder(-8) -- to ch1 was ch1
simulator.turnRotaryEncoder(-1) -- -1 ch8
--simulator.touch(535, 135) -- tick it
simulator.pressKey(KEY_ENTER) -- tick it
--simulator.turnRotaryEncoder(7) -- to ch8 was ch8
simulator.turnRotaryEncoder(-7) -- -7 ch1
--simulator.touch(532, 333) -- tick it
simulator.pressKey(KEY_ENTER) -- tick it
simulator.touch(512, 386)
simulator.touch(673, 320)
--simulator.screenshot("../assets/model-outputs-balance-ch2-9-1-8.png")
simulator.screenshot("../assets/model-outputs-balance-ch2-9-8-1.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-outputs-balance-curve-edit.png")

]]--