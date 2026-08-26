-- 2025-08-14 add comments
-- 2025-10-05 adapt to web sim
-- 2025-10-11 revert to original final model view
-- 2025-10-22 move the delete folder lines into this low level model-select.lua for ease of other langauges support
-- 2026-01-21 add clone, receive model, send model options
-- 2026-01-26 add simulation for model send and receive
-- 2026-02-18 add another ack at end of model receive, and add the advertize() lines

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin") -- relies on many models
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_MDL) -- open the Model page
simulator.screenshot("/screenshots/model-menu.png")

simulator.turnRotaryEncoder(1) -- scroll to Model select
simulator.screenshot("/screenshots/model-icon-modelselect.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.touch(758, 91) -- add cat
simulator.enterText(translate('Airplane'))
simulator.screenshot("/screenshots/model-modelselect-create-airplane-folder.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to 'OK'
simulator.pressKey(KEY_ENTER)
simulator.touch(756, 80) --add cat
simulator.enterText(translate('Glider'))
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to 'OK'
simulator.pressKey(KEY_ENTER)
simulator.touch(751, 79) -- add cat
simulator.enterText(translate('Heli'))
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to 'OK'
simulator.pressKey(KEY_ENTER)
simulator.touch(755, 84) -- add cat
simulator.enterText(translate('Multirotor'))
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1) -- scroll to 'OK'
simulator.pressKey(KEY_ENTER)
simulator.touch(translate('MultirotorPosition'), 81) -- tap on Multirotor to open folder options
simulator.screenshot("/screenshots/model-modelselect-folder-options.png")
simulator.pressKey(KEY_RTN) -- exit options

simulator.touch(625, 79) -- tap on uncategorized
simulator.pressKey(KEY_RTN) -- deselect
simulator.touch(85, 185) -- highlight 1st model
simulator.screenshot("/screenshots/model-modelselect-folders.png")
-- model management menu section
simulator.touch(525, 319) -- highlight Magnus model
simulator.screenshot("/screenshots/model-modelselect-folders-2.png")
simulator.touch(525, 319) -- tap on magnus model to open options menu
--simulator.touch(235, 360)
simulator.turnRotaryEncoder(1) -- scroll to 'Set current model
simulator.screenshot("/screenshots/model-modelselect-model-set.png")
simulator.turnRotaryEncoder(1) -- scroll to clone
simulator.screenshot("/screenshots/model-modelselect-clone-select.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-modelselect-clone-options.png")
simulator.pressKey(KEY_RTN) -- deselect back to magnus model
-- folder change
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(3) -- scroll to change folder
simulator.screenshot("/screenshots/model-modelselect-folder-change-select.png")
simulator.pressKey(KEY_ENTER) -- --y
simulator.turnRotaryEncoder(2) -- scroll to 'glider'
simulator.screenshot("/screenshots/model-modelselect-folder-change-glider.png")
-- simulator.pressKey(KEY_ENTER) -- don't actually move 
-- simulator.touch(84, 80)
simulator.pressKey(KEY_RTN) -- escape from model options
-- receive model
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(4) -- scroll to receive model
simulator.screenshot("/screenshots/model-modelselect-receive-model-select.png")
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("/screenshots/model-modelselect-receive-model-waiting.png")
simulator.sleep(3) -- wait 
simulator.screenshot("/screenshots/model-modelselect-receive-model-dialog.png")
simulator.pressKey(KEY_ENTER) --y to confirm receive
simulator.sleep(1) -- wait 
simulator.screenshot("/screenshots/model-modelselect-receive-model-receiving.png")
simulator.sleep(5) -- wait 
simulator.pressKey(KEY_ENTER) -- ack receive
simulator.pressKey(KEY_ENTER) -- ack failure
--simulator.pressKey(KEY_RTN) -- escape from model options
-- send model
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(5) -- scroll to send model
simulator.screenshot("/screenshots/model-modelselect-send-model-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-modelselect-send-model-waiting-devices.png")
simulator.sleep(3) -- wait 
simulator.advertizeBluetooth("Alice", "01:01:01:01:01:01")
simulator.advertizeBluetooth("Bob", "01:01:01:01:01:02")
simulator.turnRotaryEncoder(1) -- scroll to alice
simulator.screenshot("/screenshots/model-modelselect-send-model-dialog.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-modelselect-send-model-waiting-connect.png")
simulator.sleep(0.5) -- wait 
simulator.screenshot("/screenshots/model-modelselect-send-model-sending.png")
simulator.sleep(3) -- wait 
simulator.screenshot("/screenshots/model-modelselect-send-model-success.png")
simulator.pressKey(KEY_RTN) -- escape from model options
--
simulator.pressKey(KEY_PAGE) -- page to airplane cat
simulator.screenshot("/screenshots/model-modelselect-folder-airplane-select.png")
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(2) -- scroll to model receive
simulator.screenshot("/screenshots/model-modelselect-model-receive.png")
simulator.turnRotaryEncoder(-1) -- scroll to model create
simulator.screenshot("/screenshots/model-modelselect-model-create.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-modelselect-model-wizard-airplane.png")
simulator.pressKey(KEY_PAGE) -- page to receiver type
simulator.screenshot("/screenshots/model-modelselect-model-wizard-rx.png")
simulator.pressKey(KEY_PAGE) -- engine
simulator.screenshot("/screenshots/model-modelselect-model-wizard-engine.png")
simulator.pressKey(KEY_PAGE) -- ailerons and flaps
simulator.screenshot("/screenshots/model-modelselect-model-wizard-ail-and-flaps.png")
simulator.pressKey(KEY_PAGE) -- tail
simulator.screenshot("/screenshots/model-modelselect-model-wizard-tail.png")
simulator.pressKey(KEY_PAGE) -- elevator and rudder
simulator.screenshot("/screenshots/model-modelselect-model-wizard-ele-and-rudder.png")
simulator.pressKey(KEY_PAGE) -- channels reassignment
simulator.screenshot("/screenshots/model-modelselect-model-wizard-ch-reassignment.png")
simulator.pressKey(KEY_PAGE) -- enter name
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- go into edit name
simulator.enterText("Ultimate")
simulator.pressKey(KEY_RTN) -- accept
simulator.turnRotaryEncoder(1) -- scroll to picture
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(-3) -- scroll back to Ultimate
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(-1) -- scroll back to name
simulator.screenshot("/screenshots/model-modelselect-model-wizard-name.png")
-- simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE) -- finish create
simulator.screenshot("/screenshots/model-modelselect-model-wizard-ultimate.png")
-- for the web sim we can just go to airplane category -- no longer due to setReadOnly
--simulator.pressKey(KEY_MDL) -- open the Model page
--simulator.turnRotaryEncoder(1) -- scroll to model select
--simulator.pressKey(KEY_ENTER) -- open
--simulator.screenshot("/screenshots/model-modelselect-model-airplane-category.png")
--simulator.pressKey(KEY_RTN, 1) -- return home

-- Below not needed in web sim version 
-- The next section is necessary because we are in read only mode and the above did not really create the Ultimate model
-- so we go the the existing Ultimate for the last /screenshots 
simulator.pressKey(KEY_RTN, 1) -- return to home
simulator.pressKey(KEY_MDL) -- open model menu
simulator.turnRotaryEncoder(1) -- scroll to model select
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_PAGE) -- to airplane
simulator.pressKey(KEY_PAGE) -- to glider
simulator.pressKey(KEY_PAGE) -- to heli
simulator.pressKey(KEY_PAGE) -- to multi
simulator.pressKey(KEY_PAGE) -- to uncat
simulator.turnRotaryEncoder(15) -- scroll to ultimate
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(3) -- scroll to change folder
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to airplane
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-modelselect-model-airplane-category.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to model move
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(4) -- back to uncat
simulator.pressKey(KEY_ENTER) -- y

simulator.pressKey(KEY_RTN, 1) -- return home

--os.remove('SD:/models/Airplane/')
--os.remove('SD:/models/Glider/')
--os.remove('SD:/models/Heli/')
--os.remove('SD:/models/Multirotor/')
