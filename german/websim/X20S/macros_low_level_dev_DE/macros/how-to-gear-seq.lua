-- 2025-11-27 first release
-- 2025-12-03 improve the how to with different fwd and bkwd curves

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

--
-- assign the doors and retracts channels
simulator.loadModel("zblank.bin")
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(5) -- scroll to channels
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(7) -- scroll to ch 7
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(393, 352) --G
simulator.touch(62, 399) --shift
simulator.touch(206, 308) --e
simulator.touch(88, 355) --a
simulator.touch(281, 304) --r
simulator.touch(400, 450) -- space
simulator.touch(52, 399) --shift
simulator.touch(244, 351) --D
simulator.touch(60, 401) -- shift
simulator.touch(677, 307) --o
simulator.touch(677, 307) --o
simulator.touch(282, 308) --r
simulator.touch(161, 354) --s
simulator.touch(743, 450) -- enter
simulator.screenshot("/screenshots/how-to-seq-gear-ch7.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(1) -- scroll to ch 8
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(280, 306) --R
simulator.touch(70, 402) -- shift
simulator.touch(209, 307) --e
simulator.touch(358, 306) --t
simulator.touch(281, 306) --r
simulator.touch(76, 355) --a
simulator.touch(311, 401) --c
simulator.touch(356, 301) --t
simulator.touch(157, 356) --s
simulator.touch(746, 449) --enter
simulator.screenshot("/screenshots/how-to-seq-gear-ch8.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) --exit to channels
simulator.pressKey(KEY_RTN) -- deselect
simulator.screenshot("/screenshots/how-to-seq-gear-channels.png")
simulator.pressKey(KEY_RTN, 0.6)
--
-- now do sequencer
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
simulator.turnRotaryEncoder(2) -- scroll to add bkwd curve
simulator.screenshot("/screenshots/how-to-seq-gear-op1-add-bkwd-curve.png")
simulator.turnRotaryEncoder(-1) -- scroll to edit fwd curve
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
simulator.turnRotaryEncoder(2) -- scroll to add backw curve
simulator.screenshot("/screenshots/how-to-seq-gear-op2-add-bkwd-curve.png")
simulator.pressKey(KEY_ENTER) -- add backw curve
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(2) -- scroll edit backw curve
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(3) -- scroll to pt 4
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(389, 443) -- increase step
simulator.turnRotaryEncoder(5) -- increase to 1.5s
simulator.pressKey(KEY_ENTER) -- accept
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 449)
simulator.turnRotaryEncoder(10)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 450)
simulator.turnRotaryEncoder(-20)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-5)
simulator.screenshot("/screenshots/how-to-seq-gear-op2-bkwd-curve.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 0.6)