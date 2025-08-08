-- 2024-12-04 change adcValue() to setAnalog()
-- 2025-08-08 adapt macro to new Ethos 1.7 source select

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
simulator.setAnalog(2, -10)
simulator.sleep(1) -- wait for adc values
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(4) -- scroll to mixes
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(4) -- scroll to ele
simulator.screenshot("../assets/model-mixes-chview-elevator.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to ch view
simulator.screenshot("../assets/model-mixes-chview-select.png")
simulator.pressKey(KEY_ENTER)
simulator.sleep(3) -- wait 
simulator.screenshot("../assets/model-mixes-chview-elevator-channel-view.png")
simulator.turnRotaryEncoder(-1) -- scroll back to parent ch
simulator.screenshot("../assets/model-mixes-chview-elevator-channel.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-chview-collapsed.png")
simulator.pressKey(KEY_ENTER) -- uncollapse
simulator.turnRotaryEncoder(1) -- scroll to ele
simulator.pressKey(KEY_ENTER) -- open options menu
simulator.turnRotaryEncoder(2) -- scroll to table view
simulator.screenshot("../assets/model-mixes-chview-table-view-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-chview-back-at-mixes-view.png")
simulator.pressKey(KEY_RTN, 1)

