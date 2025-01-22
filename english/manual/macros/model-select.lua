dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin") -- relies on many models
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_MDL) -- Model page
simulator.screenshot("../assets/model-menu.png")

simulator.turnRotaryEncoder(1) -- Model select
simulator.screenshot("../assets/model-icon-modelselect.png")
simulator.pressKey(KEY_ENTER)
simulator.touch(758, 91) -- add cat
simulator.touch(86, 351) -- shift
simulator.touch(76, 405) -- A
simulator.touch(599, 301) -- i
simulator.touch(279, 304) --r
simulator.touch(754, 303) --p
simulator.touch(719, 354) --l
simulator.touch(81, 356) --a
simulator.touch(556, 405) --n
simulator.touch(198, 306) --e
simulator.screenshot("../assets/model-modelselect-create-airplane-folder.png")
simulator.touch(461, 191) -- Enter
simulator.touch(756, 80) --add cat
simulator.touch(393, 348) --G
simulator.touch(57, 402) --shift
simulator.touch(715, 355) --l
simulator.touch(600, 300) --i
simulator.touch(233, 351) --d
simulator.touch(186, 304) --e
simulator.touch(279, 302) --r
simulator.touch(450, 184) -- Enter
simulator.touch(751, 79) -- add cat
simulator.touch(476, 350)
simulator.touch(60, 405)
simulator.touch(198, 303)
simulator.touch(710, 356)
simulator.touch(590, 302)
simulator.touch(455, 193)
simulator.touch(755, 84)
simulator.touch(636, 399)
simulator.touch(65, 400)
simulator.touch(519, 300)
simulator.touch(717, 353)
simulator.touch(360, 302)
simulator.touch(599, 301)
simulator.touch(274, 307)
simulator.touch(678, 305)
simulator.touch(359, 306)
simulator.touch(679, 304)
simulator.touch(279, 303)
simulator.touch(458, 191)
simulator.touch(490, 81)
simulator.screenshot("../assets/model-modelselect-folder-options.png")
simulator.pressKey(KEY_RTN)

simulator.touch(625, 79)
simulator.pressKey(KEY_RTN)
simulator.touch(85, 185)
simulator.screenshot("../assets/model-modelselect-folders.png")
simulator.touch(525, 319)
simulator.touch(525, 319)
--simulator.touch(235, 360)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-modelselect-folder-change-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-modelselect-folder-change-glider.png")
-- simulator.pressKey(KEY_ENTER) -- don't actually move 
-- simulator.touch(84, 80)
simulator.pressKey(KEY_RTN) -- escape from model options
simulator.pressKey(KEY_PAGE) -- page to airplane cat
simulator.screenshot("../assets/model-modelselect-folder-airplane-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-modelselect-model-receive.png")
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-modelselect-model-create.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-modelselect-model-wizard-airplane.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/model-modelselect-model-wizard-rx.png")
simulator.pressKey(KEY_PAGE) -- engine
simulator.pressKey(KEY_PAGE) -- ailerons and flaps
simulator.pressKey(KEY_PAGE) -- tail
simulator.pressKey(KEY_PAGE) -- elevator and rudder
simulator.pressKey(KEY_PAGE) -- channels reassignment
simulator.screenshot("../assets/model-modelselect-model-wizard-ch-reassignment.png")
simulator.pressKey(KEY_PAGE) -- enter name
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- go into edit name
simulator.touch(513, 302)
simulator.touch(68, 399)
simulator.touch(715, 351)
simulator.touch(360, 304)
simulator.touch(599, 301)
simulator.touch(640, 405)
simulator.touch(78, 356)
simulator.touch(360, 306)
simulator.touch(203, 302)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-3)
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/model-modelselect-model-wizard-ultimate.png")
simulator.pressKey(KEY_RTN, 1)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(14)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-modelselect-model-airplane-category.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- select model move
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)

simulator.pressKey(KEY_RTN, 1)
