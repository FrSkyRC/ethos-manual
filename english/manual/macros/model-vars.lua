-- 2024-12-03 change scroll from 8 to 9 in category to skip over gyro switch
-- 2025-07-21 adapt macro to new Ethos 1.7 source select

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("blaster.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/model-icon-vars.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-vars.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-vars-actions.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-vars-new_var.png")
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.touch(397, 444)
simulator.touch(397, 444)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-vars-values.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(320, 396) --C
simulator.touch(59, 397) --shift
simulator.touch(83, 348) --a
simulator.touch(645, 395) --m
simulator.touch(474, 398) --b
simulator.touch(201, 306) --e
simulator.touch(280, 305) --r
simulator.pressKey(KEY_RTN)
-- set range
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 444)
simulator.touch(393, 444)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(395, 449)
simulator.turnRotaryEncoder(5)
simulator.touch(392, 451)
simulator.turnRotaryEncoder(-9)
simulator.pressKey(KEY_RTN)
-- end of range set
simulator.turnRotaryEncoder(2)

simulator.screenshot("../assets/model-vars-add-value.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
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
simulator.turnRotaryEncoder(10) --scoll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) --scroll to thermal
simulator.pressKey(KEY_ENTER) --y
-- end select thermal
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 445)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
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

simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(383, 441)
simulator.turnRotaryEncoder(-3)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-vars-fm-dependent.png")
simulator.pressKey(KEY_RTN)

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
-- set range
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.touch(386, 439)
simulator.touch(390, 441)
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 444)
simulator.touch(392, 444)
simulator.turnRotaryEncoder(-8)
simulator.touch(28, 445)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
-- end set range
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/model-vars-add-action.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
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
simulator.turnRotaryEncoder(9) --scoll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to landing
simulator.pressKey(KEY_ENTER) --y
-- end select landing
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-vars-functions.png")
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/model-vars-functions-repurpose-select.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- to source
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-vars-functions-repurpose.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to vars menu
--simulator.pressKey(KEY_RTN)
-- start of var calculation demo
simulator.pressKey(KEY_ENTER) --open var dialog
simulator.turnRotaryEncoder(2) --scroll to add
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(7) --scroll to add new action
simulator.pressKey(KEY_ENTER) --f
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER) --y
--[[select fs1
simulator.turnRotaryEncoder(1) -scroll to cat
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN) --return with default fs1
]]--
simulator.turnRotaryEncoder(4) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(0) --scroll to fs1
simulator.pressKey(KEY_ENTER) --y
--end select fs1
simulator.pressKey(KEY_ENTER, 1) --long ent
simulator.turnRotaryEncoder(2) --scroll to edge
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) --skip over fn to value
simulator.pressKey(KEY_ENTER)
simulator.touch(389, 450) --set units steps
simulator.turnRotaryEncoder(2) --value 2
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
--end action 1, start action 2
simulator.turnRotaryEncoder(11) --scroll to add action (was 11)8
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to active cond
simulator.pressKey(KEY_ENTER)
--[[select fs2
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
simulator.turnRotaryEncoder(4) --scroll to fn sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to fs2
simulator.pressKey(KEY_ENTER) --y
--end select fs2
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(396, 448)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(15)
simulator.pressKey(KEY_ENTER)
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
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(387, 444)
simulator.touch(387, 444)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-vars-calc-example.png")
simulator.pressKey(KEY_RTN)




simulator.pressKey(KEY_RTN, 1)
