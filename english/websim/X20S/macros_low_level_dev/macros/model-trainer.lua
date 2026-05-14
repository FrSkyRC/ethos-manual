-- 2025-07-24 adapt macro to new Ethos 1.7 source select
-- 2025-08-04 add comments
-- 2025-09-04 increase wait for load to 6s
-- 2026-04-02 revrt back to trainer from links
-- 2026-05-08 adapt for long press changes
-- 2026-05-13 remove surplus rtn statements due to bug fix

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")


simulator.pressKey(KEY_ENTER) -- ackn alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2ndpage
simulator.turnRotaryEncoder(7) -- scroll to trainer
simulator.screenshot("/screenshots/model-icon-trainer.png")
simulator.pressKey(KEY_ENTER) -- open trainer
simulator.screenshot("/screenshots/model-trainer-add.png")
simulator.turnRotaryEncoder(1) -- scroll to [+] button
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-trainer-options.png")
simulator.turnRotaryEncoder(1) -- scroll to trainer cable
simulator.screenshot("/screenshots/model-trainer-cable-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to trainer mode
simulator.screenshot("/screenshots/model-trainer-cable-slave.png")
--simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- scroll back to master
simulator.screenshot("/screenshots/model-trainer-cable-master-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-trainer-cable-master.png")
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.screenshot("/screenshots/model-trainer-cable-master-active-condition-select.png")
--[[
simulator.pressKey(KEY_ENTER) -- open active cond
simulator.turnRotaryEncoder(3) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(5) -- scroll to move page up
simulator.turnRotaryEncoder(-5) -- scroll back to active cond
simulator.screenshot("/screenshots/model-trainer-cable-master-active-condition.png")
simulator.turnRotaryEncoder(1) -- scroll to ch1
simulator.screenshot("/screenshots/model-trainer-cable-master-channels.png")
simulator.pressKey(KEY_ENTER) -- open ch1 edit
simulator.screenshot("/screenshots/model-trainer-cable-master-channel-edit.png")
]]--
--simulator.pressKey(KEY_RTN) -- return from edit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- return to model / trainer 
--
-- now remove cable trainer
-- simulator.pressKey(KEY_ENTER) -- open trainer
--simulator.touch(112, 86) -- tap on cable trainer tab
simulator.pressKey(KEY_ENTER) -- open trainer
simulator.pressKey(KEY_ENTER, 0.6) -- long press for options
simulator.turnRotaryEncoder(1) -- scroll to copy
simulator.screenshot("/screenshots/model-trainer-cable-master-copy-select.png")
simulator.pressKey(KEY_ENTER) -- yes copy
--simulator.touch(112, 86) -- tap on cable trainer tab
--simulator.pressKey(KEY_RTN)
--simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- return to model / trainer 
simulator.pressKey(KEY_ENTER) -- open trainer
simulator.pressKey(KEY_ENTER, 0.6) -- long press for options
simulator.turnRotaryEncoder(3) -- scroll to delete
simulator.screenshot("/screenshots/model-trainer-cable-master-delete-select.png")
simulator.pressKey(KEY_RTN) -- return from edit
--simulator.pressKey(KEY_ENTER) -- yes 
--simulator.pressKey(KEY_ENTER) -- confirm delete
simulator.pressKey(KEY_RTN, 0.6) -- return to home
--
-- bt trainer
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2ndpage
simulator.turnRotaryEncoder(7) -- scroll to trainer
simulator.pressKey(KEY_ENTER) -- open trainer
--simulator.turnRotaryEncoder(1) -- scroll to [+] button
simulator.pressKey(KEY_PAGE) -- page to [+] button
simulator.pressKey(KEY_ENTER) -- add
simulator.turnRotaryEncoder(1) -- scroll to bt
simulator.screenshot("/screenshots/model-trainer-bt-select.png")
simulator.pressKey(KEY_ENTER) -- select bt
simulator.turnRotaryEncoder(2) -- scroll to trainer mode
simulator.screenshot("/screenshots/model-trainer-bt-slave.png")
simulator.pressKey(KEY_ENTER) -- open mode
simulator.turnRotaryEncoder(-1) -- scroll back to master
simulator.screenshot("/screenshots/model-trainer-bt-master-select.png")
simulator.pressKey(KEY_ENTER) -- select master
simulator.screenshot("/screenshots/model-trainer-bt-master.png")
-- bt connect
simulator.turnRotaryEncoder(2) -- scroll to bt search
simulator.screenshot("/screenshots/model-trainer-bt-master-search.png")
simulator.pressKey(KEY_ENTER) -- search
simulator.sleep(1) -- wait
simulator.advertizeBluetooth("Alice", "01:01:01:01:01:01")
simulator.advertizeBluetooth("Bob", "01:01:01:01:01:02")
simulator.turnRotaryEncoder(1) -- scroll to Alice
simulator.screenshot("/screenshots/model-trainer-bt-master-alice.png")
simulator.pressKey(KEY_ENTER) -- select alice
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-trainer-bt-master-connected-ok.png")
simulator.pressKey(KEY_ENTER) -- ack connected
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-trainer-bt-master-connected.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to delete
simulator.screenshot("/screenshots/model-trainer-bt-master-disconnect-select.png")
simulator.pressKey(KEY_RTN) -- exit from delete
--
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- ooen
simulator.turnRotaryEncoder(3) -- scroll to switches
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to sa down
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(5) -- scroll to move page up
simulator.turnRotaryEncoder(-5) -- scroll back to active cond
simulator.screenshot("/screenshots/model-trainer-bt-master-active-condition.png")
simulator.turnRotaryEncoder(1) -- scroll to channels
simulator.screenshot("/screenshots/model-trainer-bt-master-channels.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-trainer-bt-master-channel-edit.png")
simulator.pressKey(KEY_RTN) -- return from edit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.touch(112, 86) -- tap on bt trainer tab
--simulator.touch(294, 87) -- tap on bt trainer tab
simulator.pressKey(KEY_ENTER, 0.6) -- long press for options
simulator.turnRotaryEncoder(1) -- scroll to paste
simulator.screenshot("/screenshots/model-trainer-bt-master-options.png")
simulator.turnRotaryEncoder(2) -- scroll to delete
simulator.screenshot("/screenshots/model-trainer-bt-master-delete-select.png")
simulator.pressKey(KEY_ENTER) -- yes 
simulator.pressKey(KEY_ENTER) -- confirm delete bt
-- now delete cable trainer
--simulator.touch(112, 86) -- tap on cable trainer tab
simulator.pressKey(KEY_ENTER, 0.6) -- long press for options
simulator.turnRotaryEncoder(3) -- scroll to delete
simulator.pressKey(KEY_ENTER) -- yes 
simulator.pressKey(KEY_ENTER) -- confirm delete cable

simulator.pressKey(KEY_RTN, 0.6) -- return to home
--
-- external module
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(7) -- scroll to trainer
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to [+] button
simulator.pressKey(KEY_ENTER) -- add trainer
simulator.turnRotaryEncoder(3) -- scroll to external module
simulator.screenshot("/screenshots/model-trainer-ext-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to trainer mode
simulator.screenshot("/screenshots/model-trainer-ext-slave.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-trainer-ext-slave-protocol-select.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.turnRotaryEncoder(-1) -- scroll back to trainer mode
simulator.pressKey(KEY_ENTER) -- open
--simulator.screenshot("/screenshots/screenshot4.png")
simulator.turnRotaryEncoder(-1) -- scroll back to master
simulator.screenshot("/screenshots/model-trainer-ext-master-select.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-trainer-ext-master.png")
simulator.turnRotaryEncoder(1) -- scroll to protocol
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-trainer-ext-master-protocol-select.png")
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
simulator.touch(775, 83) -- tap on add trainer button
simulator.turnRotaryEncoder(3) -- scroll to sport
simulator.screenshot("/screenshots/model-trainer-sport-select.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(2) -- scroll to trainer mode
simulator.screenshot("/screenshots/model-trainer-sport-slave.png")
simulator.pressKey(KEY_ENTER) -- open trainer mode
simulator.turnRotaryEncoder(-1) -- scroll back to master
simulator.screenshot("/screenshots/model-trainer-sport-master-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-trainer-sport-master.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN, 0.6)

--
-- now do extanel module links
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to RF
simulator.pressKey(KEY_ENTER) -- open RF
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- collapse int module
simulator.turnRotaryEncoder(1) -- scroll to external module
--simulator.pressKey(KEY_ENTER) -- open ext module
simulator.turnRotaryEncoder(2) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit
--simulator.turnRotaryEncoder(4) -- scroll to end
simulator.turnRotaryEncoder(-3) -- scroll back to ppm
simulator.screenshot("/screenshots/model-rf-trainer-ppm-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-trainer-ppm.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(1) -- scroll to sbus
simulator.screenshot("/screenshots/model-rf-trainer-sbus-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-trainer-sbus.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(1) -- scroll back to ppm trainer
simulator.screenshot("/screenshots/model-rf-trainer-master-ppm-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-rf-trainer-master-ppm.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(1) -- scroll back to trainer master sbus
simulator.screenshot("/screenshots/model-rf-trainer-master-sbus-select.png")
simulator.pressKey(KEY_ENTER) -- open trainer master sbus
simulator.screenshot("/screenshots/model-rf-trainer-master-sbus.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model rf
simulator.pressKey(KEY_RTN, 0.6) -- home

