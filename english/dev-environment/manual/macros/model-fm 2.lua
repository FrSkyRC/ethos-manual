dofile("common.lua")

-- model must have only default FM0
simulator.loadModel("rarebear.bin")

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
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(480, 353)
simulator.touch(65, 400)
simulator.touch(79, 350)
simulator.touch(722, 352)
simulator.touch(321, 350)
simulator.touch(416, 451)
simulator.touch(69, 404)
simulator.touch(318, 355)
simulator.touch(71, 400)
simulator.touch(722, 351)
simulator.touch(82, 353)
simulator.touch(759, 311)
simulator.touch(163, 352)
simulator.touch(742, 447)
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
simulator.touch(55, 403)
simulator.touch(715, 349)
simulator.touch(87, 353)
simulator.touch(765, 305)
simulator.touch(167, 353)
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