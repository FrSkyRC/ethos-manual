-- 2025-08-15 first release

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_SYS) -- open system menu
simulator.turnRotaryEncoder(6) -- scroll to hw
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(8) -- scroll to BT Audio
--simulator.screenshot("../assets/system-hardware-bt-audio.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/system-hardware-bt-audio-options.png")
simulator.pressKey(KEY_RTN, 1) -- return home 
