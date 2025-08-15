-- 2025-01-03 first release
-- 2025-07-26 adapt macro to new Ethos 1.7 source select
-- 2025-08-15 add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("katana.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(1) -- highlight telemetry
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(13) --scroll to lipo sensor
simulator.screenshot("../assets/how-to-low-batt-telemetry-lipo-sensor.png")
simulator.pressKey(KEY_RTN) --deselect
simulator.pressKey(KEY_RTN) --return to telem icon
simulator.pressKey(KEY_RTN) --deselect icon

--simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_MDL)
--simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(3) --scroll to lsw icon
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(1) --scroll to add lsw button
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) --open
simulator.touch(470, 395) --B
simulator.touch(67, 403) --shift
simulator.touch(78, 357) --a
simulator.touch(367, 307) --t
simulator.touch(366, 305) --t
simulator.touch(66, 400) --shift
simulator.touch(712, 352) --L
simulator.touch(67, 401) --shift
simulator.touch(685, 298) --o
simulator.touch(116, 299) --w
simulator.touch(732, 450) --ENT
simulator.turnRotaryEncoder(2) --scroll to fn
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to a<x
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y
--select lipo sensor
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_RTN) --escape back to category
simulator.turnRotaryEncoder(8) --scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(6) --scroll to 2nd lipo
simulator.pressKey(KEY_ENTER) --y
--
simulator.screenshot("../assets/how-to-low-batt-lsw-battlow-lipo.png")
simulator.pressKey(KEY_ENTER, 0.6) --long ENT
simulator.turnRotaryEncoder(3) -- scroll to lowest
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-to-low-batt-lsw-battlow-lipo-select-lowest.png")
simulator.pressKey(KEY_RTN) --escape options
simulator.turnRotaryEncoder(1) --scroll to value
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(395, 447) --set 0.1% steps
simulator.turnRotaryEncoder(4) --0.4
simulator.touch(388, 450) --set 1% steps
simulator.turnRotaryEncoder(3) --3.4
simulator.pressKey(KEY_RTN) --back
--simulator.screenshot("../assets/how-to-low-batt-lsw-battlow-lipo-lowest.png")
simulator.turnRotaryEncoder(2) --scroll to delay
simulator.pressKey(KEY_ENTER) -- edit delay before active
simulator.touch(391, 447) --set 1s steps
simulator.turnRotaryEncoder(4) --4s

simulator.pressKey(KEY_RTN) --back
--simulator.screenshot("../assets/how-to-low-batt-lsw-battlow-lipo-lowest.png")
simulator.pressKey(KEY_RTN) --deselect cursor
simulator.screenshot("../assets/how-to-low-batt-lsw-battlow-lipo-lowest.png")
simulator.pressKey(KEY_RTN) --back to lsw list
simulator.screenshot("../assets/how-to-low-batt-lsw-summary.png")
simulator.pressKey(KEY_RTN) --deselect cursor
simulator.pressKey(KEY_RTN) --back to model menu
simulator.turnRotaryEncoder(1) --scroll to SF
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(1) --scroll to add sf
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to action
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(3) --scroll to play audio
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to enable
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER) --y

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--select BattLow lsw
simulator.turnRotaryEncoder(4) --scroll to lsw
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) --confirm BattLow
--
simulator.screenshot("../assets/how-to-low-batt-sf-battlow.png")
--simulator.turnRotaryEncoder(5)
simulator.turnRotaryEncoder(2) -- scroll to repeat

simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(392, 446) -- set 10s steps
simulator.turnRotaryEncoder(1) -- 10s
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(3) -- scroll to add action

simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to action type
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) --scroll to play value
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source
simulator.pressKey(KEY_ENTER) --y

--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)
--simulator.turnRotaryEncoder(1)
--simulator.pressKey(KEY_ENTER)

--select lipo sensor
simulator.turnRotaryEncoder(10) --scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(6) --scroll to 2nd lipo
simulator.pressKey(KEY_ENTER) --y
--
simulator.screenshot("../assets/how-to-low-batt-sf-play-value-lipo.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to sf
simulator.screenshot("../assets/how-to-low-batt-sf-play-value-lipo-summary.png")
simulator.pressKey(KEY_RTN, 1) -- return home
