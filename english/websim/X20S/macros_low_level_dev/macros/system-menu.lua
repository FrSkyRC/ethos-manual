-- 2024-12-02 LT edit due to documents folder added in sd/
-- 2025-07-19 adapt macro to new Ethos 1.7 source select
-- 2025-08-04 remove Flash related code and add missing comments
-- 2025-08-11 fix typo 
-- 2025-09-03 fix audio folders to en instead of de, scroll to keys in wake-up
-- 2025-09-25 adapt for new file manager sort and menu
-- 2025-09-28 adapt for new menu and sort function
-- 2025-09-29 adapt to web sim
-- 2025-10-09 switch BT off again for later macros running
-- 2025-10-10 adapt for sleep mode always on for sim
-- 2025-11-02 sim bug fixed, adapt for change sleep mode back to keys
-- 2025-11-03 add screenshots for descending sort and logs folder
-- 2025-12-07 simulator.turnRotaryEncoder(4) -- scroll to use a source
-- 2025-02-12 changes due to revised BT 
-- 2026-02-17 further changes from Bertrand
-- 2026-02-17 replace semicolon with colon in BT address
-- 2026-02-23 add advertize() fns to mimic manual simulation

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.screenshot("/screenshots/system-icon-filemanager.png")
simulator.pressKey(KEY_ENTER)
-- if system.getVersion()["board"] == "X20PRO" then
--     simulator.screenshot("/screenshots/system-filemanager-radio.png")
--     simulator.pressKey(KEY_PAGE)
-- end    
simulator.screenshot("/screenshots/system-filemanager-sd.png")
-- new menu
simulator.turnRotaryEncoder(-1) -- scroll back to new menu
simulator.screenshot("/screenshots/system-filemanager-menu.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/system-filemanager-menu-options.png")
simulator.pressKey(KEY_RTN) -- exit menu
-- new sort options
--[[
simulator.turnRotaryEncoder(-1) -- scroll back to new sort option
simulator.pressKey(KEY_ENTER) -- open sort options
simulator.screenshot("/screenshots/system-filemanager-menu-sort-options.png")
simulator.pressKey(KEY_RTN) -- exit menu
simulator.turnRotaryEncoder(2) -- scroll to audio folder
]]--
simulator.turnRotaryEncoder(5) -- scroll to logs folder
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-2) -- scroll back to sort option
simulator.pressKey(KEY_ENTER) -- open sort
simulator.screenshot("/screenshots/system-filemanager-menu-sort-options.png")
simulator.turnRotaryEncoder(2) -- scroll to descending
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to oldest first
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/system-filemanager-menu-sort-options-desc.png")
simulator.pressKey(KEY_RTN) -- exit sort
simulator.turnRotaryEncoder(3) -- scroll to first log file
simulator.screenshot("/screenshots/system-filemanager-logs.png")
simulator.turnRotaryEncoder(-3) -- scroll back to sort
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) --- scroll to ascending
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(2) -- scroll to newest first
simulator.pressKey(KEY_ENTER) -- y
simulator.pressKey(KEY_RTN) -- back to logs
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to system
simulator.pressKey(KEY_ENTER) -- open file manager

simulator.pressKey(KEY_ENTER) -- enter inside [audio]
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- enter inside [en]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [gb]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [system]
simulator.turnRotaryEncoder(1) -- select 1.wav
simulator.pressKey(KEY_ENTER) -- open the contextual menu
simulator.turnRotaryEncoder(1) -- highlight "Play"
simulator.screenshot("/screenshots/system-filemanager-audio.png")

simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- back inside [femme]
simulator.pressKey(KEY_ENTER) -- back inside [fr]
simulator.pressKey(KEY_ENTER) -- backback inside [audio]
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [bitmaps]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [models]
simulator.turnRotaryEncoder(1)
simulator.screenshot("/screenshots/system-filemanager-bitmaps.png")

simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- back inside [bitmaps]
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(3) -- skip docs 2024-12-02
simulator.pressKey(KEY_ENTER) -- enter inside [firmware]
simulator.turnRotaryEncoder(1) -- scroll to bootloader.frsk
simulator.pressKey(KEY_ENTER) -- open options 
simulator.turnRotaryEncoder(1) --scroll to flash bl
simulator.screenshot("/screenshots/system-filemanager-flash-bootloader.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to s8r
simulator.pressKey(KEY_ENTER) -- open options 
simulator.turnRotaryEncoder(1) --scroll to flash external device
simulator.screenshot("/screenshots/system-filemanager-flash-S8R.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to td-isrm
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) --scroll to flash internal rf
simulator.screenshot("/screenshots/system-filemanager-flash-TD-ISRM.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to tdr18
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) --scroll to flash rx by int ota
simulator.screenshot("/screenshots/system-filemanager-flash-OTA.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(-4) -- scroll back to top
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(6) -- skip dics 2024-12-02 and macros folder
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on models
--simulator.turnRotaryEncoder(1) -- scroll to 'receive file here'
--simulator.screenshot("/screenshots/system-filemanager-bluetooth-receive.png")
simulator.turnRotaryEncoder(2) -- scroll to 'delete'
simulator.screenshot("/screenshots/system-filemanager-delete-folder.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_ENTER) -- enter inside [models]

-- new receive menu
simulator.turnRotaryEncoder(-1) -- scroll back to new menu
--simulator.screenshot("/screenshots/system-filemanager-menu.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to receive option
simulator.screenshot("/screenshots/system-filemanager-bluetooth-receive.png")
-- decided not to do receive, it switches BT away from General - Audio below
--simulator.pressKey(KEY_ENTER) -- do receive
--simulator.turnRotaryEncoder(1) -- scroll to receive option
--simulator.sleep(1) -- wait for BT
--simulator.screenshot("/screenshots/system-filemanager-bluetooth-receive-ack.png")
simulator.pressKey(KEY_RTN) -- exit menu
simulator.turnRotaryEncoder(1) -- scroll back to start position
--
-- BT send file
simulator.turnRotaryEncoder(1) -- scroll to model
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on model
simulator.turnRotaryEncoder(1) -- scroll to 'send file'
simulator.screenshot("/screenshots/system-filemanager-bluetooth-send.png")
simulator.pressKey(KEY_RTN) -- close the menu
-- note: from ethos 1.7 the flash drive no longer exists
--simulator.pressKey(KEY_PAGE) -- page to flash drive
--simulator.screenshot("/screenshots/system-filemanager-flash.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit to system menu
--
-- system alerts
simulator.turnRotaryEncoder(1) -- scroll to system alerts
simulator.screenshot("/screenshots/system-icon-alerts.png")
simulator.pressKey(KEY_ENTER) -- open system alerts menu
simulator.screenshot("/screenshots/system-alerts.png")
simulator.pressKey(KEY_RTN)
--
-- system date & time
simulator.turnRotaryEncoder(1) -- scroll to system date & time
simulator.screenshot("/screenshots/system-icon-date.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/system-date.png")
simulator.pressKey(KEY_RTN)
--
-- system general
simulator.turnRotaryEncoder(1) -- scroll to system general
simulator.screenshot("/screenshots/system-icon-general.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to display heading
simulator.screenshot("/screenshots/system-general.png")
simulator.turnRotaryEncoder(3) -- scroll to brightness
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.screenshot("/screenshots/system-general-brightness-menu.png")
simulator.turnRotaryEncoder(4) -- scroll to use a source
--
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to slider right
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/system-general-brightness-slider.png")
-- -- wake up
simulator.turnRotaryEncoder(1) -- scroll to wake up
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(3) -- scroll to keys
simulator.screenshot("/screenshots/system-general-sleep.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) -- scroll to sleep mode brightness -- 'Sleep' is open for keys mode
--simulator.turnRotaryEncoder(1) -- scroll to sleep mode brightness
simulator.screenshot("/screenshots/system-general-sleep-brightness.png")
-- -- audio
simulator.turnRotaryEncoder(9) -- scroll to audio modes
simulator.screenshot("/screenshots/system-general-audio.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) -- scroll to often
simulator.screenshot("/screenshots/system-general-audio-modes.png")
simulator.pressKey(KEY_RTN) -- close the dialog
-- -- bluetooth
simulator.turnRotaryEncoder(7) -- scroll to end of BT
simulator.turnRotaryEncoder(-6) -- scroll back to BT
simulator.pressKey(KEY_ENTER) -- enable BT
simulator.sleep(1)
simulator.screenshot("/screenshots/system-general-audio-bluetooth-enable.png")
simulator.turnRotaryEncoder(2) -- scroll to BT search
simulator.screenshot("/screenshots/system-general-audio-bluetooth.png")
simulator.pressKey(KEY_ENTER) -- enable search
simulator.screenshot("/screenshots/system-general-audio-bluetooth-searching.png")
simulator.sleep(1)
simulator.advertizeBluetooth("LC-B41", "01:01:01:01:F5:41")
simulator.advertizeBluetooth("Test1", "01:00:00:00:00:01")
simulator.advertizeBluetooth("Test2", "02:00:00:00:00:02")
--simulator.advertizeBluetooth("Alice")
--simulator.sleep(1)
--simulator.advertizeBluetooth("Bob")
--simulator.sleep(1)
simulator.turnRotaryEncoder(1) -- scroll to select device
simulator.screenshot("/screenshots/system-general-audio-bluetooth-device-selected.png")
simulator.pressKey(KEY_ENTER) -- select
simulator.screenshot("/screenshots/system-general-audio-bluetooth-connecting.png")
simulator.sleep(5)
simulator.screenshot("/screenshots/system-general-audio-bluetooth-connected.png")
simulator.pressKey(KEY_ENTER) -- tap ok
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/system-general-audio-bluetooth-connected-ok.png")
simulator.turnRotaryEncoder(1) -- scroll to speaker mute
simulator.screenshot("/screenshots/system-general-audio-speaker-mute.png")
--simulator.sleep(5) -- wait
-- show disconnect
simulator.turnRotaryEncoder(-1) -- scroll to back to device
simulator.pressKey(KEY_ENTER) -- open dialog
simulator.turnRotaryEncoder(1) -- scroll to disconnect option
simulator.screenshot("/screenshots/system-general-audio-bluetooth-disconnect-select.png")
simulator.pressKey(KEY_ENTER) -- disconnect
-- switch off BT again for later macros running
simulator.turnRotaryEncoder(-2) -- scroll back to BT enable
simulator.pressKey(KEY_ENTER) -- toggle off
-- -- vario
simulator.turnRotaryEncoder(7) -- scroll to see all vario
simulator.turnRotaryEncoder(-6) -- move cursor back
simulator.screenshot("/screenshots/system-general-audio-vario.png")
-- -- haptic
simulator.turnRotaryEncoder(9) -- scroll to see all haptic
simulator.turnRotaryEncoder(-4) -- move cursor back
simulator.screenshot("/screenshots/system-general-haptic.png")
simulator.turnRotaryEncoder(1) -- scroll to haptic mode
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/system-general-haptic-options.png")
simulator.pressKey(KEY_RTN) -- close the haptic-options menu
-- -- top toolbar
simulator.turnRotaryEncoder(8) -- scroll to see all 'top toolbar'
simulator.turnRotaryEncoder(-4) -- move cursor back
simulator.screenshot("/screenshots/system-general-topbar.png")
-- -- misc
simulator.turnRotaryEncoder(3) -- scroll to 'select model at power on'
simulator.screenshot("/screenshots/system-general-model-start.png")
simulator.turnRotaryEncoder(1) -- scroll to 'usb mode preselection'
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("/screenshots/system-general-usb.png")
simulator.pressKey(KEY_RTN) -- close the usb menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system
--
-- system battery
simulator.turnRotaryEncoder(1) -- scroll to system battery
simulator.screenshot("/screenshots/system-icon-battery.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/system-battery.png")
simulator.pressKey(KEY_RTN)
--
-- system hardware
simulator.turnRotaryEncoder(1) -- scroll to system hardware
simulator.screenshot("/screenshots/system-icon-hardware.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/system-hardware.png")
simulator.turnRotaryEncoder(1) -- scroll to 'hardware check'
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/system-hardware-check-x20s.png")
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(1) -- scroll to analogs-calibration
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/system-hardware-analogs-calibration.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(1) -- scroll to gyro cal
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/system-hardware-gyro-calibration.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(2) -- scroll to pots/sliders settings
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(8) -- scroll to see all
simulator.turnRotaryEncoder(-8) -- move cursor back
simulator.screenshot("/screenshots/system-hardware-pots-x20s.png")
simulator.turnRotaryEncoder(8) -- scroll to switches settings
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(10) -- scroll to see all
simulator.turnRotaryEncoder(-10) -- move cursor back
simulator.screenshot("/screenshots/system-hardware-switches.png")
simulator.turnRotaryEncoder(2) -- scroll to SA 3 pos options
simulator.pressKey(KEY_ENTER) -- open switch options
simulator.screenshot("/screenshots/system-hardware-switches-options.png")
simulator.pressKey(KEY_RTN) --back to switches
simulator.turnRotaryEncoder(20) -- scroll to see all, stop at keymap
simulator.screenshot("/screenshots/system-hardware-switches-2.png")


simulator.pressKey(KEY_ENTER) -- open keymap
simulator.turnRotaryEncoder(5) -- scroll to see all
simulator.turnRotaryEncoder(-4) -- move cursor back disp short
simulator.screenshot("/screenshots/system-hardware-shortcuts.png")
simulator.pressKey(KEY_ENTER) -- open disp short options
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- open shortcut options
simulator.screenshot("/screenshots/system-hardware-shortcuts-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to switches

simulator.turnRotaryEncoder(4) -- scroll to adc inspector
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/system-hardware-adc-check-x20s.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to hw
simulator.pressKey(KEY_RTN) -- back to sys menu
--
-- system sticks
simulator.turnRotaryEncoder(1) -- scroll to sticks
simulator.screenshot("/screenshots/system-icon-sticks.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/system-sticks.png")
simulator.turnRotaryEncoder(6) -- scroll to 'channel order'
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/system-sticks-rx-order.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to '1st 4 ch fixed'
simulator.screenshot("/screenshots/system-sticks-4ch-fixed.png")
simulator.pressKey(KEY_RTN) -- back to hw
simulator.pressKey(KEY_RTN) -- back to sys menu
--
-- system devices
simulator.turnRotaryEncoder(1) -- scroll to devices
simulator.screenshot("/screenshots/system-icon-devices.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/system-devices.png")
simulator.turnRotaryEncoder(2) -- scroll to gas suite
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to module
simulator.screenshot("/screenshots/system-devices-current.png")
simulator.pressKey(KEY_ENTER) -- open module options
simulator.screenshot("/screenshots/system-devices-module-choice.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to devices
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system page
--
-- system info
simulator.turnRotaryEncoder(1) -- scroll to info
simulator.screenshot("/screenshots/system-icon-info.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.sleep(5)
simulator.screenshot("/screenshots/system-info.png")
simulator.turnRotaryEncoder(-1) -- scroll to 'reset factory setting'
simulator.screenshot("/screenshots/system-info-factory-reset.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/system-info-factory-reset-confirm.png")
simulator.pressKey(KEY_RTN) -- canncel
simulator.turnRotaryEncoder(-1) -- back to radio runtime
simulator.screenshot("/screenshots/system-info-radio-runtime.png")

simulator.pressKey(KEY_RTN, 0.6) -- return home


