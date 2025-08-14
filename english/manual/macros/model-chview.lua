-- 2024-12-04 change adcValue() to setAnalog()
-- 2025-08-04 adapt for no add in options, add comments

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("blaster.bin")

simulator.setAnalog(1, -70)
--simulator.setAnalog(ANALOG_LAST_SLIDER, (-0.0 * 100 / 1024))
simulator.setAnalog(ANALOG_LAST_SLIDER, -1024)
simulator.setAnalog(2, -10) -- thr
simulator.sleep(1) -- wait for adc values
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(4) -- scroll to elevator 
simulator.screenshot("../assets/model-mixes-chview-elevator.png")
simulator.pressKey(KEY_ENTER) -- open mix
simulator.turnRotaryEncoder(2) -- scroll to channel view
simulator.screenshot("../assets/model-mixes-chview-select.png")
simulator.pressKey(KEY_ENTER) -- enable
simulator.sleep(3) -- wait 
simulator.screenshot("../assets/model-mixes-chview-elevator-channel-view.png")
simulator.turnRotaryEncoder(-1) -- scroll back to ch ele parent
simulator.screenshot("../assets/model-mixes-chview-elevator-channel.png")
simulator.pressKey(KEY_ENTER) -- toggle to ch ele parent collapsed
simulator.screenshot("../assets/model-mixes-chview-collapsed.png")
simulator.pressKey(KEY_ENTER) -- toggle to ch ele parent collapsed expanded
simulator.turnRotaryEncoder(1) -- scroll to ele mix
simulator.pressKey(KEY_ENTER) -- open ch view options
simulator.turnRotaryEncoder(2) -- scroll to table view
simulator.screenshot("../assets/model-mixes-chview-table-view-select.png")
simulator.pressKey(KEY_ENTER) -- enable table view
simulator.screenshot("../assets/model-mixes-chview-back-at-mixes-view.png")
simulator.pressKey(KEY_RTN, 1)

