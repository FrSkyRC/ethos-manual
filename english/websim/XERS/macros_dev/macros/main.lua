-- 2026-08-04 created

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_DISP) -- open Display page
--
simulator.pressKey(KEY_PAGE) -- page to add
simulator.pressKey(KEY_PAGE) -- page around to top screen
simulator.screenshot("/screenshots/top-screen-default.png")
simulator.turnRotaryEncoder(1) -- scroll to top screen
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(5) -- scroll to channels
simulator.pressKey(KEY_ENTER) -- select
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit edit
simulator.screenshot("/screenshots/top-screen-channels.png")
simulator.pressKey(KEY_RTN) -- deselect
--
-- now to change layout
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(1)
simulator.screenshot("/screenshots/top-screen-change-layout-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/top-screen-change-layout.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1) -- home
--
-- now do hardware / switches
simulator.pressKey(KEY_SYS) -- open sys menu
simulator.turnRotaryEncoder(6) -- scroll to hw
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(6) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(20) -- move cursor down until sw1 on first line
simulator.turnRotaryEncoder(-18) -- scroll back to sw1
simulator.screenshot("/screenshots/xers-hw-switches.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 0.6)