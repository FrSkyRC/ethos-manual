dofile("common.lua")

simulator.loadModel("edge 540.bin")

simulator.setAnalog(throttleStickIndex, -100)
simulator.pressKey(KEY_ENTER) -- ack alerts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.screenshot("/screenshots/model-icon-rf.png")
simulator.pressKey(KEY_ENTER) -- open rf
simulator.screenshot("/screenshots/model-rf-home.png")
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- open int module 
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- turn on int module
simulator.screenshot("/screenshots/model-rf-internal-module.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open protocol menu
simulator.screenshot("/screenshots/model-rf-protocol-select-access.png")
simulator.turnRotaryEncoder(1) -- scroll to D16
--simulator.screenshot("/screenshots/model-rf-protocol-select-d16.png")
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
simulator.turnRotaryEncoder(1) -- scroll to r9m
simulator.screenshot("/screenshots/model-rf-access-rx1-select-rx2.png")
simulator.turnRotaryEncoder(-1) -- scroll back to rx1
simulator.pressKey(KEY_ENTER) -- select rx
simulator.sleep(4) -- wait 
simulator.screenshot("/screenshots/model-rf-access-rx1-bind-ok.png")
simulator.sleep(4) -- wait 
-- simulator.screenshot("./screenshot15.png")
simulator.pressKey(KEY_ENTER) -- accept binding
simulator.screenshot("/screenshots/model-rf-access-rx1-bound.png")
--
-- now do rx1 options etc
simulator.pressKey(KEY_ENTER) -- open rx1 menu
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(4) -- scroll to share
simulator.screenshot("/screenshots/model-rf-access-rx1-share.png")
simulator.turnRotaryEncoder(-3) -- scroll back to options
simulator.screenshot("/screenshots/model-rf-access-rx1-menu.png")
simulator.sleep(4) -- wait 
simulator.pressKey(KEY_ENTER) -- open options menu
simulator.sleep(8) -- wait 
simulator.screenshot("/screenshots/model-rf-access-rx1-options.png")
simulator.turnRotaryEncoder(4) -- scroll to telemetry port
--simulator.screenshot("/screenshots/model-rf-access-rx1-telem-port-select.png")
simulator.pressKey(KEY_ENTER) -- open port menu
simulator.screenshot("/screenshots/model-rf-access-rx1-telem-port.png")
simulator.pressKey(KEY_RTN) -- exit 
simulator.turnRotaryEncoder(2) -- scroll to SBUS
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-rf-access-rx1-sbus-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER) -- open rx menu
simulator.turnRotaryEncoder(2) -- scroll to data record
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-select.png")
simulator.pressKey(KEY_ENTER) -- open data record
simulator.sleep(2) -- wait 
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-1.png")
simulator.sleep(2) -- wait 
simulator.turnRotaryEncoder(3)
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-2.png")
simulator.sleep(2) -- wait 
simulator.turnRotaryEncoder(5)
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-3.png")
simulator.sleep(2) -- wait 
simulator.turnRotaryEncoder(7)
simulator.screenshot("/screenshots/model-rf-access-rx1-flight-data-record-4.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
--
-- now do rx2
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(-2) -- scroll back to to 900M enable
simulator.pressKey(KEY_ENTER) -- enable 900M
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(9) -- scroll fwd to expose screen
simulator.turnRotaryEncoder(-9) -- scroll back to to 900M enable
simulator.screenshot("/screenshots/model-rf-access-900M-enable.png")
simulator.turnRotaryEncoder(5) -- scroll to rx2
simulator.screenshot("/screenshots/model-rf-access-rx2.png")
simulator.pressKey(KEY_ENTER) -- commence bind
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(2) -- scroll to r9mini
simulator.pressKey(KEY_ENTER) -- commence bind
simulator.sleep(4) -- wait 
simulator.screenshot("/screenshots/model-rf-access-rx2-bind-ok.png")
simulator.sleep(4) -- wait 
-- simulator.screenshot("./screenshot15.png")
simulator.pressKey(KEY_ENTER) -- accept binding
simulator.screenshot("/screenshots/model-rf-access-rx2-bound.png")
--
-- now do failsafe and range test
simulator.turnRotaryEncoder(2) -- scroll to failsafe
simulator.screenshot("/screenshots/model-rf-access-rx1-failsafe-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-rf-access-rx1-failsafe.png")
simulator.turnRotaryEncoder(2) -- scroll to custom failsafe
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(3) -- scroll to throttle
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to custom
simulator.screenshot("/screenshots/model-rf-access-rx1-failsafe-custom-thr.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to custom set button
simulator.pressKey(KEY_ENTER) -- set
simulator.screenshot("/screenshots/model-rf-access-rx1-failsafe-custom-thr2.png")
--simulator.setAnalog(1, -100)
--simulator.pressKey(KEY_ENTER)
--simulator.screenshot("/screenshots/screenshot5.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(1) -- scroll to range check
simulator.screenshot("/screenshots/model-rf-access-rx1-rangecheck-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-access-rx1-rangecheck.png")
simulator.touch(618, 302) -- touch cancel (RTN doesn't work)
--
-- Now clear all Access settings
simulator.turnRotaryEncoder(-2) -- scroll back to failsafe
simulator.pressKey(KEY_ENTER) -- disable
simulator.turnRotaryEncoder(-2) -- scroll to not set
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-2) -- scroll  back to R9mini
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(-2) -- scroll back round to factory reset
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- y factory reset
simulator.turnRotaryEncoder(-1) -- scroll back to rx1 
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(-2) -- scroll back round to factory reset
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_ENTER) -- y factory reset
simulator.turnRotaryEncoder(-4) -- scroll bacl to 900M module
simulator.pressKey(KEY_ENTER) -- disable
simulator.pressKey(KEY_ENTER) -- confirm
simulator.turnRotaryEncoder(-7) -- scroll back to int module enable
simulator.pressKey(KEY_ENTER) -- disable
simulator.pressKey(KEY_ENTER) -- confirm
--
--
-- Now do ACCST D16
--[[
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to int module group
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to state
]]--
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to D16
simulator.screenshot("/screenshots/model-rf-protocol-select-d16.png")
simulator.pressKey(KEY_ENTER) -- select d16
simulator.turnRotaryEncoder(7)
simulator.turnRotaryEncoder(-7) -- move cursor to get d16 to top line
simulator.screenshot("/screenshots/model-rf-d16.png") -- in accst d16 mode
simulator.turnRotaryEncoder(7) -- scroll to bind
simulator.screenshot("/screenshots/model-rf-d16-bind-select.png") -- 
simulator.pressKey(KEY_ENTER) -- enable bind
simulator.turnRotaryEncoder(1) -- scroll to ch1-ch8 telemetry
simulator.screenshot("/screenshots/model-rf-d16-bind-select-ch1-ch8.png")
simulator.pressKey(KEY_ENTER) -- select
simulator.screenshot("/screenshots/model-rf-d16-bind-waiting.png")
simulator.pressKey(KEY_RTN) -- cancel bind
-- undo d16
simulator.turnRotaryEncoder(-8) -- scroll back to int module
simulator.pressKey(KEY_ENTER) -- disable
simulator.pressKey(KEY_ENTER) -- confirm
--
-- now do td mode

simulator.pressKey(KEY_ENTER) -- enable int module
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to td mode
simulator.screenshot("/screenshots/model-rf-protocol-select-td.png")
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(7)
simulator.turnRotaryEncoder(-7) -- move cursor
simulator.screenshot("/screenshots/model-rf-td.png") -- in td mode
simulator.turnRotaryEncoder(7) -- scroll to register
--simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-td-register.png")
simulator.pressKey(KEY_ENTER) -- y
--simulator.screenshot("/screenshots/model-rf-td-register-waiting.png") -- still registered in sim so skip
--simulator.sleep(8) -- wait  -- still registered in sim so skip
simulator.screenshot("/screenshots/model-rf-td-register-rx-connected.png")
simulator.sleep(6) -- wait 
simulator.pressKey(KEY_ENTER)
simulator.sleep(4) -- wait 
simulator.screenshot("/screenshots/model-rf-td-register-registration-ok.png")
simulator.pressKey(KEY_ENTER) -- accept
simulator.turnRotaryEncoder(1) -- scroll to rx1
simulator.screenshot("/screenshots/model-rf-td-rx1.png")
--simulator.pressKey(KEY_ENTER) -- commence bind
--simulator.screenshot("/screenshots/model-rf-td-rx1-bind-waiting-for-rx.png")
--simulator.sleep(4) -- wait 
--simulator.turnRotaryEncoder(1) -- scroll to SR10
--simulator.screenshot("/screenshots/model-rf-td-rx1-select-rx.png")


simulator.pressKey(KEY_RTN, 0.6) -- go home
--
--now do external module
dofile("common.lua")

simulator.loadModel("edge 540.bin")
simulator.setAnalog(throttleStickIndex, -100)
simulator.pressKey(KEY_ENTER) -- ack alerts
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to rf
simulator.pressKey(KEY_ENTER) -- open rf
simulator.turnRotaryEncoder(3) -- scroll to external module
simulator.pressKey(KEY_ENTER) -- enable
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-rf-external-module.png")
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(-4) -- scroll back to xjt lite
simulator.screenshot("/screenshots/model-rf-external-module-options.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(8)
simulator.turnRotaryEncoder(-7) -- move cursor
simulator.screenshot("/screenshots/model-rf-external-module-xjt-lite.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-rf-external-module-xjt-lite-protocol-options.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.turnRotaryEncoder(-1) -- scroll back to type
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to r9m lite
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-external-module-r9m-lite.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/model-rf-external-module-r9m-lite-protocol-options.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(-1) -- scroll back to type
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to r9m lite access
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-external-module-r9m-lite-access.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to r9m lite pro access
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/model-rf-external-module-r9m-lite-pro-access.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to twin lite pro
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/model-rf-external-module-twin-lite-pro.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/model-rf-external-module-twin-lite-pro-protocol-options.png")

simulator.pressKey(KEY_RTN, 0.6)