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
simulator.pressKey(KEY_SYS)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-create-airplane.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-wing-eg-wiz-rx.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-no-engine.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-wing-eg-wiz-ail-flaps.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-no-tail.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-wing-eg-wiz-ch-reassign.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(120, 301)
simulator.touch(66, 411)
simulator.touch(206, 305)
simulator.touch(88, 353)
simulator.touch(163, 350)
simulator.touch(206, 302)
simulator.touch(710, 352)
simulator.pressKey(KEY_ENTER)
simulator.touch(749, 448)
simulator.screenshot("../assets/tut-wing-eg-wiz-name.png")
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/tut-wing-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-wing-eg-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- select weight
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 449)
simulator.turnRotaryEncoder(2)
simulator.touch(32, 447)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(217, 353)
-- select switch SB down
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to SB dow --yn
simulator.pressKey(KEY_ENTER)
--

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-9)
simulator.touch(391, 446)
simulator.turnRotaryEncoder(-3)
simulator.pressKey(KEY_RTN)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-mix-weight.png")
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.touch(391, 452)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to SB dow --yn
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(381, 452)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-mix.png")
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_RTN)
--simulator.screenshot("./screenshot10.png")
simulator.turnRotaryEncoder(4)
--simulator.screenshot("./screenshot11.png")
simulator.turnRotaryEncoder(-4)
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-diff-04.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-5)
simulator.touch(390, 445)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to SB dow --yn
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-3)
simulator.touch(397, 447)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.touch(394, 450)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to SB dow --yn
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 447)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-wing-eg-mixes-ele-mix.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- select add mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select free mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_DISP)
--[[
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
simulator.touch(733, 402)
]]--
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)

simulator.touch(278, 299) --R
simulator.touch(76, 405) --shift
simulator.touch(512, 303) --u
simulator.touch(236, 350) --d
simulator.touch(238, 350) --d
simulator.touch(199, 304) --e
simulator.touch(282, 303) --r
simulator.pressKey(KEY_RTN)
--simulator.turnRotaryEncoder(8)
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_ENTER)
--.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
--simulator.screenshot("./screenshot14.png")
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
-- select rudder
--[[
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(1) --scroll to analog
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(0) --scroll to rudder
simulator.pressKey(KEY_ENTER) --y
--
simulator.pressKey(KEY_RTN) --deselect source
simulator.pressKey(KEY_RTN) --exit rudder mix
simulator.screenshot("../assets/tut-wing-eg-mixes-rud-mix.png")
simulator.pressKey(KEY_RTN) --exit mixes
simulator.pressKey(KEY_RTN, 0.6) --exit
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_ENTER)

simulator.turnRotaryEncoder(4) --scroll to outputs
simulator.pressKey(KEY_ENTER) --open outputs

simulator.setSwitch(1, 1) -- set switch SB up to switch rates off
simulator.setAnalog(3, 100) -- set ail to 75%
simulator.setAnalog(2, 0) -- set ele to 0%
simulator.sleep(1) -- wait 
--simulator.pressKey(KEY_RTN) --exit mixes
--simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-outputs-full-ail.png")
simulator.setAnalog(2, 100) -- set ele to 100%
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/tut-wing-eg-outputs-full-ail-full-ele.png")

simulator.pressKey(KEY_RTN, 1)
