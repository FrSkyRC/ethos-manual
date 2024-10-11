dofile("common.lua")

simulator.loadModel("blaster.bin")

simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/model-icon-trims.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trims.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trims-step-options.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trims-mode-option-easy.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-trims-mode-option-fm.png")
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-trims-mode-option-off.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(9)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-3)
simulator.screenshot("../assets/model-trims-mode-elevator.png") -- elevator mode
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-trims-mode-elevator-custom-select.png") -- select custom
simulator.pressKey(KEY_ENTER) -- custom mode
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-trims-mode-elevator-add-behaviour.png") -- select add behaviour
simulator.pressKey(KEY_ENTER) -- add behaviour
simulator.screenshot("../assets/model-trims-mode-elevator-edit-behaviour.png") -- edit behaviour
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER) -- add condition

-- simulator.turnRotaryEncoder(2)

-- simulator.turnRotaryEncoder(1)
-- simulator.screenshot("./screenshot11.png")
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- add condiition
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) --- select cat
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- select fm
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- select mode
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- select speed
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER) -- edit trim mode
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-trims-mode-elevator-edit-behaviour-offset.png") -- select offset + default
simulator.pressKey(KEY_ENTER) -- Offset + default

simulator.turnRotaryEncoder(1) -- back on trim
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)  
simulator.pressKey(KEY_ENTER) -- select cond
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- select act
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- select fm
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- select mode
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- select thermal
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) 
simulator.pressKey(KEY_ENTER) -- edit trim mode
simulator.turnRotaryEncoder(2)

simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) 
simulator.screenshot("../assets/model-trims-mode-elevator-custom.png")
-- end elevator
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)-- model/trims
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)-- custom trim
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)-- add behaviour
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
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
simulator.turnRotaryEncoder(1)
simulator.touch(461, 445)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/model-trims-mode-unplugged-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-trims-mode-unplugged-select.png")
--end throttle

simulator.turnRotaryEncoder(10) -- cross trim
simulator.pressKey(KEY_ENTER) -- cross trim form
simulator.turnRotaryEncoder(5) 
simulator.turnRotaryEncoder(-5) 
simulator.screenshot("../assets/model-trims-cross-edit.png") -- cross trim
simulator.pressKey(KEY_ENTER) -- collapse cross trim
--simulator.turnRotaryEncoder(-5) 
simulator.screenshot("../assets/model-trims-cross.png") -- cross trim
simulator.turnRotaryEncoder(1) 
simulator.screenshot("../assets/model-trims-instant-trim.png") -- instant trim
simulator.turnRotaryEncoder(1) 
simulator.screenshot("../assets/model-trims-move-trims-to-subtrims.png") -- trims to subtrims
simulator.turnRotaryEncoder(-3) -- back to add trim

simulator.screenshot("../assets/model-trims-add-trim-select.png") -- add trim
simulator.pressKey(KEY_ENTER) -- open add trim
simulator.screenshot("../assets/model-trims-add-trim-edit.png") -- add trim

simulator.pressKey(KEY_RTN, 1)

