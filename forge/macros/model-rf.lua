dofile("common.lua")

simulator.loadModel("edge 540.bin")


simulator.pressKey(KEY_ENTER) -- ack alerts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.screenshot("/screenshots/model-icon-rf.png")
simulator.pressKey(KEY_ENTER) -- open rf
simulator.screenshot("/screenshots/model-rf-home.png")
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- open int module 
simulator.screenshot("/screenshots/model-rf-internal-module.png")
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- turn on int module
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open protocol menu
simulator.screenshot("/screenshots/model-rf-protocol-select-access.png")
simulator.turnRotaryEncoder(1) -- scroll to D16
simulator.screenshot("/screenshots/model-rf-protocol-select-d16.png")
simulator.turnRotaryEncoder(1) -- scroll to TD
simulator.screenshot("/screenshots/model-rf-protocol-select-td.png")
simulator.pressKey(KEY_RTN) -- exit menu
simulator.screenshot("/screenshots/model-rf-access.png") -- in access mode
simulator.turnRotaryEncoder(7) -- scroll to register
simulator.screenshot("/screenshots/model-rf-access-register.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-access-register-waiting.png")
simulator.sleep(8) -- wait 
simulator.screenshot("/screenshots/model-rf-access-register-rx-connected.png")
simulator.sleep(6) -- wait 
simulator.pressKey(KEY_ENTER)
simulator.sleep(4) -- wait 
simulator.screenshot("/screenshots/model-rf-access-register-registration-ok.png")
simulator.pressKey(KEY_ENTER) -- accept
simulator.turnRotaryEncoder(1) -- scroll to rx1
simulator.screenshot("/screenshots/model-rf-access-rx1.png")
simulator.pressKey(KEY_ENTER) -- commence bind
simulator.screenshot("/screenshots/model-rf-access-rx1-bind-waiting-for-rx.png")
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(1) -- scroll to SR10
simulator.screenshot("/screenshots/model-rf-access-rx1-select-rx.png")
simulator.pressKey(KEY_ENTER) -- select rx
simulator.sleep(4) -- wait 
simulator.screenshot("/screenshots/model-rf-access-rx1-bind-ok.png")
simulator.sleep(4) -- wait 
-- simulator.screenshot("./screenshot15.png")
simulator.pressKey(KEY_ENTER) -- accept binding
simulator.screenshot("/screenshots/model-rf-access-rx1-bound.png")

simulator.pressKey(KEY_ENTER) -- open rx1 menu
simulator.turnRotaryEncoder(1) -- scroll to options
simulator.screenshot("/screenshots/model-rf-access-rx1-menu.png")
simulator.pressKey(KEY_ENTER) -- open options menu
simulator.screenshot("/screenshots/model-rf-access-rx1-options.png")
simulator.turnRotaryEncoder(4) -- scroll to telemetry port
simulator.screenshot("/screenshots/model-rf-access-rx1-telem-port-select.png")
simulator.pressKey(KEY_ENTER) -- open port menu
simulator.screenshot("/screenshots/model-rf-access-rx1-telem-port.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER) -- open rx menu
simulator.turnRotaryEncoder(2) -- scroll to data record
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-select.png")
simulator.pressKey(KEY_ENTER) -- open data record
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record.png")
simulator.pressKey(KEY_RTN, 0.6) -- return home