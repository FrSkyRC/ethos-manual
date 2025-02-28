--dofile("common.lua")
simulator.setDateTime({year=2024, month=12, day=7, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-filemanager-radio.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(3) -- General selected
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-13)
simulator.screenshot("../assets/system-general-storage.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(2) -- Hardware selected
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10)
simulator.turnRotaryEncoder(-6)
simulator.screenshot("../assets/system-hardware-pots-x20pro.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(30)
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/system-hardware-switches-x20pro.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-hardware-haptic-x20pro.png")
simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-adc-check-x20pro.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-info-x20pro.png")
-- simulator.pressKey(KEY_RTN, 1) -- home
simulator.sleep(5) -- wait fsys info
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.pressKey(KEY_MDL) 
simulator.turnRotaryEncoder(7) -- trims
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(31)
simulator.turnRotaryEncoder(-6)
simulator.screenshot("../assets/model-trims-pro-t5-t6.png") -- add trim
simulator.pressKey(KEY_RTN, 1) -- home

simulator.pressKey(KEY_MDL) 
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.touch(479, 352)
simulator.touch(64, 403)
simulator.touch(209, 307)
simulator.touch(716, 357)
simulator.touch(716, 357)
simulator.touch(673, 303)
simulator.touch(429, 450)
simulator.touch(71, 394)
simulator.touch(117, 299)
simulator.touch(66, 401)
simulator.touch(670, 308)
simulator.touch(280, 303)
simulator.touch(714, 353)
simulator.touch(240, 351)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-sf-x20pro-play-text.png")
--
--remove below due to new x20proaw.lua
--[[
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-sf-haptic-x20proaw.png")
simulator.pressKey(KEY_RTN, 1) -- home
]]--