-- 2025-08-14 add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin") -- relies on many models
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_MDL) -- open the Model page
simulator.screenshot("../assets/model-menu.png")

simulator.turnRotaryEncoder(1) -- scroll to Model select
simulator.screenshot("../assets/model-icon-modelselect.png")
simulator.pressKey(KEY_ENTER) -- open
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
--simulator.touch(461, 191) -- Virtual OK
simulator.touch(405, 191) -- Virtual OK for DE
simulator.touch(751, 83) -- add cat
simulator.touch(166, 350) --S
simulator.touch(61, 403) --shift
simulator.touch(197, 308) --e
simulator.touch(396, 359) --g
simulator.touch(716, 356) --l
simulator.touch(205, 303) --e
simulator.touch(280, 302) --r
--simulator.touch(450, 184) -- Virtual OK
simulator.touch(405, 191) -- Virtual OK for DE
simulator.touch(751, 79) -- add cat
simulator.touch(476, 350) -- H
simulator.touch(60, 405) -- shift
simulator.touch(198, 303) -- e
simulator.touch(710, 356) -- l
simulator.touch(590, 302) -- i
--simulator.touch(455, 193) -- Virtual OK
simulator.touch(405, 191) -- Virtual OK for DE
simulator.touch(755, 84) -- add cat
simulator.touch(636, 399) -- M
simulator.touch(65, 400) -- shift
simulator.touch(519, 300) -- u
simulator.touch(717, 353) -- l
simulator.touch(360, 302) -- t
simulator.touch(599, 301) -- i
simulator.touch(274, 307) -- r
simulator.touch(678, 305) -- o
simulator.touch(359, 306) -- t
simulator.touch(679, 304) -- o
simulator.touch(279, 303) -- r
--simulator.touch(458, 191) -- Virtual OK
simulator.touch(405, 191) -- Virtual OK for DE
simulator.touch(490, 81) -- tap on multirotor to open folder options
simulator.screenshot("../assets/model-modelselect-folder-options.png")
simulator.pressKey(KEY_RTN) -- exit options

simulator.touch(625, 79) -- tap on uncategorized
simulator.pressKey(KEY_RTN)
simulator.touch(85, 185)
simulator.screenshot("../assets/model-modelselect-folders.png")
simulator.touch(525, 319)
simulator.touch(525, 319) -- tap on magnus model
--simulator.touch(235, 360)
simulator.turnRotaryEncoder(3) -- scroll to change folder
simulator.screenshot("../assets/model-modelselect-folder-change-select.png")
simulator.pressKey(KEY_ENTER) -- --y
--simulator.turnRotaryEncoder(2) -- scroll to 'glider'
simulator.turnRotaryEncoder(4) -- scroll to 'glider'
simulator.screenshot("../assets/model-modelselect-folder-change-glider.png")
-- simulator.pressKey(KEY_ENTER) -- don't actually move 
-- simulator.touch(84, 80)
simulator.pressKey(KEY_RTN) -- escape from model options
simulator.pressKey(KEY_PAGE) -- page to airplane cat
simulator.screenshot("../assets/model-modelselect-folder-airplane-select.png")
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(2) -- scroll to model receive
simulator.screenshot("../assets/model-modelselect-model-receive.png")
simulator.turnRotaryEncoder(-1) -- scroll to model create
simulator.screenshot("../assets/model-modelselect-model-create.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-modelselect-model-wizard-airplane.png")
simulator.pressKey(KEY_PAGE) -- page to receiver type
simulator.screenshot("../assets/model-modelselect-model-wizard-rx.png")
simulator.pressKey(KEY_PAGE) -- engine
simulator.screenshot("../assets/model-modelselect-model-wizard-engine.png")
simulator.pressKey(KEY_PAGE) -- ailerons and flaps
simulator.screenshot("../assets/model-modelselect-model-wizard-ail-and-flaps.png")
simulator.pressKey(KEY_PAGE) -- tail
simulator.screenshot("../assets/model-modelselect-model-wizard-tail.png")
simulator.pressKey(KEY_PAGE) -- elevator and rudder
simulator.screenshot("../assets/model-modelselect-model-wizard-ele-and-rudder.png")
simulator.pressKey(KEY_PAGE) -- channels reassignment
simulator.screenshot("../assets/model-modelselect-model-wizard-ch-reassignment.png")
simulator.pressKey(KEY_PAGE) -- enter name
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- go into edit name
simulator.touch(513, 302) -- U
simulator.touch(68, 399) -- shift
simulator.touch(715, 351) -- l
simulator.touch(360, 304) -- t
simulator.touch(599, 301) -- i
simulator.touch(640, 405) -- m
simulator.touch(78, 356) -- a
simulator.touch(360, 306) -- t
simulator.touch(203, 302) -- e
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to picture
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(-3) -- scroll back to Ultimate
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-1) -- scroll back to name
simulator.screenshot("../assets/model-modelselect-model-wizard-name.png")
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE) -- finish create
simulator.screenshot("../assets/model-modelselect-model-wizard-ultimate.png")
-- The next section is necessary because we are in read only mode and the above did not really create the Ultimate model
-- so we go the the existing Ultimate for the last screenshots 
simulator.pressKey(KEY_RTN, 1) -- return to home
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(1) -- scroll to model select
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_PAGE) -- to airplane
simulator.pressKey(KEY_PAGE) -- to glider
simulator.pressKey(KEY_PAGE) -- to heli
simulator.pressKey(KEY_PAGE) -- to multi
simulator.pressKey(KEY_PAGE) -- to uncat
simulator.turnRotaryEncoder(15) -- scroll to ultimate
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(3) -- scroll to change folder
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to airplane
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-modelselect-model-airplane-category.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to model move
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(4) -- back to uncat
simulator.pressKey(KEY_ENTER) -- y

simulator.pressKey(KEY_RTN, 1) -- return home
