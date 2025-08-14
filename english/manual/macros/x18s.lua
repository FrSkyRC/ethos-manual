-- 2025-08-14 enable dofile, tweak comments

dofile("common.lua")
-- simulator.setDateTime({year=2024, month=12, day=07, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(6) -- scroll to Hardware
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to hardware check
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/system-hardware-check-x18s.png")
simulator.pressKey(KEY_RTN) exit

