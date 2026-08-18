-- 2024-12-04 change adcValue() to setAnalog()
-- 2025-10-04 adapt screenshots location for we sim
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.setAnalog(throttleAnalogIndex, 100)
simulator.screenshot("/screenshots/mainview.png") -- Home screen
simulator.connectUsb()
simulator.screenshot("/screenshots/usbmenu.png") -- USB menu

simulator.pressKey(KEY_RTN, 1)