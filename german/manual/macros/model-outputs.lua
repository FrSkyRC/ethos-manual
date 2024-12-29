--2024-12-04 change adcValue() to setAnalog()
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)
--2024-12-29 make 4 ch balance into ch2, ch9, ch8, ch1 instead of ch2, ch9, ch1, ch8

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("zBalance.bin")


simulator.setAnalog(1, -100)
simulator.setAnalog(2, 30)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5)
simulator.screenshot("../assets/model-icon-outputs.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- to aileron
simulator.screenshot("../assets/model-outputs.png")

simulator.turnRotaryEncoder(2) -- to elevator
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-elevator-edit.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- to throttle
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-throttle-edit.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 443)
simulator.touch(391, 443)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-outputs-sbus-warning.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-2)
simulator.touch(37, 449)
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(8)
simulator.screenshot("../assets/model-outputs-swap-channels-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.touch(552, 258)
simulator.turnRotaryEncoder(7)
simulator.touch(499, 365)
simulator.screenshot("../assets/model-outputs-swap-channels.png")
simulator.touch(544, 319)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-outputs-reset-select.png")
simulator.turnRotaryEncoder(-2)
simulator.screenshot("../assets/model-outputs-balance-select.png")
simulator.pressKey(KEY_RTN, 1)
--start os balance section
simulator.setAnalog(1, 40)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5) -- outputs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(11)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-outputs-balance-choose_channels.png")
simulator.sleep(1) -- wait  
simulator.turnRotaryEncoder(7)
simulator.turnRotaryEncoder(-1)
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
simulator.pressKey(KEY_RTN)
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

