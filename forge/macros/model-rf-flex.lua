dofile("common.lua")

simulator.loadModel("edge 540.bin")

simulator.setAnalog(throttleStickIndex, -100)
simulator.pressKey(KEY_ENTER) -- ack alerts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- enable rf module
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- enable
--simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.turnRotaryEncoder(2) -- scroll to flex option
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-rf-flex-select-protocol.png")
simulator.pressKey(KEY_ENTER) -- enabkle fcc
simulator.turnRotaryEncoder(6) -- scroll to 900m 
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(2) -- scroll to power
simulator.pressKey(KEY_ENTER) -- open power options
simulator.turnRotaryEncoder(1) -- scroll to 25mw
simulator.screenshot("/screenshots/model-rf-flex-900m-power-options.png")
simulator.pressKey(KEY_ENTER, 0.6) -- return home