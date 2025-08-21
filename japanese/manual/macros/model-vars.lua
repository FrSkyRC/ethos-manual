-- 2024-12-03 change scroll from 8 to 9 in category to skip over gyro switch
-- 2025-07-21 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 adapt to '+' add button and add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("blaster.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model page
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(6) -- scroll to vars
simulator.screenshot("../assets/model-icon-vars.png")
simulator.pressKey(KEY_ENTER) -- open vars
simulator.screenshot("../assets/model-vars.png")
simulator.turnRotaryEncoder(1) -- scroll to 1st var
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/model-vars-actions.png")
simulator.pressKey(KEY_RTN) -- cancel
--[[
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add vew var
simulator.touch(571, 91) -- add new var button '+'
--
simulator.screenshot("../assets/model-vars-new_var.png")
simulator.turnRotaryEncoder(5) -- scroll to values
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(397, 444) -- set to 1% steps
simulator.touch(397, 444) -- set to 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_RTN) -- accept
simulator.screenshot("../assets/model-vars-values.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to vars list
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add new var
simulator.touch(571, 91) -- add new var button '+'
--
simulator.turnRotaryEncoder(2) -- scroll to comment
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(320, 396) --C
simulator.touch(59, 397) --shift
simulator.touch(83, 348) --a
simulator.touch(645, 395) --m
simulator.touch(474, 398) --b
simulator.touch(201, 306) --e
simulator.touch(280, 305) --r
simulator.pressKey(KEY_RTN) -- accept
-- set range
simulator.turnRotaryEncoder(1) -- scroll to range from
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(393, 444) -- set to 1% steps
simulator.touch(393, 444) -- set to 10% steps
simulator.turnRotaryEncoder(9) -- from -100% to -10%  
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to range to
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(395, 449) -- set to 1% steps 
simulator.turnRotaryEncoder(5) -- 105%
simulator.touch(392, 451) -- set to 10% steps
simulator.turnRotaryEncoder(-9) -- reduce to 15%
simulator.pressKey(KEY_RTN) -- accept
-- end of range set
simulator.turnRotaryEncoder(2) -- scroll to add new value

simulator.screenshot("../assets/model-vars-add-value.png")
simulator.pressKey(KEY_ENTER) -- add
simulator.pressKey(KEY_ENTER) -- edit active condition
--[[select thermal
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9) -- 2024-12-03 change 8 to 9 to skip over gyro switch
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- add active cond - select thermal fm
simulator.turnRotaryEncoder(10) --scoll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) --scroll to thermal mode
simulator.pressKey(KEY_ENTER) --y
-- end select thermal
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(392, 445) -- set to 1% steps
simulator.turnRotaryEncoder(9) -- 9%
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to var
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER) -- add
simulator.pressKey(KEY_ENTER) -- edit active condition
--[[select speed
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9) -- 2024-12-03 change 8 to 9 to skip over gyro switch
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(10) --scoll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to speed
simulator.pressKey(KEY_ENTER) --y
-- end select speed

simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(383, 441) -- set 1% steps
simulator.turnRotaryEncoder(-3) -- -3%
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to var
simulator.screenshot("../assets/model-vars-fm-dependent.png")
simulator.pressKey(KEY_RTN) -- back to vars list
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add new var
simulator.touch(571, 91) -- add new var button '+'
--
-- set range
simulator.turnRotaryEncoder(3) -- scroll to range from
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(386, 439) -- set 1% steps
simulator.touch(390, 441) -- set 10% steps
simulator.turnRotaryEncoder(10) -- increase from -100% to 0%
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to range to
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(392, 444) -- set 1% steps
simulator.touch(392, 444) -- set 10% steps
simulator.turnRotaryEncoder(-8) -- reduce from 100% to 20%
simulator.touch(28, 445) -- set back to 1% steps
simulator.turnRotaryEncoder(5) -- increase to 25%
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to value
-- end set range
simulator.turnRotaryEncoder(4) -- scroll to add new action
simulator.screenshot("../assets/model-vars-add-action.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- y
--[[select landing
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- 2024-12-03 change 7 to 8 to skip over gyro switch
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- set active cond to fm landing
simulator.turnRotaryEncoder(9) --scoll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to landing
simulator.pressKey(KEY_ENTER) --y
-- end select landing
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER) -- open fn options
simulator.screenshot("../assets/model-vars-functions.png")
simulator.turnRotaryEncoder(7) -- scroll to repurpose
simulator.screenshot("../assets/model-vars-functions-repurpose-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- to source
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to thr trim
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-1) -- scroll back to repupose for screenshot
simulator.screenshot("../assets/model-vars-functions-repurpose.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to vars menu
--simulator.pressKey(KEY_RTN)
--*******
-- start of var calculation demo
--[[
simulator.pressKey(KEY_ENTER) --open var dialog
simulator.turnRotaryEncoder(2) --scroll to add
simulator.pressKey(KEY_ENTER) --y
]]--
-- add new var
simulator.touch(571, 91) -- add new var button '+'
--
simulator.turnRotaryEncoder(7) --scroll to add new action
simulator.pressKey(KEY_ENTER) --f
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER) --y
--[[ old select fs1
simulator.turnRotaryEncoder(1) -scroll to cat
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN) --return with default fs1
]]--
-- select fs1
simulator.turnRotaryEncoder(4) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(0) --scroll to fs1
simulator.pressKey(KEY_ENTER) --y
--end select fs1
simulator.pressKey(KEY_ENTER, 0.6) --long ent
simulator.turnRotaryEncoder(2) --scroll to edge
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(2) --skip over fn to value
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(389, 450) --set units steps
simulator.turnRotaryEncoder(2) --value 2
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to var 
--end action 1, start action 2
simulator.turnRotaryEncoder(11) --scroll to add action (was 11)8
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER) -- edit
--[[ old select fs2
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- select fs2
simulator.turnRotaryEncoder(4) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to fs2
simulator.pressKey(KEY_ENTER) --y
--end select fs2
simulator.pressKey(KEY_ENTER, 0.6) --long ent
simulator.turnRotaryEncoder(2) --scroll to edge
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to subtract
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(396, 448) --set units steps
simulator.turnRotaryEncoder(2) -- value 2
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to var 
simulator.turnRotaryEncoder(15) --scroll to add action
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
--[[select fs3
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(4) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to fs3
simulator.pressKey(KEY_ENTER) --y
--end select fs3
simulator.pressKey(KEY_ENTER, 0.6) --long ent
simulator.turnRotaryEncoder(2) --scroll to edge
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll to assign value
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER)
simulator.touch(387, 444) --set units steps
simulator.touch(387, 444) --set tens steps
simulator.turnRotaryEncoder(4) -- value 40
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-vars-calc-example.png")
simulator.pressKey(KEY_RTN)

simulator.pressKey(KEY_RTN, 1)
