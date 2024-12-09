-- 2024-12-04 change adcValue() to setAnalog()
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.setAnalog(1, 100)
simulator.screenshot("../assets/mainview.png") -- Home screen
simulator.connectUsb()
simulator.screenshot("../assets/usbmenu.png") -- USB menu

