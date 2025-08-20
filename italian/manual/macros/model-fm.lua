-- 2025-04-14 add new section for the trims section of the fixed wing example

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- model must have only default FM0
simulator.loadModel("zBlank.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-icon-fm.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-fm.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(480, 353) -- H
simulator.touch(65, 400) -- shift
simulator.touch(79, 350) -- a
simulator.touch(722, 352) -- l
simulator.touch(321, 350) -- f
simulator.touch(416, 451) -- space
simulator.touch(69, 404) -- shift
simulator.touch(318, 355) -- F
simulator.touch(71, 400) -- shift
simulator.touch(722, 351) -- l
simulator.touch(82, 353) -- a
simulator.touch(759, 311) -- p
simulator.touch(163, 352) -- s
simulator.touch(742, 447) -- enter?
]]--

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(319, 350)
simulator.touch(65, 403)
simulator.touch(718, 352)
simulator.touch(84, 352)
simulator.touch(749, 304)
simulator.touch(160, 348)
simulator.touch(416, 455)
simulator.touch(43, 400)
simulator.touch(482, 350)
simulator.touch(59, 399)
simulator.touch(78, 352)
simulator.touch(720, 351)
simulator.touch(315, 353)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
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
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 446)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 448)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-fm-form.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(320, 351)
simulator.touch(55, 403) -- F
simulator.touch(715, 349) -- L
simulator.touch(87, 353) -- A
simulator.touch(765, 305) -- P
simulator.touch(167, 353) -- S
simulator.touch(421, 458)
simulator.touch(65, 405)
simulator.touch(322, 355)
simulator.touch(55, 403)
simulator.touch(517, 305)
simulator.touch(716, 350)
simulator.touch(716, 350)
simulator.touch(752, 451)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(14)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 449)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 453)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-fm-0to3.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-fm-move-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-fm-move.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)

-- now set custoom trims
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
simulator.pressKey(KEY_ENTER) 
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
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
--simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm2-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-fw-eg-trims-ele-custom-default-plus-offset-fm2.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
