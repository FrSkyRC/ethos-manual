-- 2024-12-03 9) due to gyro switch category added
-- 2025-07-21 adapt macro to new Ethos 1.7 source select
-- 2025-12-22 add new trims to subtrims options

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("blaster.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(7) -- scroll to trims
simulator.screenshot("/screenshots/model-icon-trims.png")
simulator.pressKey(KEY_ENTER) -- open trims
simulator.screenshot("/screenshots/model-trims.png")
simulator.turnRotaryEncoder(3) -- scroll to step
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-trims-step-options.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(1) -- scroll to mode
simulator.pressKey(KEY_ENTER) -- open mode
simulator.screenshot("/screenshots/model-trims-mode-option-easy.png")
simulator.turnRotaryEncoder(1) -- scroll to fm
simulator.screenshot("/screenshots/model-trims-mode-option-fm.png")
simulator.turnRotaryEncoder(2) -- scroll to off
simulator.screenshot("/screenshots/model-trims-mode-option-off.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(9) -- scroll to end of elevator
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-3) -- scroll back to mode
simulator.screenshot("/screenshots/model-trims-mode-elevator.png") -- elevator mode
simulator.pressKey(KEY_ENTER) -- open mode
simulator.turnRotaryEncoder(2) -- scroll to custom
simulator.screenshot("/screenshots/model-trims-mode-elevator-custom-select.png") -- select custom
simulator.pressKey(KEY_ENTER) -- custom mode
simulator.turnRotaryEncoder(2) -- scroll to add behaviour 
simulator.screenshot("/screenshots/model-trims-mode-elevator-add-behaviour.png") -- select add behaviour
simulator.pressKey(KEY_ENTER) -- add behaviour
simulator.screenshot("/screenshots/model-trims-mode-elevator-edit-behaviour.png") -- edit behaviour
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER) -- add condition

-- simulator.turnRotaryEncoder(2)

-- simulator.turnRotaryEncoder(1)
-- simulator.screenshot("./screenshot11.png")
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- add condiition
--select speed
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) --- select cat
simulator.turnRotaryEncoder(9) -- 2024-12-03 from 8 to 9 due to gyro switch added
simulator.pressKey(KEY_ENTER) -- select fm
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- select mode
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- select speed
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(10) --scroll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to speed
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER) -- edit trim mode
simulator.turnRotaryEncoder(-1) -- scroll back to unplugged
simulator.screenshot("/screenshots/model-trims-mode-elevator-edit-behaviour-unplugged.png") -- select offset + default
simulator.turnRotaryEncoder(2) -- scrolll to equakl default
simulator.screenshot("/screenshots/model-trims-mode-elevator-edit-behaviour-equal.png") -- select offset + default

simulator.turnRotaryEncoder(1) -- scroll to offset + default
simulator.screenshot("/screenshots/model-trims-mode-elevator-edit-behaviour-offset.png") -- select offset + default
simulator.pressKey(KEY_ENTER) -- Offset + default
simulator.screenshot("/screenshots/model-trims-mode-elevator-custom-speed.png")
simulator.turnRotaryEncoder(1) -- scroll to add behaviour
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- select cond
-- select thermal
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select cat
simulator.turnRotaryEncoder(9) -- 2024-12-03 from 8 to 9 due to gyro switch added
simulator.pressKey(KEY_ENTER) -- select fm
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- select mode
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- select thermal
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(10) --scroll to fm
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(4) --scroll to thermal
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) -- scroll t0 mode
simulator.pressKey(KEY_ENTER) -- edit trim mode
simulator.screenshot("/screenshots/model-trims-mode-elevator-custom-select.png")
simulator.turnRotaryEncoder(4) -- scroll to offset + fm5
simulator.screenshot("/screenshots/model-trims-mode-elevator-custom-select-2.png")
simulator.turnRotaryEncoder(-2) -- scroll to offset + default
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to add new behaviour
simulator.screenshot("/screenshots/model-trims-mode-elevator-custom-speed-thermal.png")
simulator.turnRotaryEncoder(1) -- scroll to trim to subtrim
simulator.screenshot("/screenshots/model-trims-mode-elevator-trim-to-subtrim-select.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-trims-mode-elevator-trim-to-subtrim-options.png")
simulator.pressKey(KEY_RTN) -- exit
-- end elevator
simulator.turnRotaryEncoder(4) -- scroll to thr easy mode
simulator.pressKey(KEY_ENTER)-- open mode
simulator.turnRotaryEncoder(2) -- scroll to custom
simulator.pressKey(KEY_ENTER)-- custom trim
simulator.turnRotaryEncoder(2) -- scroll to add behaviour
simulator.pressKey(KEY_ENTER)-- add behaviour
simulator.turnRotaryEncoder(-1) -- scroll back to active cond
simulator.pressKey(KEY_ENTER) -- open
-- select calactive
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(6) --scroll to lsw
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2)  --scroll to calactive
simulator.pressKey(KEY_ENTER) --y
-- end select
simulator.turnRotaryEncoder(1) -- scroll to mode
--simulator.touch(461, 445)
simulator.pressKey(KEY_ENTER) -- open mode
simulator.turnRotaryEncoder(-1) -- scroll back to uplugged
simulator.screenshot("/screenshots/model-trims-mode-unplugged-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-trims-mode-unplugged-select.png")
--end throttle

simulator.turnRotaryEncoder(10) -- scroll to cross trim heading
simulator.pressKey(KEY_ENTER) -- cross trim form
simulator.turnRotaryEncoder(5) -- scroll to end
simulator.turnRotaryEncoder(-5) -- scroll back
simulator.screenshot("/screenshots/model-trims-cross-edit.png") -- cross trim
simulator.pressKey(KEY_ENTER) -- collapse cross trim
--simulator.turnRotaryEncoder(-5) 
simulator.screenshot("/screenshots/model-trims-cross.png") -- cross trim
simulator.turnRotaryEncoder(1) -- scroll to instant trim
simulator.screenshot("/screenshots/model-trims-instant-trim.png") -- instant trim
simulator.turnRotaryEncoder(1) -- scroll to trims to subtrims
simulator.screenshot("/screenshots/model-trims-move-trims-to-subtrims.png") -- trims to subtrims
simulator.pressKey(KEY_ENTER) -- open move trims to subtrims
simulator.screenshot("/screenshots/model-trims-move-trims-to-subtrims-options.png") -- trims to subtrims
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(-3) -- back to add trim

simulator.screenshot("/screenshots/model-trims-add-trim-select.png") -- add trim
simulator.pressKey(KEY_ENTER) -- open add trim
simulator.screenshot("/screenshots/model-trims-add-trim-edit.png") -- add trim

simulator.pressKey(KEY_RTN, 1)

