-- 2025-07-25 adapt script to new source select
-- 2025-07-29 adapt script to new '+' add mix button
-- 2025-07-30 add full comments
--
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
--
-- turn 'keep 1st 4 ch fixed' off
simulator.pressKey(KEY_SYS) --open system menu
simulator.turnRotaryEncoder(7) -- scroll to sticks
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll to 'keep 1st 4 ch fixed'
simulator.pressKey(KEY_ENTER) -- toggle to off
simulator.pressKey(KEY_RTN) -- back to sys menu
simulator.pressKey(KEY_RTN) -- back to home
--
-- create a new model
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(1) -- scroll to model select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to create model button
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to create not receive
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-create-airplane.png")
simulator.turnRotaryEncoder(1) -- hightlight airplane
simulator.pressKey(KEY_PAGE) -- accept airplane and jumpto next page
simulator.screenshot("../assets/tut-wing-eg-wiz-rx.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.turnRotaryEncoder(1) -- scroll to engine
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll to no engine
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-no-engine.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.screenshot("../assets/tut-wing-eg-wiz-ail-flaps.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.turnRotaryEncoder(1) -- scroll to tail
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll to no tail
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-wing-eg-wiz-no-tail.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.screenshot("../assets/tut-wing-eg-wiz-ch-reassign.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
simulator.touch(120, 301) --W
simulator.touch(66, 411) --shift
simulator.touch(206, 305) --e
simulator.touch(88, 353) --a
simulator.touch(163, 350) --s
simulator.touch(206, 302) --e
simulator.touch(710, 352) --l
--simulator.pressKey(KEY_ENTER)
simulator.touch(749, 448) --ENT
simulator.screenshot("../assets/tut-wing-eg-wiz-name.png")
simulator.pressKey(KEY_PAGE) --to next page
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.screenshot("../assets/tut-wing-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-wing-eg-mixes.png")
--
-- start of aileron mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to weight
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 449) -- set 10% steps
simulator.turnRotaryEncoder(2) -- increase value to 70%
simulator.touch(32, 447) -- set 1% steps
simulator.turnRotaryEncoder(5) -- increase to 75%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to add weight
simulator.pressKey(KEY_ENTER)
--simulator.touch(217, 353) -- set 10% steps
simulator.pressKey(KEY_ENTER) -- replace touch ENT with key
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
simulator.turnRotaryEncoder(1) --scroll to weight value
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- increase value from 75 to 76
simulator.touch(391, 446) -- set 10% steps
simulator.turnRotaryEncoder(-4) -- reduce value to 36
simulator.pressKey(KEY_RTN)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-mix-weight.png")
simulator.turnRotaryEncoder(-5) -- scroll back to curv
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to type i
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to expo

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- increase to 5%
simulator.touch(391, 452) -- set 10% steps
simulator.turnRotaryEncoder(3) -- increase by 30% to 35%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to add curve 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
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
simulator.turnRotaryEncoder(1) -- scroll to curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER)
simulator.touch(381, 452) -- set 10% steps
simulator.turnRotaryEncoder(2) --20%
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-mix.png")
simulator.turnRotaryEncoder(7) -- scroll to diff
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- increase value to 4%
simulator.pressKey(KEY_RTN)
--simulator.screenshot("./screenshot10.png")
simulator.turnRotaryEncoder(4) -- scroll to output 2 to move screen
--simulator.screenshot("./screenshot11.png")
simulator.turnRotaryEncoder(-4) -- and back to diff for screenshot
simulator.screenshot("../assets/tut-wing-eg-mixes-ail-diff-04.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mixes list
--
-- start of elevator mix
simulator.turnRotaryEncoder(1) -- scroll to elevator
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to weightp
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-5) -- reduce from 50 to 45
simulator.touch(390, 445) -- set 10% steps
simulator.turnRotaryEncoder(-2) --reduce from 45 to 25
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to add weight
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
simulator.turnRotaryEncoder(1) -- scroll 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-3) -- reduce from 25 to 22
simulator.touch(397, 447) -- set 10% steps
simulator.turnRotaryEncoder(-1) -- reduce from 22 to 12
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-5) -- scroll back to curves
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)-- scroll to expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- increase value to 5%
simulator.touch(394, 450) -- set 10% steps
simulator.turnRotaryEncoder(3) -- increase value by 30% to 35%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to add curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to active condition

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
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 447) -- set 10% steps 
simulator.turnRotaryEncoder(2) 	-- increase value to 20%
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-wing-eg-mixes-ele-mix.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mixes list
--
-- start of rudder mix
--[[
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(2) -- select add mix
simulator.pressKey(KEY_ENTER)
]]--
-- tap new mix '+' button
simulator.touch(546, 91) -- add new mix button '+'
simulator.turnRotaryEncoder(1) -- select free mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- select last position
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
--
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
simulator.turnRotaryEncoder(2) -- scroll to source
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

simulator.pressKey(KEY_RTN, 1) -- return home
