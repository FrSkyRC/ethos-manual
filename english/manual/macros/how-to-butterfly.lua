--2025-02-1 
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("ng2.bin")

simulator.setAnalog(1, -100) -- set flap stick down
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- edit mixes
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- open mix options
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) --- edit mix
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit always on
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- disable
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-flaps-disable.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- add mix
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER) -- butterfly
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- last position
simulator.pressKey(KEY_RTN) -- back to mixes screen
simulator.screenshot("../assets/how-to-butterfly-mix-added.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- eidt
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- down to input
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose thr
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr.png")
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr-neg-select.png")
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr-neg.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-mix-curve-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
--simulator.screenshot("../assets/how-to-butterfly-mix-curve-add.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(320, 400)
simulator.touch(69, 406)
simulator.touch(284, 312)
simulator.touch(679, 303)
simulator.touch(128, 308)
simulator.touch(234, 352)
simulator.touch(478, 407)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/how-to-butterfly-mix-curve-3pt.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 448)
simulator.turnRotaryEncoder(-9)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 445)
simulator.touch(398, 441)
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-mix-curve-3pt-points.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-mix-curve-added.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 446)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 448)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-mix-ailerons.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 445)
simulator.touch(389, 445)
simulator.turnRotaryEncoder(-2)
simulator.touch(34, 450)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 448)
simulator.touch(392, 447)
simulator.turnRotaryEncoder(-2)
simulator.touch(31, 451)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-mix-flaps-down.png")
simulator.setAnalog(1, 100)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/how-to-butterfly-mix-flaps-up.png")
simulator.pressKey(KEY_RTN, 1)
-- now add FlapOffset free mix
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
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
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.pressKey(KEY_DISP)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(748, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(747, 401)
simulator.touch(323, 349)
simulator.touch(68, 396)
simulator.touch(724, 359)
simulator.touch(85, 358)
simulator.touch(756, 302)
simulator.touch(61, 397)
simulator.touch(683, 301)
simulator.touch(56, 403)
simulator.touch(314, 353)
simulator.touch(315, 353)
simulator.touch(164, 350)
simulator.touch(197, 302)
simulator.touch(368, 305)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER) -- 
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(11)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 448)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 451)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_RTN)
--simulator.screenshot("./screenshot1.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-offset-mix-80.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-offset-mix-flaps-up.png")
simulator.setAnalog(1, -100)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/how-to-butterfly-offset-mix-flaps-down.png")
simulator.pressKey(KEY_RTN, 1)
-- create a comp curve
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(199, 299)
simulator.touch(57, 400)
simulator.touch(711, 351)
simulator.touch(198, 299)
simulator.touch(51, 403)
simulator.touch(315, 401)
simulator.touch(60, 393)
simulator.touch(678, 306)
simulator.touch(636, 405)
simulator.touch(755, 307)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
--simulator.screenshot("../assets/how-to-butterfly-comp-curve.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/how-to-butterfly-comp-curve.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 444)
simulator.touch(391, 444)
simulator.turnRotaryEncoder(1)
simulator.touch(29, 442)
simulator.turnRotaryEncoder(2) -- 12%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(386, 447)
simulator.touch(386, 447)
simulator.turnRotaryEncoder(1) -- 10%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(397, 447)
simulator.turnRotaryEncoder(8) -- 8 %
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(388, 445)
simulator.turnRotaryEncoder(5) -- 5%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-comp-curve-points.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
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
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(736, 398)
simulator.touch(199, 294)
simulator.touch(63, 399)
simulator.touch(712, 345)
simulator.touch(199, 297)
simulator.touch(63, 400)
simulator.touch(328, 402)
simulator.touch(62, 398)
simulator.touch(681, 305)
simulator.touch(641, 405)
simulator.touch(759, 307)
simulator.touch(241, 401)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(3) --
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--simulator.screenshot("./screenshot4.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-butterfly-comp-mix.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10)
--simulator.screenshot("./screenshot6.png")
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/how-to-butterfly-comp-mix-ch20.png")
simulator.pressKey(KEY_RTN, 1)
-- assign a source to ele ch
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(17)
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/how-to-butterfly-mix-ele-use-source.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(19)
simulator.screenshot("../assets/how-to-butterfly-mix-ele-use-ch20.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/how-to-butterfly-mix-ele-comp.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.screenshot("../assets/how-to-butterfly-mix-ele-comp-view-per-ch.png")
simulator.pressKey(KEY_RTN, 1)


