-- 2025-01-02 create 
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
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(15)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
--simulator.screenshot("./screenshot1.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-wiz-create-heli.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-heli-eg-wiz-fbl.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-heli-eg-wiz-ch-reassign.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(55, 452)
simulator.touch(283, 300)
simulator.touch(360, 305)
simulator.touch(755, 301)
simulator.touch(63, 453)
simulator.touch(754, 303)
simulator.touch(281, 301)
simulator.touch(675, 305)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-heli-eg-wiz-name.png")
simulator.pressKey(KEY_PAGE)

simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/tut-heli-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-heli-eg-mixes-ail.png")
--[[
]]--
simulator.loadModel("xheli.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
--simulator.screenshot("../assets/tut-heli-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-final.png")
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-pitch.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-bank.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-mixes-gyro-gain.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/tut-heli-eg-flight-modes.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-normal.png")
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/tut-heli-eg-curves-normal2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-iup1.png")
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/tut-heli-eg-curves-iup1-2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-heli-eg-curves-iup2.png")
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/tut-heli-eg-curves-iup2-2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.turnRotaryEncoder(-3)
simulator.screenshot("../assets/tut-heli-eg-mixes-thr-cut.png")
simulator.turnRotaryEncoder(17)
simulator.screenshot("../assets/tut-heli-eg-mixes-thr-curves.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)


simulator.pressKey(KEY_ENTER, 1)