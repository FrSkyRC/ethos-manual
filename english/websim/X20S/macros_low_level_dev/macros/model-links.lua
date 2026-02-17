-- 2025-07-24 adapt macro to new Ethos 1.7 source select
-- 2025-08-04 add comments
-- 2025-09-04 increase wait for load to 6s
-- 2025-12-19 reset form to blanks at start
-- 2025-02-10 changes due to revised BT 
-- 2025-02-16 further changes to BT for disconnect
-- 2026-02-17 further changes from Bertrand

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")


simulator.pressKey(KEY_ENTER) -- ackn alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2ndpage
simulator.turnRotaryEncoder(7) -- scroll to trainer
simulator.screenshot("/screenshots/model-icon-links.png")
simulator.pressKey(KEY_ENTER) -- open
-- reset links to blanks
simulator.turnRotaryEncoder(3) -- scroll to Trainer cable
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-2) -- scroll back to '---'
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(-2) -- scroll back to top
simulator.pressKey(KEY_RTN) -- deselect
--
simulator.screenshot("/screenshots/model-links.png")
simulator.turnRotaryEncoder(1) -- scroll to s.port
simulator.screenshot("/screenshots/model-links-sport-conn.png")
simulator.pressKey(KEY_ENTER) -- open s.port
simulator.screenshot("/screenshots/model-links-sport-conn-options.png")
simulator.turnRotaryEncoder(1) -- scroll to fbus
simulator.pressKey(KEY_ENTER) -- open fbus
simulator.screenshot("/screenshots/model-links-sport-conn-fbus.png")
simulator.pressKey(KEY_ENTER) -- exit
simulator.turnRotaryEncoder(1) -- scroll to sbus out
--simulator.screenshot("/screenshots/model-links-sport-conn-options-sbus-out.png")
simulator.pressKey(KEY_ENTER) -- open sbus out
simulator.screenshot("/screenshots/model-links-sport-conn-sbus-out.png")
simulator.pressKey(KEY_ENTER) -- exit
simulator.turnRotaryEncoder(1) -- scroll to sbus in 
--simulator.screenshot("/screenshots/model-links.png")
simulator.pressKey(KEY_ENTER) --open sbus in
simulator.screenshot("/screenshots/model-links-sport-conn-sbus-in.png")
-- select active cond
simulator.turnRotaryEncoder(1) -- scroll to active cond
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(3) -- scroll to sw's
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to SA down
simulator.pressKey(KEY_ENTER) -- y
-- ch1
simulator.turnRotaryEncoder(1) -- scroll to ch1
simulator.screenshot("/screenshots/model-links-sport-conn-sbus-in-ch1-select.png")
simulator.pressKey(KEY_ENTER) -- open ch1
simulator.screenshot("/screenshots/model-links-sport-conn-sbus-in-ch1.png")
simulator.turnRotaryEncoder(2)-- scroll to replace mode
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-links-sport-conn-sbus-in-mode-options.png")
simulator.pressKey(KEY_RTN) -- exit options
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to channels

simulator.turnRotaryEncoder(6) -- scroll to ch7
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(4) -- scroll to destination
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(3) -- scroll to sw's
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(3) -- scroll to SD
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.screenshot("/screenshots/model-links-bt-master-ch7-replaced.png")
--simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- back to ch's

--simulator.pressKey(KEY_RTN) -- exit sbus in
simulator.turnRotaryEncoder(-8) -- scroll back to sport conn
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-3) -- scroll back to '---'
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(2) -- scroll to trainer cable
simulator.screenshot("/screenshots/model-links-trainer-cable.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-links-trainer-cable-select.png")
simulator.turnRotaryEncoder(1) -- scroll to slave
simulator.pressKey(KEY_ENTER) -- open slave
simulator.screenshot("/screenshots/model-links-trainer-cable-slave.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(1) -- scroll master
--simulator.screenshot("/screenshots/model-links-trainer-cable-master-select.png")
simulator.pressKey(KEY_ENTER) -- open master
simulator.screenshot("/screenshots/model-links-trainer-cable-master.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(-2) -- scroll back to '---'
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to BT
simulator.screenshot("/screenshots/model-links-bt.png")
simulator.pressKey(KEY_ENTER) -- open bt
simulator.turnRotaryEncoder(1) -- scroll to telem
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-links-bt-telem.png")
simulator.pressKey(KEY_ENTER) -- back to options
simulator.turnRotaryEncoder(1) -- scroll to master
simulator.screenshot("/screenshots/model-links-bt-master-select.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(6) -- scroll to move master up 
simulator.turnRotaryEncoder(-6) -- move cursor back up 
simulator.screenshot("/screenshots/model-links-bt-master.png")
simulator.turnRotaryEncoder(2) -- scroll to bT search
simulator.screenshot("/screenshots/model-links-bt-master-search.png")
simulator.pressKey(KEY_ENTER) -- search
simulator.sleep(1) -- wait
simulator.advertizeBluetooth("Alice", "01;01;01;01;01;01")
simulator.advertizeBluetooth("Bob", "01;01;01;01;01;02")
simulator.turnRotaryEncoder(1) -- scroll to Alice
simulator.screenshot("/screenshots/model-links-bt-master-alice.png")
simulator.pressKey(KEY_ENTER) -- select alice
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-links-bt-master-connected-ok.png")
simulator.pressKey(KEY_ENTER) -- ack connected
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-links-bt-master-connected.png")
simulator.pressKey(KEY_ENTER) -- open Alice
simulator.turnRotaryEncoder(1) -- scroll to disconnect option
simulator.screenshot("/screenshots/model-links-bt-master-disconnect-select.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-2) -- scroll to BT
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to slave
simulator.screenshot("/screenshots/model-links-bt-slave-select.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-links-bt-slave.png")
simulator.pressKey(KEY_ENTER) -- back to dialog
simulator.turnRotaryEncoder(1) -- scroll to engo glasses
simulator.screenshot("/screenshots/model-links-bt-engo-select.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-links-bt-engo.png")
simulator.pressKey(KEY_RTN, 0.6) -- home
--
-- now do extanel module links
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(8) -- scroll to RF
simulator.pressKey(KEY_ENTER) -- open RF
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- collapse int module
simulator.turnRotaryEncoder(1) -- scroll to external module
simulator.pressKey(KEY_ENTER) -- open ext module
simulator.turnRotaryEncoder(2) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(4) -- scroll to end
simulator.turnRotaryEncoder(-1) -- scroll back to trainer master ppm
simulator.screenshot("/screenshots/model-rf-trainer-master-ppm-select.png")
simulator.pressKey(KEY_ENTER) -- open trainer master ppm
simulator.screenshot("/screenshots/model-rf-trainer-master-ppm.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model rf
simulator.pressKey(KEY_ENTER) -- open rf
simulator.turnRotaryEncoder(2) -- scroll to internal module
simulator.pressKey(KEY_ENTER) -- collapse int module
simulator.turnRotaryEncoder(1) -- scroll to external module
simulator.pressKey(KEY_ENTER) -- open ext module
simulator.turnRotaryEncoder(2) -- scroll to type
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll back to trainer master sbus
simulator.screenshot("/screenshots/model-rf-trainer-master-sbus-select.png")
simulator.pressKey(KEY_ENTER) -- open trainer master sbus
simulator.screenshot("/screenshots/model-rf-trainer-master-sbus.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to model rf
simulator.pressKey(KEY_RTN, 0.6) -- home