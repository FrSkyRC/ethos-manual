-- 2024-12-03 change simulator.setSwitch(0, 1) to simulator.setSwitch(1, 1) to avoide conflict with Thr Cut on sw SA
-- 2025-07-23 adapt macro to new Ethos 1.7 source select

-- This macro relies on logic switch TestC for testing logic switch coinfirmation before ture and false.

--dofile("common.lua")
simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(11)
simulator.screenshot("../assets/model-icon-lsw.png")
simulator.pressKey(KEY_ENTER)

simulator.setSwitch(1, 1)
simulator.sleep(1) -- wait for confirmation lsw to load
simulator.screenshot("../assets/model-lsw-confirm-lsw-true.png")
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 0)
simulator.sleep(1) -- wait for confirmation lsw to load
simulator.screenshot("../assets/model-lsw-confirm-lsw-false.png")
simulator.pressKey(KEY_ENTER)

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-menu.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-move.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/model-lsw-A~X.png")

simulator.turnRotaryEncoder(11)
-- simulator.screenshot("./screenshot1.png")
simulator.turnRotaryEncoder(-7)
simulator.screenshot("../assets/model-lsw-common-parameters.png")
simulator.turnRotaryEncoder(-5)
simulator.turnRotaryEncoder(2)

simulator.pressKey(KEY_ENTER) -- delta X
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER) 
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.touch(64, 399) --d
simulator.touch(241, 351) --e
simulator.touch(203, 305) --l
simulator.touch(717, 354) --t
simulator.touch(357, 302) --a
simulator.touch(76, 352) --nums
simulator.touch(64, 445) --
simulator.touch(124, 302) --2
simulator.touch(757, 304) --0
simulator.touch(757, 304) --0
simulator.touch(57, 450) --m
simulator.touch(641, 399) --shift
simulator.touch(53, 403) --A
simulator.touch(77, 354)
simulator.touch(58, 399)
simulator.touch(475, 358)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
--[[ select esc cons
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(33)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(36)
simulator.pressKey(KEY_ENTER)
--

simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 449)
simulator.touch(392, 449)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-lsw-delta-gtX.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-range.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-AND.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-OR.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-XOR.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-timer-generator.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-sticky.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-sticky-edge-select.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-2)
simulator.screenshot("../assets/model-lsw-sticky-with-edge.png")

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-edge.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER, 1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(0)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-lsw-edge-rising-edge.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.touch(388, 446)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-lsw-edge-during-gt0-rising-edge.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 439)
simulator.touch(40, 443)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-lsw-edge-during-eq0.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(30)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-lsw-edge-during-gt0.png")

simulator.turnRotaryEncoder(-3) --back to fn

simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-8) --back to delta>x
simulator.pressKey(KEY_ENTER)--y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --edit
-- select timer 2
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_RTN) -- back to category
simulator.turnRotaryEncoder(8) --scroll to timers
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to timer 2
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) --scroll to value (x)
simulator.pressKey(KEY_ENTER, 1) --long ENT
simulator.turnRotaryEncoder(3) --scroll to use a source
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) --open
-- select timer 3
--[[
simulator.touch(638, 266)
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
simulator.turnRotaryEncoder(2) -- scroll to timers (restricted by earlier choice of timer 1)
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to timer 3
simulator.pressKey(KEY_ENTER) --y
--
simulator.screenshot("../assets/model-lsw-delta-AgtX.png")
simulator.turnRotaryEncoder(-2) --back to fn
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to lsw list
simulator.pressKey(KEY_ENTER) -- open lsw
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) --y
simulator.touch(164, 352) --S
simulator.touch(63, 396) --shift
simulator.touch(357, 310) --t
simulator.touch(598, 298) --i
simulator.touch(319, 399) --c
simulator.touch(637, 355) --k
simulator.touch(60, 399) --shift
simulator.touch(243, 355) --D
simulator.touch(65, 402) --shift
simulator.touch(200, 306) --e
simulator.touch(360, 305) --t
simulator.touch(199, 305) --e
simulator.touch(321, 398) --c
simulator.touch(361, 304) --t
simulator.pressKey(KEY_RTN) -- return from edit
simulator.turnRotaryEncoder(2) --scroll to fn
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(6) --scroll to delta>x
simulator.pressKey(KEY_ENTER) --y 

simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) --open
-- select elevator
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)

--
simulator.turnRotaryEncoder(1) --scroll to value
simulator.pressKey(KEY_ENTER) --y
simulator.touch(387, 439) --set 10% steps
simulator.turnRotaryEncoder(1) -- 10%
simulator.pressKey(KEY_RTN) --y
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER, 1) --long ENT
simulator.turnRotaryEncoder(2) --scroll to ignore trainer input
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/model-lsw-ignore-trainer-input.png")

simulator.pressKey(KEY_RTN, 1)
