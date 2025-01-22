dofile("common.lua")

simulator.loadModel("rarebear.bin") -- relies on many models
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_MDL) -- Model page
simulator.screenshot("../assets/model-menu.png")

simulator.turnRotaryEncoder(1) -- Model select
simulator.screenshot("../assets/model-icon-modelselect.png")
simulator.pressKey(KEY_ENTER)

simulator.touch(764, 85) -- add cat
simulator.touch(321, 350) --F
simulator.touch(67, 403) --shift
simulator.touch(714, 352) --l
simulator.touch(513, 306) --u
simulator.touch(400, 346) --g
simulator.touch(163, 401) --z
simulator.touch(197, 305) --e
simulator.touch(517, 303) --u
simulator.touch(397, 354) --g
simulator.screenshot("../assets/model-modelselect-create-airplane-folder.png")
simulator.touch(461, 191) -- Enter
simulator.touch(751, 83) -- add cat
simulator.touch(166, 350) --S
simulator.touch(61, 403) --shift
simulator.touch(197, 308) --e
simulator.touch(396, 359) --g
simulator.touch(716, 356) --l
simulator.touch(205, 303) --e
simulator.touch(280, 302) --r

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
simulator.turnRotaryEncoder(4) -- different for DE, was 2 for EN
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
simulator.turnRotaryEncoder(15)
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
