-- 2025-11-27 first release

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("signature edge.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(5) -- scroll to sequence mix
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.screenshot("/screenshots/how-to-seq-gear-name.png")
simulator.turnRotaryEncoder(14) -- scroll to bottonm of page
simulator.turnRotaryEncoder(-3) -- scroll back to op1 menu
simulator.screenshot("/screenshots/how-to-seq-gear-op1-menu-button.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit fwd curve
simulator.screenshot("/screenshots/how-to-seq-gear-op1-edit-fwd-curve.png")
simulator.pressKey(KEY_ENTER) -- edit fwd curve
simulator.screenshot("/screenshots/how-to-seq-gear-op1-fwd-curve.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(2) -- scroll to op2 menu
simulator.screenshot("/screenshots/how-to-seq-gear-op2-menu-button.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit fwd curve
simulator.screenshot("/screenshots/how-to-seq-gear-op2-edit-fwd-curve.png")
simulator.pressKey(KEY_ENTER)  -- edit fwd curve
simulator.screenshot("/screenshots/how-to-seq-gear-op2-fwd-curve.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(2) -- scroll to edit backw curve
simulator.screenshot("/screenshots/how-to-seq-gear-op2-edit-bkwd-curve.png")
simulator.pressKey(KEY_ENTER) -- edit backw curve
simulator.screenshot("/screenshots/how-to-seq-gear-op2-bkwd-curve.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 0.6)