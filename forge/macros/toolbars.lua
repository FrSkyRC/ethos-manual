-- 2025-12-07 make macro other language friendly

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("topbar.bin")
simulator.pressKey(KEY_ENTER)
simulator.connectUsb()
simulator.pressKey(KEY_RTN) -- we cancel the USB popup without choosing anything
-- set up race mode
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to RF
simulator.pressKey(KEY_ENTER) -- open RF
simulator.turnRotaryEncoder(7) -- scroll to ch range upper
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(-1) -- reduce to CH8
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to racing mode
simulator.pressKey(KEY_ENTER) -- edit 
simulator.turnRotaryEncoder(2) -- scroll to always on
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to main menu
-- set screen lock on
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(4) -- scroll to sf
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(2) -- scroll to lockscreen
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to enable
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("/screenshots/topbar.png", {x=0, y=0, w=800, h=90}) -- Top bar
simulator.screenshot("/screenshots/bottombar.png", {x=0, y=410, w=800, h=70})
--simulator.touch(510, 33)
simulator.pressKey(KEY_SYS)
simulator.pressKey(KEY_PAGE)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-info-errors.png")

simulator.pressKey(KEY_RTN, 1)