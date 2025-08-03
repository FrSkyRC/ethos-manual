-- 2024-12-03 change simulator.setSwitch(0, 1) to simulator.setSwitch(1, 1) to avoide conflict with Thr Cut on sw SA
-- 2025-07-23 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 add '+' lsw button and missing comments

-- This macro relies on logic switch TestC for testing logic switch coinfirmation before ture and false.

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- next page
simulator.turnRotaryEncoder(3) -- scroll to lsw
simulator.screenshot("../assets/model-icon-lsw.png")
simulator.pressKey(KEY_ENTER) -- open
-- do confirm before active and inactive
simulator.setSwitch(1, 1) -- set sw SB to mid
simulator.sleep(1) -- wait for confirmation lsw to load
simulator.screenshot("../assets/model-lsw-confirm-lsw-true.png")
simulator.pressKey(KEY_ENTER) -- confirm
simulator.setSwitch(1, 0) -- set sw SB to up
simulator.sleep(1) -- wait for confirmation lsw to load
simulator.screenshot("../assets/model-lsw-confirm-lsw-false.png")
simulator.pressKey(KEY_ENTER) -- confirm
-- intro
simulator.turnRotaryEncoder(1) -- scroll to first lsw
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-lsw-menu.png")
simulator.pressKey(KEY_RTN) -- cancel
simulator.turnRotaryEncoder(2) -- scroll to lsw3
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) -- scroll to move
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-move.png")
simulator.pressKey(KEY_RTN) -- cancel move
--[[ old add lsw
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
]]--
-- add new lsw
simulator.touch(571, 91) -- add new lsw button '+'
simulator.screenshot("../assets/model-lsw-A~X.png")

simulator.turnRotaryEncoder(12) -- scroll to end
-- simulator.screenshot("./screenshot1.png")
simulator.turnRotaryEncoder(-6) -- move cursor back
simulator.screenshot("../assets/model-lsw-common-parameters.png")
--simulator.turnRotaryEncoder(-5) -- scroll back to top
simulator.turnRotaryEncoder(-3) -- scroll to fn

simulator.pressKey(KEY_ENTER) -- delta X
simulator.turnRotaryEncoder(6) -- scroll to delta x
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-2) -- scroll back to name
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(64, 399) --shift
simulator.touch(241, 351) --d
simulator.touch(203, 305) --e
simulator.touch(717, 354) --l
simulator.touch(357, 302) --t
simulator.touch(76, 352) --a
simulator.touch(64, 445) --nums
simulator.touch(124, 302) --2
simulator.touch(757, 304) --0
simulator.touch(757, 304) --0
simulator.touch(57, 450) --m
simulator.touch(641, 399) --shift
simulator.touch(53, 403) --A
simulator.touch(77, 354) --shiftj
simulator.touch(58, 399) --h
simulator.touch(475, 358)
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(3) --scroll to active cond
simulator.pressKey(KEY_ENTER) -- y
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
simulator.pressKey(KEY_RTN) -- back to category
simulator.turnRotaryEncoder(9) -- scroll to telem
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(36) -- scroll to consumption
simulator.pressKey(KEY_ENTER) -- y
--

simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(392, 449) -- set step to 10%
simulator.touch(392, 449) -- set step to 100%
simulator.turnRotaryEncoder(2) -- 200mAh
simulator.pressKey(KEY_RTN) -- deselect
simulator.screenshot("../assets/model-lsw-delta-gtX.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER)
]]--
-- add new lsw
simulator.touch(571, 91) -- add new lsw button '+'
--
simulator.turnRotaryEncoder(3) -- scroll to fn
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(8) -- scroll to range
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-range.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to AND
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-AND.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to OR
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-OR.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to XOR
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-XOR.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to timer generator
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-timer-generator.png")
simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to sticky
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-sticky.png")
simulator.turnRotaryEncoder(1) -- scroll to trigger on cond
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.turnRotaryEncoder(2) -- scroll to edge
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-sticky-edge-select.png")
simulator.pressKey(KEY_RTN) -- back to lsw
simulator.turnRotaryEncoder(1) -- scroll to trigger off cond
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.turnRotaryEncoder(2) -- scroll to edge
simulator.pressKey(KEY_ENTER) -- y 
simulator.pressKey(KEY_RTN) -- back to lsw
simulator.turnRotaryEncoder(-2) -- scroll back to fn
simulator.screenshot("../assets/model-lsw-sticky-with-edge.png")

simulator.pressKey(KEY_ENTER) -- open fn list
simulator.turnRotaryEncoder(1) -- scroll to edge
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/model-lsw-edge.png")
simulator.turnRotaryEncoder(3) -- scroll to 2nd during param
simulator.pressKey(KEY_ENTER) -- open options
-- simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_ENTER, 1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(0)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to 'rising edge'
simulator.pressKey(KEY_RTN) -- back to lsw
simulator.screenshot("../assets/model-lsw-edge-rising-edge.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) -- back to default '---'
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(-1) -- scroll back to 1st during param
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(388, 446) -- set 1s step
simulator.turnRotaryEncoder(5) -- 5s
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to 2nd during param
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(-1) -- scroll back to 'rising edge'
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(-1) -- move cursor back for screenshot
simulator.screenshot("../assets/model-lsw-edge-during-gt0-rising-edge.png")
simulator.turnRotaryEncoder(1) -- scroll to 2nd during param
simulator.pressKey(KEY_ENTER) -- edit 
simulator.turnRotaryEncoder(1) -- back to default '---'
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(-1) -- scroll back to 1st during param
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(390, 439) -- set 1s step
simulator.touch(40, 443)
simulator.turnRotaryEncoder(-2) -- reduce to 3s
simulator.pressKey(KEY_RTN) -- accept
simulator.screenshot("../assets/model-lsw-edge-during-eq0.png")
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(-1) -- reduce to 3s
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to 2nd during param
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(30) -- increase to 5s
simulator.pressKey(KEY_RTN) -- accept
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
--[[
simulator.pressKey(KEY_ENTER) -- open lsw
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER) --y
]]--
-- add new lsw
simulator.touch(571, 91) -- add new lsw button '+'
--
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
simulator.turnRotaryEncoder(1) -- scroll to elevator
simulator.pressKey(KEY_ENTER) -- y

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
