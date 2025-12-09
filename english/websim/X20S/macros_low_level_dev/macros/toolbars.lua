-- 2025-12-07 make macro other language friendly

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("topbar.bin")
simulator.pressKey(KEY_ENTER)
simulator.connectUsb()
simulator.pressKey(KEY_RTN) -- we cancel the USB popup without choosing anything
simulator.screenshot("/screenshots/topbar.png", {x=0, y=0, w=800, h=90}) -- Top bar
simulator.screenshot("/screenshots/bottombar.png", {x=0, y=410, w=800, h=70})
--simulator.touch(510, 33)
simulator.pressKey(KEY_SYS)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-info-errors.png")

simulator.pressKey(KEY_RTN, 1)