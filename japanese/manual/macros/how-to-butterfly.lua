-- 2025-02-1 Created
-- 2025-08-02 new 1.7 source select and add comments
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("ng2.bin")
--
-- disable std flaps mx
simulator.setAnalog(1, -100) -- set flap stick down
simulator.pressKey(KEY_ENTER) --ack alert
simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(4) --scroll to mixes
simulator.pressKey(KEY_ENTER) -- edit mixes
simulator.turnRotaryEncoder(5) --scroll to flaps mix
simulator.pressKey(KEY_ENTER) -- open mix options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) --- edit mix
simulator.turnRotaryEncoder(2) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- open
-- new source select
--simulator.turnRotaryEncoder(-1) -- scroll to back to '---'
--simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-2) -- scroll back to '---'
simulator.pressKey(KEY_ENTER) -- disable mix
simulator.screenshot("../assets/how-to-butterfly-flaps-disable.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mixes list
--[[
simulator.pressKey(KEY_ENTER) -- open mix options
simulator.turnRotaryEncoder(2) -- scroll to add mix
simulator.pressKey(KEY_ENTER) -- add mix
]]--
--add butterfly mix
simulator.touch(546, 91) -- add new mix button '+'
simulator.turnRotaryEncoder(10) -- scroll to butterfly mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to last position
simulator.pressKey(KEY_ENTER)
--
simulator.pressKey(KEY_RTN) -- back to mixes screen
simulator.screenshot("../assets/how-to-butterfly-mix-added.png")
simulator.pressKey(KEY_ENTER) --reopen bfly mix
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- down to input
simulator.pressKey(KEY_ENTER)
--[[
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
]]--
-- select thr stick
simulator.turnRotaryEncoder(2) --scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) --scroll to thr stick
simulator.pressKey(KEY_ENTER)
--
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr.png")
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.turnRotaryEncoder(3) --scroll to invert (new positive is position 1)
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr-neg-select.png")
simulator.pressKey(KEY_RTN) -- close dialog
simulator.screenshot("../assets/how-to-butterfly-mix-source-thr-neg.png")
simulator.turnRotaryEncoder(1) -- scroll to curve param
simulator.screenshot("../assets/how-to-butterfly-mix-curve-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to custom
--simulator.screenshot("../assets/how-to-butterfly-mix-curve-add.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
simulator.touch(320, 400) --C
simulator.touch(69, 406) -- shift
simulator.touch(284, 312) --r
simulator.touch(679, 303) --o
simulator.touch(128, 308) --w
simulator.touch(234, 352) --d
simulator.touch(478, 407) --b
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to  
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to custom
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to points count
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2) -- adjust from 5 to 3
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to easy mode
simulator.pressKey(KEY_ENTER) -- toggle to off so we can edit x points
simulator.screenshot("../assets/how-to-butterfly-mix-curve-3pt.png")
simulator.turnRotaryEncoder(2) -- scroll to points header
simulator.pressKey(KEY_ENTER) -- open points
simulator.turnRotaryEncoder(2) -- scroll to point 2 x val
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 448) -- set 10% steps
simulator.turnRotaryEncoder(-9) -- reduce to -90%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) -- scroll to point 3 y val
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 445) -- set to 1% steps
simulator.touch(398, 441) -- set to 10% steps
simulator.turnRotaryEncoder(10) -- increase to 100%
simulator.pressKey(KEY_RTN) -- deselect
simulator.screenshot("../assets/how-to-butterfly-mix-curve-3pt-points.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to bfly mix
simulator.screenshot("../assets/how-to-butterfly-mix-curve-added.png")
simulator.turnRotaryEncoder(4) -- scroll to weight output 1
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 446) -- increase to 10% steps
simulator.turnRotaryEncoder(1) -- increase from 10 to 20%
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) -- scroll to weight output 2
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 448) -- increase to 10% steps
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-mix-ailerons.png")
simulator.turnRotaryEncoder(1) -- scroll to weight flap 1
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 445) -- increase to 10% steps
simulator.touch(389, 445) -- increase to 100% steps
simulator.turnRotaryEncoder(-2) -- reduce from +10% to -190%
simulator.touch(34, 450) -- set back to 10% dtepsa
simulator.turnRotaryEncoder(1) -- increase from -190 to -180%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(2) -- scroll to weight flap 2
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 448) -- increase to 10% steps
simulator.touch(392, 447) -- increase to 100% steps
simulator.turnRotaryEncoder(-2) -- reduce from +10% to -190%
simulator.touch(31, 451) -- set back to 10% dtepsa
simulator.turnRotaryEncoder(1) -- increase from -190 to -180%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to flap 2
simulator.screenshot("../assets/how-to-butterfly-mix-flaps-down.png")
simulator.setAnalog(1, 100)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/how-to-butterfly-mix-flaps-up.png")
simulator.pressKey(KEY_RTN, 1)
--
-- now add FlapOffset free mix
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1) -- scroll to first mix
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER)
]]--
simulator.touch(546, 91) -- add new mix button '+'
simulator.turnRotaryEncoder(1) --scroll to free mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) --scroll to last position
simulator.pressKey(KEY_ENTER)
--
--simulator.turnRotaryEncoder(1)-- scroll to free mix
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(2) -- scroll to last position
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
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
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(748, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
--simulator.touch(747, 401)
simulator.touch(323, 349) --F
simulator.touch(68, 396) -- shift
simulator.touch(724, 359) -- l
simulator.touch(85, 358) -- a
simulator.touch(756, 302) -- p
simulator.touch(61, 397) -- shift
simulator.touch(683, 301) -- O
simulator.touch(56, 403) -- shift
simulator.touch(314, 353) -- f
simulator.touch(315, 353) -- f
simulator.touch(164, 350) -- s
simulator.touch(197, 302) -- e
simulator.touch(368, 305) -- t
simulator.pressKey(KEY_RTN) -- accept name
simulator.turnRotaryEncoder(3) -- scroll to source
simulator.pressKey(KEY_ENTER) -- 
-- select special value 0
--[[
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
]]--
simulator.turnRotaryEncoder(12) --scroll to special value
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) --scroll to 0
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(2) -- scroll to weight action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to action type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to offset
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to offset when active
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 448) -- set to 10% steps
simulator.turnRotaryEncoder(8) -- 80%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to offset when inactive
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 451) -- set to 10% steps
simulator.turnRotaryEncoder(8) -- 80%
simulator.pressKey(KEY_RTN) -- deselect
--simulator.screenshot("./screenshot1.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --
simulator.screenshot("../assets/how-to-butterfly-offset-mix-80.png")
simulator.turnRotaryEncoder(2) -- scroll to outputs count
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- increase to 2
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to output 1
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to ch6
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to output 2
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll to ch 7
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to end of page
simulator.screenshot("../assets/how-to-butterfly-offset-mix-flaps-up.png")
simulator.setAnalog(1, -100)
simulator.sleep(1) -- wait 
simulator.screenshot("../assets/how-to-butterfly-offset-mix-flaps-down.png")
simulator.pressKey(KEY_RTN, 1)
--
-- create a comp curve
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(5) -- scroll to curves
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1) -- scroll to first mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to add mix
simulator.pressKey(KEY_ENTER)
]]--
simulator.touch(457, 91) -- add new curve button '+'
--
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
simulator.touch(199, 299) -- E
simulator.touch(57, 400) -- shift
simulator.touch(711, 351) -- l
simulator.touch(198, 299) -- e
simulator.touch(51, 403) -- shift
simulator.touch(315, 401) -- C
simulator.touch(60, 393) -- shift
simulator.touch(678, 306) -- o
simulator.touch(636, 405) -- m
simulator.touch(755, 307) -- p
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to custom
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
--simulator.screenshot("../assets/how-to-butterfly-comp-curve.png")
simulator.turnRotaryEncoder(1) -- scroll to smooth
simulator.pressKey(KEY_ENTER) -- enable smooth
simulator.screenshot("../assets/how-to-butterfly-comp-curve.png")
simulator.turnRotaryEncoder(3) -- scroll to points heading
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to point 1
simulator.pressKey(KEY_ENTER) --y
simulator.touch(391, 444) -- set to 1% steps
simulator.touch(391, 444) -- set to 10% steps
simulator.turnRotaryEncoder(1) -- 10%
simulator.touch(29, 442) -- reduce to 1% steps
simulator.turnRotaryEncoder(2) -- 12%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to point 2
simulator.pressKey(KEY_ENTER) --y
simulator.touch(386, 447) -- set to 1% steps
simulator.touch(386, 447) -- set to 10% steps
simulator.turnRotaryEncoder(1) -- 10%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to point 3
simulator.pressKey(KEY_ENTER) --y
simulator.touch(397, 447) -- set to 1% steps
simulator.turnRotaryEncoder(8) -- 8 %
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to point 4
simulator.pressKey(KEY_ENTER) --y
simulator.touch(388, 445) -- set to 1% steps
simulator.turnRotaryEncoder(5) -- 5%
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-to-butterfly-comp-curve-points.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--
-- now create elecompx mix to ch20 
simulator.pressKey(KEY_PAGE) -- open model menu
simulator.turnRotaryEncoder(3) -- scroll from model select to mixes
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1) -- scroll to first mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) --scroll to add mix
simulator.pressKey(KEY_ENTER)
]]--
-- add free mix
simulator.touch(546, 91) -- add new mix button '+'
simulator.turnRotaryEncoder(1) --scroll to free mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to last position
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER)
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
simulator.pressKey(KEY_PAGE)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
--simulator.touch(736, 398)
simulator.touch(199, 294) -- E
simulator.touch(63, 399) -- shift
simulator.touch(712, 345) -- l
simulator.touch(199, 297) -- e
simulator.touch(63, 400) -- shift
simulator.touch(328, 402) -- C
simulator.touch(62, 398) -- shift
simulator.touch(681, 305) -- o
simulator.touch(641, 405) -- m
simulator.touch(759, 307) -- p
simulator.touch(241, 401) -- x
simulator.pressKey(KEY_RTN) -- accept name
simulator.turnRotaryEncoder(3) -- scroll to source
simulator.pressKey(KEY_ENTER)
-- select thr stick
--[[
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
]]--
simulator.turnRotaryEncoder(2) --scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) --scroll to thr stick
simulator.pressKey(KEY_ENTER)
--
--simulator.screenshot("./screenshot4.png")
simulator.turnRotaryEncoder(3) -- scroll to add new action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to action type
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to curve
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to curve select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to EleComp
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to mix
simulator.screenshot("../assets/how-to-butterfly-comp-mix.png")
simulator.turnRotaryEncoder(4) -- scroll to output 1
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) -- go to ch10
--simulator.screenshot("./screenshot6.png")
simulator.turnRotaryEncoder(10) -- go to ch20
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/how-to-butterfly-comp-mix-ch20.png")
simulator.pressKey(KEY_RTN, 1)
--
-- go back to bfly mix and
-- assign a source to ele ch
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to bfly mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(17) -- scroll to elevator weigth
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(3) -- scroll to use a source
simulator.screenshot("../assets/how-to-butterfly-mix-ele-use-source.png")
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) -- open
--[[
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
]]--
-- select ch20
simulator.turnRotaryEncoder(6) -- scroll to channels
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(19) --- scroll to ch20
simulator.screenshot("../assets/how-to-butterfly-mix-ele-use-ch20.png")
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1)
simulator.turnRotaryEncoder(-1) -- move cursor for screenshot
simulator.screenshot("../assets/how-to-butterfly-mix-ele-comp.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to view per ch
simulator.pressKey(KEY_ENTER) -- move cursor down for screenshot
simulator.turnRotaryEncoder(5) 
simulator.screenshot("../assets/how-to-butterfly-mix-ele-comp-view-per-ch.png")
simulator.pressKey(KEY_RTN, 1)


