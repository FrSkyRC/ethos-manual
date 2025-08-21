-- 2024-12-06 LT 
-- 2025-08-05 adapt to 1.7 source select, new '+' add button and comments

--dofile("common.lua")
simulator.setDateTime({year=2024, month=12, day=7, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_SYS) -- open system menu
simulator.turnRotaryEncoder(4) -- croll to general
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(28) -- scroll to end
-- simulator.screenshot("./screenshot1.png") -- placeholder for fwd/reverse of encoder
simulator.turnRotaryEncoder(-3) -- scroll back to haptic motor option select
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-haptic-x20proaw.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to system menu
simulator.turnRotaryEncoder(2) -- scroll to hardware
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(32) -- scroll to end
-- simulator.screenshot("./screenshot1.png")
simulator.turnRotaryEncoder(-1) -- scroll back to encoder half step option
simulator.screenshot("../assets/system-hardware-x20proaw-encoder-option.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(4) -- scroll to SF
simulator.pressKey(KEY_ENTER)
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add new SF
simulator.touch(571, 91) -- add new sf button '+'
-- 
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to haptic
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to haptic select
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-sf-haptic-x20proaw.png")
simulator.pressKey(KEY_RTN, 0.6) -- return home
