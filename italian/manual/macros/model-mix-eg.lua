
dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- accept checklist alert
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to 1st mix
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to add
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to last pos
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to default weight action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to del
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.touch(43, 23)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER, 1) -- invoke invert dialog
simulator.turnRotaryEncoder(1) -- scroll to invert
simulator.pressKey(KEY_ENTER) -- invert
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) -- scroll to while active
simulator.pressKey(KEY_ENTER)
simulator.touch(392, 443) -- 10%
simulator.touch(392, 443) -- 100%
simulator.turnRotaryEncoder(-2) -- select -100%
simulator.pressKey(KEY_ENTER) -- set -100%
simulator.pressKey(KEY_RTN) -- exit edit
simulator.pressKey(KEY_RTN) -- back to mixes
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-eg-using-weight.png")
simulator.touch(37, 33)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(6) -- scroll to default weight action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4) -- scroll to del
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.touch(393, 443)
simulator.touch(393, 443)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(390, 452)
simulator.touch(390, 452)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-eg-using-offset-actions.png")
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mix-eg-using-offset.png")
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.screenshot("../assets/model-mix-eg-using-offset-actions.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 1)
