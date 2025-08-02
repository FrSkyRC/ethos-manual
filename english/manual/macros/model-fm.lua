-- 2025-04-14 add new section for the trims section of the fixed wing example
-- 2025-07-19 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 add new '+' fm button changes, and missing comments 

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have only default FM0
simulator.loadModel("zBlank.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(3) -- -- scroll to flight modes
simulator.screenshot("../assets/model-icon-fm.png")
simulator.pressKey(KEY_ENTER) -- open
--[[
simulator.turnRotaryEncoder(1) -- scroll to first fm
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-fm.png")
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER) -- add fm
]]--
-- add new fm
simulator.touch(571, 91) -- add new fm button '+'
--

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(480, 353) -- F
simulator.touch(65, 400) -- shift
simulator.touch(79, 350) -- l
simulator.touch(722, 352) -- a
simulator.touch(321, 350) -- p
simulator.touch(416, 451) -- s
simulator.touch(69, 404) -- space
simulator.touch(318, 355) -- shift
simulator.touch(71, 400) -- H
simulator.touch(722, 351) -- a
simulator.touch(82, 353) -- l
simulator.touch(759, 311) -- f
simulator.touch(163, 352) -- 
simulator.touch(742, 447) -- enter?
]]--

simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) --edit mode
simulator.touch(319, 350) -- F
simulator.touch(65, 403) -- shift
simulator.touch(718, 352) -- l
simulator.touch(84, 352) -- a
simulator.touch(749, 304) --p
simulator.touch(160, 348) -- s
simulator.touch(416, 455) -- space
simulator.touch(43, 400) -- shift
simulator.touch(482, 350) -- H
simulator.touch(59, 399) -- shift
simulator.touch(78, 352) -- a
simulator.touch(720, 351) -- l
simulator.touch(315, 353) -- f
simulator.pressKey(KEY_RTN) -- accept

simulator.turnRotaryEncoder(1) -- scroll to active condition
simulator.pressKey(KEY_ENTER) --y
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(13)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.turnRotaryEncoder(1) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(13) -- scroll to sw SE mid
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) -- scroll to fade in
simulator.pressKey(KEY_ENTER) --y
simulator.touch(391, 446) -- set to 1s steps
simulator.turnRotaryEncoder(1) -- 1s
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to fade out
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(395, 448) -- set to 1s steps
simulator.turnRotaryEncoder(1) -- 1s
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN) -- deselect
simulator.screenshot("../assets/model-fm-form.png")
simulator.pressKey(KEY_RTN) -- back to fm list
--[[
simulator.pressKey(KEY_ENTER) -- open fm options
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER) -- y
]]--
-- add new fm
simulator.touch(571, 91) -- add new fm button '+'
--
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(320, 351)
simulator.touch(55, 403) -- F
simulator.touch(715, 349) -- L
simulator.touch(87, 353) -- A
simulator.touch(765, 305) -- P
simulator.touch(167, 353) -- S
simulator.touch(421, 458) -- space
simulator.touch(65, 405) --f
simulator.touch(322, 355) --u
simulator.touch(55, 403) --l
simulator.touch(517, 305) --l
simulator.touch(716, 350)
simulator.touch(716, 350)
simulator.touch(752, 451)
--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- y
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(14)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.turnRotaryEncoder(1) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(14) -- scroll to sw SE down
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) -- scroll to fade in
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(393, 449) -- set to 1s steps
simulator.turnRotaryEncoder(1) -- 1s
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to fade out
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(395, 453) -- set to 1s steps
simulator.turnRotaryEncoder(1) -- 1s
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to fm list
simulator.turnRotaryEncoder(-1) -- move cursor back to fm1
simulator.screenshot("../assets/model-fm-0to3.png")
simulator.pressKey(KEY_ENTER) -- open options menu
--simulator.turnRotaryEncoder(3)
simulator.turnRotaryEncoder(2) -- scroll to move
simulator.screenshot("../assets/model-fm-move-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-fm-move.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN, 1)

-- now set custom trims
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER) -- select trims
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER) -- edit step
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select coarse
simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER) -- edit mode 
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- highlight behaviour
simulator.screenshot("../assets/tut-fw-eg-trims-ele-add-behavior.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- back to active cond
simulator.pressKey(KEY_ENTER) --edit
--[[ 
simulator.turnRotaryEncoder(2) 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- select fm
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(9) -- scroll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to fm1
simulator.pressKey(KEY_ENTER) --y
--simulator.pressKey(KEY_ENTER)



simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm-select.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm1.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(9) -- scroll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to fm1
simulator.pressKey(KEY_ENTER) --y
--simulator.pressKey(KEY_ENTER)



simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
--simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm2-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
