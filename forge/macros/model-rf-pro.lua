dofile("common.lua")

simulator.loadModel("edge 540.bin")

simulator.setAnalog(throttleStickIndex, -100)
simulator.pressKey(KEY_ENTER) -- ack alerts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(2) -- scroll to int module group
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to state 
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(7) -- move cursor
simulator.turnRotaryEncoder(-1) -- move cursor
simulator.screenshot("/screenshots/model-rf-pro-protocol-select-access.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to d16
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-rf-pro-protocol-select-d16.png")
simulator.turnRotaryEncoder(6) -- move cursor
simulator.turnRotaryEncoder(-2) -- move cursor to bind
simulator.screenshot("/screenshots/model-rf-pro-d16.png") -- in d16 mode
simulator.pressKey(KEY_ENTER) -- enable bind
simulator.turnRotaryEncoder(1) -- scroll to ch1-ch8
simulator.screenshot("/screenshots/model-rf-pro-d16-bind-select-ch1-ch8.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-pro-d16-bind-waiting.png")
simulator.pressKey(KEY_RTN) -- exit bind
simulator.turnRotaryEncoder(-2) -- scroll back to 900m enable
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(7) -- move cursor
simulator.turnRotaryEncoder(-7) -- move cursor
simulator.screenshot("/screenshots/model-rf-pro-900m-enabled.png")
simulator.turnRotaryEncoder(2)
simulator.screenshot("/screenshots/model-rf-pro-900m-register-select.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("/screenshots/model-rf-pro-900m-rx1-select.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- exit rf
--
-- now do tw mode
simulator.pressKey(KEY_ENTER) -- open rf
simulator.turnRotaryEncoder(4) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(2) -- scroll to tw
simulator.screenshot("/screenshots/model-rf-pro-protocol-select-tw.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(5)
simulator.turnRotaryEncoder(-5) -- move cursor
simulator.screenshot("/screenshots/model-rf-pro-protocol-tw.png")
simulator.turnRotaryEncoder(4) -- scroll to antenna
simulator.screenshot("/screenshots/model-rf-pro-tw-antenna.png")
simulator.turnRotaryEncoder(1) -- scroll to 900m
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(8)
simulator.turnRotaryEncoder(-2) -- move cursor to rx2
simulator.screenshot("/screenshots/model-rf-pro-tw-900m.png")
simulator.turnRotaryEncoder(-6) -- move cursor back to 900m
simulator.pressKey(KEY_ENTER) -- disable
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(8)
simulator.turnRotaryEncoder(-5) -- move cursor
simulator.screenshot("/screenshots/model-rf-pro-tw-register-select.png")
simulator.turnRotaryEncoder(1) -- scroll to rx1
simulator.screenshot("/screenshots/model-rf-pro-tw-rx1-select.png")

simulator.pressKey(KEY_RTN, 0.6) -- go home
