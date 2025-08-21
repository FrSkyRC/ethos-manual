-- 2025-01-03 first release
-- 2025-04-07 line 73 select invert instead of edge
-- 2025-07-28 new 1.7 source select, also use new lsw and sf add

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("katana.bin")

simulator.pressKey(KEY_ENTER) --ack alert
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_PAGE) --2nd page
simulator.turnRotaryEncoder(1) --scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(17) --scroll to current sensor
simulator.screenshot("../assets/how-to-consumption-telemetry-current-sensor.png")
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to units
simulator.pressKey(KEY_ENTER) --y 
simulator.touch(391, 447) --1
simulator.touch(391, 447) --10
simulator.touch(391, 447) --100 step
simulator.turnRotaryEncoder(-5) --reduce to 100 from 500
simulator.pressKey(KEY_RTN) --exit 
simulator.screenshot("../assets/how-to-consumption-telemetry-current-sensor-edit.png")
simulator.turnRotaryEncoder(-15) --scroll back to 
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-21) --scroll back to calc sensor
-- simulator.screenshot("./screenshot3.png") -- place holder
--
-- start of calculated sensor
simulator.turnRotaryEncoder(5) --scroll to create calc sensor
simulator.screenshot("../assets/how-to-consumption-create-calc-sensor.png")
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to consumption
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/how-to-consumption-create-calc-select.png")
simulator.pressKey(KEY_RTN) -- retun
simulator.turnRotaryEncoder(5) --scroll to range max
simulator.pressKey(KEY_ENTER) -- edit range max
simulator.touch(396, 450) --1 step
simulator.touch(396, 450) --10 step
simulator.touch(396, 450) --100 step
simulator.turnRotaryEncoder(-8) --2000
simulator.touch(22, 442) --10 step
simulator.turnRotaryEncoder(8) --2800
simulator.pressKey(KEY_ENTER) -- set to 2800
simulator.screenshot("../assets/how-to-consumption-sensor-edit.png")
simulator.turnRotaryEncoder(2) --scroll to reset
simulator.pressKey(KEY_ENTER)
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
]]--
--[[
simulator.pressKey(KEY_ENTER) -- edit reset
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(7) -- scroll to system event
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- edit member
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER) -- select telem active
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--select telem active
simulator.turnRotaryEncoder(8) --scroll to system event
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) --scroll to  - telem active
simulator.pressKey(KEY_ENTER)
--
simulator.pressKey(KEY_ENTER, 0.6) --long ENT
simulator.turnRotaryEncoder(1) --scroll to invert
simulator.pressKey(KEY_ENTER) -- select invert (instead of edge)
simulator.pressKey(KEY_RTN) --exit

simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to current (not rxcurrent)
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-to-consumption-sensor-edit2.png")
simulator.pressKey(KEY_RTN, 0.6) --back to home
-- simulator.pressKey(KEY_RTN)
--
-- end of create calc sensor
-- start of LSW to detect every 200mAh
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_PAGE) --2nd page
simulator.turnRotaryEncoder(3) --scroll to logic switches
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) --y
simulator.touch(55, 394) --shift
simulator.touch(243, 357) --d
simulator.touch(199, 301) --e
simulator.touch(713, 353) --l
simulator.touch(357, 302) --t
simulator.touch(82, 351) --a
simulator.touch(70, 449) --123
simulator.touch(125, 309) --2
simulator.touch(758, 304) --0
simulator.touch(758, 303) --0
simulator.touch(73, 460) --shift
simulator.touch(647, 405) --m
simulator.touch(70, 400) --shift
simulator.touch(86, 353) --A
simulator.touch(64, 402) --shift
simulator.touch(475, 349) --h
simulator.touch(733, 455) --ENT
simulator.turnRotaryEncoder(2) --scroll to fn
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(6) --scroll to delta>x
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
--[[
simulator.turnRotaryEncoder(1) --
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(8) --
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
]]-- 
--select consumption sensor
simulator.pressKey(KEY_RTN) --back to category
simulator.turnRotaryEncoder(8) --scroll to telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(18) --scroll to consumption
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1) --scroll to value
simulator.pressKey(KEY_ENTER) --y
simulator.touch(388, 445) --10 step
simulator.touch(392, 443) --100 step
simulator.turnRotaryEncoder(2) --200
simulator.pressKey(KEY_RTN) --exit
--set check interval to infinite
simulator.turnRotaryEncoder(1) --scroll to check interval
simulator.pressKey(KEY_ENTER) --y
simulator.touch(389, 449) --100ms step
simulator.turnRotaryEncoder(-1) --scroll to '---'
simulator.pressKey(KEY_RTN) --exit 
--
simulator.screenshot("../assets/how-to-consumption-lsw-delta200mAh.png")
simulator.pressKey(KEY_RTN) --deselect 
simulator.pressKey(KEY_RTN) --back to lsw list
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--
--start of play audio sf
simulator.turnRotaryEncoder(1) --scroll to sf
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to add sf
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to fn
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to play audio
simulator.pressKey(KEY_ENTER) --y 
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
]]--
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) --scroll to lsw
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER) --confirm 1st lsw (delat200mAh)
--
simulator.screenshot("../assets/how-to-consumption-sf-play-delta200mAh.png")
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
--select consumption sensor
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--select consumption sensor
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) --scroll to telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(18) --scroll to consumption sensor
simulator.pressKey(KEY_ENTER)
--
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-consumption-sf-play-value-consumption.png")
simulator.pressKey(KEY_RTN, 1)
--
-- start of second set of lsw and sf
simulator.touch(766, 126)
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_PAGE) --to second page
simulator.turnRotaryEncoder(3) --scroll to lsw
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(2) --scroll to '+' add lsw
--simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(2) -- old add lsw
--simulator.pressKey(KEY_ENTER)
simulator.touch(571, 91) -- add new lsw button '+'
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) --y
simulator.touch(470, 400) --B
simulator.touch(79, 403) --shift
simulator.touch(82, 356) --a
simulator.touch(359, 305) --t
simulator.touch(362, 304) --t
simulator.touch(68, 395) --shift
simulator.touch(711, 353) --L
simulator.touch(63, 403) --shift
simulator.touch(680, 308) --o
simulator.touch(120, 304) --w
simulator.touch(725, 451) --ENT
simulator.turnRotaryEncoder(2) --scroll to fn
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to a>x
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--select consumption sensor
simulator.pressKey(KEY_RTN) --back to category
simulator.turnRotaryEncoder(8) --scroll to telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(18) --scroll to consumption
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1) --scroll to value
simulator.pressKey(KEY_ENTER) --y
simulator.touch(393, 447) --10
simulator.touch(390, 447) --100
--simulator.touch(390, 447) --1000mah steps ***sim  bug
--simulator.turnRotaryEncoder(2) --2000mAH
simulator.turnRotaryEncoder(10) --1000mAh
simulator.sleep(5) -- wait
simulator.turnRotaryEncoder(10) -- + 1000 = 2000mAh
simulator.pressKey(KEY_RTN) --exit
simulator.screenshot("../assets/how-to-consumption-lsw2-play-battlow.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to model menu
--
--start of add sf 
simulator.turnRotaryEncoder(1) --scroll to sf
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(1) --scroll to '+' add sf
--simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(2) -- highlight add (old way)
--simulator.pressKey(KEY_ENTER)
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(1) -- highlight action
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) -- highlight play audio
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- enable
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) -- cat
--select battlow
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER) -- lsw's
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) 
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- battlow
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--simulator.touch(651, 30)
--simulator.touch(724, 201)
simulator.turnRotaryEncoder(4) --scroll to lsw
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) --scroll to battlow
simulator.pressKey(KEY_ENTER)
--
--simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-consumption-sf2-play-battlow.png")
simulator.turnRotaryEncoder(2) --scroll to repeat
--set repeat
simulator.pressKey(KEY_ENTER) --y
simulator.touch(392, 446) --10s steps
simulator.turnRotaryEncoder(1) --10s
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(3) --scroll to add line
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to play value
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
--select consumption
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--]]--
--select consumption sensor
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) --scroll to telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(18) --scroll to consumption sensor
simulator.pressKey(KEY_ENTER)
--
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/how-to-consumption-sf2-play-value-consumption.png")
simulator.pressKey(KEY_RTN, 1)
