-- 2025-01-02 create 
-- 2025-03-28 move low position trim up, graph was not showing; increase erasing free mix name
-- 2025-07-19 adapt macro to new Ethos 1.7 source select

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("zblank.bin")
-- load user defined checklist
simulator.sleep(1) -- wait for checklist to load
simulator.pressKey(KEY_ENTER) -- accept checklist
simulator.pressKey(KEY_MDL) 
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- model select
simulator.turnRotaryEncoder(5) -- go to + icon
simulator.pressKey(KEY_ENTER) -- create new model
simulator.turnRotaryEncoder(1) -- highlight create model select
simulator.screenshot("../assets/tut-fw-eg-create-model.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-fw-eg-wiz-create-airplane.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-fw-eg-wiz-rx.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-fw-eg-wiz-engine.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-fw-eg-wiz-ail-flaps.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-fw-eg-wiz-tail.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-fw-eg-wiz-ele-rudd.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/tut-fw-eg-wiz-ch-reassign.png")
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(316, 356)
simulator.touch(123, 299)
simulator.touch(67, 406)
simulator.touch(200, 303)
simulator.touch(240, 403)
simulator.touch(86, 353)
simulator.touch(640, 403)
simulator.touch(757, 303)
simulator.touch(713, 350)
simulator.touch(200, 300)
simulator.touch(738, 449)
simulator.screenshot("../assets/tut-fw-eg-wiz-name.png")
simulator.pressKey(KEY_PAGE)
--end of wizard, start of mixes
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/tut-fw-eg-mixes-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/tut-fw-eg-mixes.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- cursor on ail mix
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-mix.png")
--[[
simulator.turnRotaryEncoder(5) -- cursor on weight
--simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 447)
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 2) -- set switch SB down as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 444)
simulator.turnRotaryEncoder(-7)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(5) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) --confirm
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.turnRotaryEncoder(4) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(4) -- scroll to SB-
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(393, 451) -- set 10% steps
simulator.turnRotaryEncoder(-4) -- reduce from 100 to 60%
simulator.pressKey(KEY_ENTER) --confirm
--
simulator.turnRotaryEncoder(1) -- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- confirm
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(5) -- scroll to SB down
simulator.pressKey(KEY_ENTER) --confirm
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(394, 448) -- set 10% steps
simulator.turnRotaryEncoder(-7) -- reduce to 30%
simulator.pressKey(KEY_ENTER) --confirm
-- simulator.screenshot("./screenshot1.png")
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-weight-rates.png")
--end of ail mix review, start of ele mix review
--[[
simulator.turnRotaryEncoder(-8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 449)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0)
simulator.touch(391, 450)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 2) -- set switch SB down as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(394, 453)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
]]--
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.turnRotaryEncoder(-8) -- scroll back to curve
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- yes
simulator.turnRotaryEncoder(1) -- scroll to wt
simulator.pressKey(KEY_ENTER) -- yes
simulator.touch(392, 443) -- set 10% steps
simulator.turnRotaryEncoder(6) -- 60%
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to add curve
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) -- back to active cond
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to SB-
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to curve type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) --scroll to wt
simulator.pressKey(KEY_ENTER) --y
simulator.touch(382, 445) --set 10% steps
simulator.turnRotaryEncoder(4) -- 40%
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) -- scroll to add curve
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) -- back to active cond
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- scrll to SB down
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to curve type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to wt
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(397, 448) -- set 10% steps
simulator.turnRotaryEncoder(2) -- 20%
simulator.pressKey(KEY_ENTER) -- y
--simulator.screenshot("./screenshot2.png")
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-expo-rates.png")
--end of ele mix review, start of diff
simulator.setSwitch(1, 0) -- set switch SB off as rates switch
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER) -- diff
simulator.touch(397, 448)
simulator.turnRotaryEncoder(5) -- 50% diff
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-diff-50.png")
--simulator.pressKey(KEY_RTN)

simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-diff-use-source.png")
simulator.pressKey(KEY_ENTER)
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.pressKey(KEY_ENTER) -- open source select
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to pot S1
simulator.pressKey(KEY_ENTER) --y
--imulator.screenshot("./screenshot3.png")
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-diff-use-pot1.png")
simulator.pressKey(KEY_ENTER, 1)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-diff-convert-to-value.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(396, 449) --set 10% steps
simulator.turnRotaryEncoder(5) -- 50%
simulator.pressKey(KEY_RTN) --y
simulator.turnRotaryEncoder(1) -- scroll to trim (on by default)
simulator.screenshot("../assets/tut-fw-eg-mixes-ail-trim.png")
--simulator.pressKey(KEY_ENTER, 1)
--
--
--end of ail mix review, start of ele mix review
-- first set weights
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- return to mixes
simulator.turnRotaryEncoder(1) --- cursor on ele
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- edit ele mix
--[[
simulator.turnRotaryEncoder(6) -- cursor on weight
--simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- edit
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(391, 447)
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 2) -- set switch SB down as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 444)
simulator.turnRotaryEncoder(-7)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(6) --- scroll to add new weight
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to SB-
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) --y
simulator.touch(399, 441) --set 10% steps
simulator.turnRotaryEncoder(-4) -- 60%
simulator.pressKey(KEY_ENTER) --y
--
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to add new weighjt
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- scroll to SB down
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) --y
simulator.touch(402, 446) -- set 10%v steps
simulator.turnRotaryEncoder(-7) -- 30%
simulator.pressKey(KEY_ENTER) --y
--
--simulator.screenshot("./screenshot1.png")
-- now set expo
simulator.turnRotaryEncoder(-8) -- scroll back to curves 
simulator.pressKey(KEY_ENTER) -- open curve type
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) --scroll to value
simulator.pressKey(KEY_ENTER) --y
simulator.touch(379, 445) --set 10% steps
simulator.turnRotaryEncoder(6) -- 60% expo
simulator.pressKey(KEY_ENTER) --y
--
-- simulator.screenshot("../assets/tut-fw-eg-mixes-ele-weight-rates.png")
--[[
simulator.turnRotaryEncoder(-8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 449)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 1) -- set switch SB mid as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0)
simulator.touch(391, 450)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.setSwitch(1, 2) -- set switch SB down as rates switch
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(394, 453)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
]]--
--simulator.turnRotaryEncoder(-8) -- scroll back to curve
--simulator.pressKey(KEY_ENTER) -- 
--simulator.turnRotaryEncoder(3) -- scroll to curve
--simulator.pressKey(KEY_ENTER) -- y
--simulator.turnRotaryEncoder(1) -- scroll to expo
--simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(1) -- scroll to value
--simulator.pressKey(KEY_ENTER) --y
--simulator.touch(391, 447) -- set 10% steps
--simulator.turnRotaryEncoder(6) -- 60%
--simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to add curve
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to SB-
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1)-- scroll to curve type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to wt
simulator.pressKey(KEY_ENTER) -- y
simulator.touch(380, 449) -- set 10% steps
simulator.turnRotaryEncoder(4) -- 40% expo
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) --scroll to add curve
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(5) -- scroll to SB down
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to curve type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to expo
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) --y
--simulator.touch(405, 450) --set 10% steps
--simulator.turnRotaryEncoder(0)
simulator.touch(378, 443) --set 10% steps
simulator.turnRotaryEncoder(2) --20% expo
simulator.pressKey(KEY_ENTER) -- y
--

--[[
simulator.turnRotaryEncoder(2) --scroll past add curve to weight
simulator.pressKey(KEY_ENTER) -- edit weight action
simulator.turnRotaryEncoder(3) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.pressKey(KEY_ENTER) -- scroll to SB-
simulator.turnRotaryEncoder(4) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) --scroll to SB-
simulator.pressKey(KEY_ENTER) -- --y
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) --y
simulator.touch(377, 457) -- set to 10% steps
simulator.turnRotaryEncoder(-4) -- reduce to 60%
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to add weight
simulator.pressKey(KEY_ENTER) --y
--simulator.turnRotaryEncoder(0)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(6) -- scroll to SB down
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to weight
simulator.pressKey(KEY_ENTER) --y
simulator.touch(388, 446) --set to 10% steps
simulator.turnRotaryEncoder(-7) -- reduce to 30%
simulator.pressKey(KEY_ENTER) --y
--simulator.screenshot("./screenshot2.png")




]]--
simulator.screenshot("../assets/tut-fw-eg-mixes-ele-expo-rates.png")
simulator.pressKey(KEY_RTN, 1)

-- end of ele, start of thr
simulator.setAnalog(1, 20) -- set thr to +20%
simulator.setSwitch(0, 2) -- move switch SA down
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) -- scroll to thr mix
simulator.pressKey(KEY_ENTER)--y
simulator.turnRotaryEncoder(1) -- scroll; to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- cursor on thr mix
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-edit.png")
--simulator.turnRotaryEncoder(4) -- cursor to thr cut
simulator.turnRotaryEncoder(3) -- cursor to low pos trim
simulator.pressKey(KEY_ENTER) -- set low pos trim On
simulator.sleep(1) -- wait for sim
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-low-pos-trim.png")
simulator.pressKey(KEY_ENTER) -- set low pos trim Off

simulator.turnRotaryEncoder(1) -- cursor to thr cur
simulator.pressKey(KEY_ENTER) -- open thr cut section
simulator.turnRotaryEncoder(1) -- cursor to active cond
simulator.pressKey(KEY_ENTER) --y
-- select sw SA down
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(3) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to SA down
simulator.pressKey(KEY_ENTER) --y
-- end of sw SA select
--simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(4) -- scroll to see all thr cut
--simulator.screenshot("../assets/tut-fw-eg-mixes-thr-cut.png")
simulator.turnRotaryEncoder(-5) -- scroll back to thr cut heading
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-cut.png")
simulator.turnRotaryEncoder(2) --  scroll to Sticky
simulator.pressKey(KEY_ENTER) -- set Sticky ON
simulator.turnRotaryEncoder(-3) -- move cursor off thr cut to allow sim to execute changes
simulator.sleep(1) -- wait for sim
simulator.turnRotaryEncoder(3) -- scroll back to Sticky
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-cut-sticky-on.png")
simulator.pressKey(KEY_ENTER) -- set Sticky Off
-- simulator.turnRotaryEncoder(-3) -- scroll to low pos trim
-- simulator.pressKey(KEY_ENTER) -- set low pos trim On
-- simulator.sleep(1) -- wait for sim
-- simulator.screenshot("../assets/tut-fw-eg-mixes-thr-low-pos-trim.png")
-- simulator.pressKey(KEY_ENTER) -- set low pos trim Off
-- imulator.turnRotaryEncoder(6) -- scroll down to thr hold
simulator.turnRotaryEncoder(3) -- scroll down to thr hold
simulator.pressKey(KEY_ENTER) -- open thr hold
-- back to old section
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- edit thr hold sw
-- simulator.setSwitch(2, 2) -- move switch SA -- sim funny
-- simulator.sleep(1) -- wait for sim
-- simulator.setSwitch(0, 2) -- set switch SA down as thr hold switch
-- select sw SA down
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(3) -- scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to SA down
simulator.pressKey(KEY_ENTER) --y
-- end of sw SA select
--simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(5)

--simulator.screenshot("./screenshot5.png") -- temp turn around mark
simulator.turnRotaryEncoder(-6)
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-hold.png")
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/tut-fw-eg-mixes-thr-ch3.png")
simulator.pressKey(KEY_RTN, 1)

-- end of thr mix, start of flaps
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- cursor on flaps
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- cursor on edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(3) -- cusor on input
simulator.pressKey(KEY_ENTER) --
-- select sw SE
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) -- scroll to SE
simulator.pressKey(KEY_ENTER) --y
-- end select sw SE
simulator.screenshot("../assets/tut-fw-eg-mixes-flaps-input.png")
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 443)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(401, 435)
simulator.turnRotaryEncoder(7)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-fw-eg-mixes-flaps-weights.png")
simulator.pressKey(KEY_RTN, 1)

-- end of flaps mix, start of outputs
simulator.setAnalog(1, -100) -- set thr to -100
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(5)
simulator.screenshot("../assets/tut-fw-eg-outputs-icon.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/tut-fw-eg-outputs.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/tut-fw-eg-outputs-edit-ail.png")
simulator.pressKey(KEY_RTN, 1)

--end of outputs, start of retracts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- open ail dialog
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to add mix
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/tut-fw-eg-mixes-library.png")
simulator.turnRotaryEncoder(1) -- scroll to free mix
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --scroll to last p[osition]
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
simulator.pressKey(KEY_ENTER) -- edit
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
simulator.pressKey(KEY_DISP)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(737, 398)
simulator.touch(277, 302)
simulator.touch(57, 403) --R
simulator.touch(196, 307) --shift
simulator.touch(366, 303) --e
simulator.touch(284, 302) --t
simulator.touch(84, 351) --r
simulator.touch(316, 405) --a
simulator.touch(364, 306) --c
simulator.touch(159, 356) --t
simulator.touch(749, 447) --s
simulator.pressKey(KEY_RTN) --end edit
simulator.turnRotaryEncoder(3) -- scroll to source
simulator.pressKey(KEY_ENTER) --y
-- start of select sw SF
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) -- scroll to SE
simulator.pressKey(KEY_ENTER) --y
-- end of select sw SF
simulator.screenshot("../assets/tut-fw-eg-retracts-source.png")
simulator.turnRotaryEncoder(6) -- scroll to output1
simulator.pressKey(KEY_ENTER) --y
--simulator.pressKey(KEY_RTN)
--simulator.turnRotaryEncoder(1) -- 2
--simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) --confirm copy name
simulator.screenshot("../assets/tut-fw-eg-retracts-outputs.png")
simulator.pressKey(KEY_RTN, 1)

