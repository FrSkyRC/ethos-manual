-- 2024-12-03 change model from zNewModel.bin to zblank.bin
-- 2024-12-30 add heli mixes library screenshot
-- 2025-07-22 adapt macro to new Ethos 1.7 source select
-- 2025-07-28 adapt to new '+' add button for mixes, lsw, sf, vars

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- for the blank shots

simulator.loadModel("zblank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
simulator.screenshot("../assets/model-checklist-user-checklist.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)

simulator.turnRotaryEncoder(11)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-lsw-add.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-sf-add.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-icon-vars.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-vars-add.png")
-- simulator.turnRotaryEncoder(1) -- to vars
-- simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-vars-edit.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_DISP)
-- simulator.screenshot("../assets/display-home.png")
--simulator.turnRotaryEncoder(2)
--simulator.pressKey(KEY_ENTER)
--simulator.screenshot("../assets/display-change-source.png")
--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(8) --scroll to new screen
simulator.screenshot("../assets/display-home.png")
simulator.pressKey(KEY_RTN, 1)
--
-- get heli library screenshot
simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(1) --scroll to model select
--simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(7) --scroll to add new model
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to create model
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to heli
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_PAGE) --accept fbl swash
simulator.pressKey(KEY_PAGE) --accept ch reorder
--simulator.pressKey(KEY_PAGE)
--simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to A
--simulator.pressKey(KEY_ENTER) --
simulator.pressKey(KEY_RTN) --exit name field
simulator.pressKey(KEY_PAGE) --page to end
--simulator.pressKey(KEY_PAGE)
--simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(4) --scroll to mixes
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(8) --scroll add mix
--simulator.pressKey(KEY_ENTER) --y
simulator.touch(546, 91) -- add new mix button '+'
simulator.screenshot("../assets/model-mixes-library-heli.png")
simulator.pressKey(KEY_RTN, 1)
--
-- get multirotor library screenshot
simulator.loadModel("zblank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
-- simulator.screenshot("../assets/model-checklist-user-checklist.png")
simulator.pressKey(KEY_ENTER) --ack checklist

simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(1) --y
--simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER) --open
simulator.turnRotaryEncoder(7) --scroll to add ne model
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to create model
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) --scroll to multirotor
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_PAGE) --accept ch reorder
--simulator.pressKey(KEY_PAGE) --
--simulator.pressKey(KEY_PAGE)
--simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) ---
simulator.turnRotaryEncoder(1) --scroll to A
--simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_PAGE)
--simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE) --page to end
simulator.pressKey(KEY_MDL) --open model menu
simulator.turnRotaryEncoder(4) --scroll to mixes
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(8) --scroll add mix
--simulator.pressKey(KEY_ENTER) --y
simulator.touch(546, 91) -- add new mix button '+'
simulator.screenshot("../assets/model-mixes-library-multirotor.png")
simulator.pressKey(KEY_RTN, 1)