-- 2024-12-02 LT edit due to documents folder added in sd/
-- 2025-07-19 adapt macro to new Ethos 1.7 source select
-- 2025-08-04 remove Flash related code and add missing comments
-- 2025-08-11 fix typo 

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.screenshot("../assets/system-icon-filemanager.png")
simulator.pressKey(KEY_ENTER)
-- if system.getVersion()["board"] == "X20PRO" then
--     simulator.screenshot("../assets/system-filemanager-radio.png")
--     simulator.pressKey(KEY_PAGE)
-- end    
simulator.screenshot("../assets/system-filemanager-sd.png")
simulator.pressKey(KEY_ENTER) -- enter inside [audio]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [fr]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [femme]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- enter inside [system]
simulator.turnRotaryEncoder(1) -- select 1.wav
simulator.pressKey(KEY_ENTER) -- open the contextual menu
simulator.turnRotaryEncoder(1) -- highlight "Play"
simulator.screenshot("../assets/system-filemanager-audio.png")

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
simulator.screenshot("../assets/system-filemanager-bitmaps.png")

simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- back inside [bitmaps]
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(3) -- skip docs 2024-12-02
simulator.pressKey(KEY_ENTER) -- enter inside [firmware]
simulator.turnRotaryEncoder(1) -- scroll to bootloader.frsk
simulator.pressKey(KEY_ENTER) -- open options 
simulator.turnRotaryEncoder(1) --scroll to flash bl
simulator.screenshot("../assets/system-filemanager-flash-bootloader.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to s8r
simulator.pressKey(KEY_ENTER) -- open options 
simulator.turnRotaryEncoder(1) --scroll to flash external device
simulator.screenshot("../assets/system-filemanager-flash-S8R.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to td-isrm
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) --scroll to flash internal rf
simulator.screenshot("../assets/system-filemanager-flash-TD-ISRM.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1) -- scroll to tdr18
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) --scroll to flash rx by int ota
simulator.screenshot("../assets/system-filemanager-flash-OTA.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(-4) -- scroll back to top
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(5) -- skip dics 2024-12-02
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on models
simulator.turnRotaryEncoder(1) -- scroll to 'receive file here'
simulator.screenshot("../assets/system-filemanager-bluetooth-receive.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_ENTER) -- enter inside [models]
simulator.turnRotaryEncoder(1) -- scroll to model
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on model
simulator.turnRotaryEncoder(2) -- scroll to 'send file'
simulator.screenshot("../assets/system-filemanager-bluetooth-send.png")
simulator.pressKey(KEY_RTN) -- close the menu
-- note: from ethos 1.7 the flash drive no longer exists
simulator.pressKey(KEY_PAGE) -- page to flash drive
--simulator.screenshot("../assets/system-filemanager-flash.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1) -- scroll to system alerts
simulator.screenshot("../assets/system-icon-alerts.png")
simulator.pressKey(KEY_ENTER) -- open system alerts menu
simulator.screenshot("../assets/system-alerts.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1) -- scroll to system date & time
simulator.screenshot("../assets/system-icon-date.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("../assets/system-date.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1) -- scroll to system general
simulator.screenshot("../assets/system-icon-general.png")
simulator.pressKey(KEY_ENTER) -- open menu
simulator.turnRotaryEncoder(1) -- scroll to display heading
simulator.screenshot("../assets/system-general.png")
simulator.turnRotaryEncoder(3) -- scroll to brightness
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.screenshot("../assets/system-general-brightness-menu.png")
simulator.turnRotaryEncoder(3) -- scroll to use a source
--
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to analogs
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to slider right
simulator.pressKey(KEY_ENTER)
--
simulator.screenshot("../assets/system-general-brightness-slider.png")
simulator.turnRotaryEncoder(1) -- scroll to wake up
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(4) -- scroll to keys
simulator.screenshot("../assets/system-general-sleep.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2) -- scroll to sleep mode brightness
simulator.screenshot("../assets/system-general-sleep-brightness.png")
simulator.turnRotaryEncoder(9) -- scroll to audio modes
simulator.screenshot("../assets/system-general-audio.png")
simulator.pressKey(KEY_ENTER) -- open options
simulator.turnRotaryEncoder(1) -- scroll to often
simulator.screenshot("../assets/system-general-audio-modes.png")
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.turnRotaryEncoder(3) -- scroll to BT search
simulator.screenshot("../assets/system-general-audio-bluetooth.png")
simulator.pressKey(KEY_ENTER) -- enable search
simulator.screenshot("../assets/system-general-audio-bluetooth-searching.png")
simulator.sleep(0.05)
simulator.turnRotaryEncoder(1) -- scroll to select device
simulator.screenshot("../assets/system-general-audio-bluetooth-device-selected.png")
simulator.pressKey(KEY_ENTER) -- select
simulator.screenshot("../assets/system-general-audio-bluetooth-connecting.png")
simulator.sleep(10)
simulator.screenshot("../assets/system-general-audio-bluetooth-connected.png")
simulator.pressKey(KEY_ENTER) -- tap ok
simulator.screenshot("../assets/system-general-audio-bluetooth-connected-ok.png")
simulator.turnRotaryEncoder(7) -- scroll to see all vario
simulator.turnRotaryEncoder(-6) -- move cursor back
simulator.screenshot("../assets/system-general-audio-vario.png")
simulator.turnRotaryEncoder(9) -- scroll to see all haptic
simulator.turnRotaryEncoder(-4) -- move cursor back
simulator.screenshot("../assets/system-general-haptic.png")
simulator.turnRotaryEncoder(1) -- scroll to haptic mode
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/system-general-haptic-options.png")
simulator.pressKey(KEY_RTN) -- close the haptic-options menu

simulator.turnRotaryEncoder(8) -- scroll to see all 'top toolbar'
simulator.turnRotaryEncoder(-4) -- move cursor back
simulator.screenshot("../assets/system-general-topbar.png")
simulator.turnRotaryEncoder(3) -- scroll to 'select model at power on'
simulator.screenshot("../assets/system-general-model-start.png")
simulator.turnRotaryEncoder(1) -- scroll to 'usb mode preselection'
simulator.pressKey(KEY_ENTER) -- open menu
simulator.screenshot("../assets/system-general-usb.png")
simulator.pressKey(KEY_RTN) -- close the usb menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system

simulator.turnRotaryEncoder(1) -- scroll to system battery
simulator.screenshot("../assets/system-icon-battery.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/system-battery.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1) -- scroll to system hardware
simulator.screenshot("../assets/system-icon-hardware.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/system-hardware.png")
simulator.turnRotaryEncoder(1) -- scroll to 'hardware check'
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/system-hardware-check-x20s.png")
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(1) -- scroll to analogs-calibration
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/system-hardware-analogs-calibration.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(1) -- scroll to gyro cal
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/system-hardware-gyro-calibration.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to hardware menu
simulator.turnRotaryEncoder(2) -- scroll to pots/sliders settings
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(8) -- scroll to see all
simulator.turnRotaryEncoder(-8) -- move cursor back
simulator.screenshot("../assets/system-hardware-pots-x20s.png")
simulator.turnRotaryEncoder(8) -- scroll to switches settings
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(10) -- scroll to see all
simulator.turnRotaryEncoder(-10) -- move cursor back
simulator.screenshot("../assets/system-hardware-switches.png")
simulator.turnRotaryEncoder(2) -- scroll to SA 3 pos options
simulator.pressKey(KEY_ENTER) -- open switch options
simulator.screenshot("../assets/system-hardware-switches-options.png")
simulator.pressKey(KEY_RTN) --back to switches
simulator.turnRotaryEncoder(20) -- scroll to see all, stop at keymap
simulator.screenshot("../assets/system-hardware-switches-2.png")


simulator.pressKey(KEY_ENTER) -- open keymap
simulator.turnRotaryEncoder(5) -- scroll to see all
simulator.turnRotaryEncoder(-4) -- move cursor back disp short
simulator.screenshot("../assets/system-hardware-shortcuts.png")
simulator.pressKey(KEY_ENTER) -- open disp short options
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- open shortcut options
simulator.screenshot("../assets/system-hardware-shortcuts-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) --back to switches

simulator.turnRotaryEncoder(4) -- scroll to adc inspector
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/system-hardware-adc-check-x20s.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN) -- back to hw
simulator.pressKey(KEY_RTN) -- back to sys menu

simulator.turnRotaryEncoder(1) -- scroll to sticks
simulator.screenshot("../assets/system-icon-sticks.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/system-sticks.png")
simulator.turnRotaryEncoder(6) -- scroll to 'channel order'
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("../assets/system-sticks-rx-order.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.turnRotaryEncoder(1) -- scroll to '1st 4 ch fixed'
simulator.screenshot("../assets/system-sticks-4ch-fixed.png")
simulator.pressKey(KEY_RTN) -- back to hw
simulator.pressKey(KEY_RTN) -- back to sys menu

simulator.turnRotaryEncoder(1) -- scroll to devices
simulator.screenshot("../assets/system-icon-devices.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/system-devices.png")
simulator.turnRotaryEncoder(2) -- scroll to gas suite
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to module
simulator.screenshot("../assets/system-devices-current.png")
simulator.pressKey(KEY_ENTER) -- open module options
simulator.screenshot("../assets/system-devices-module-choice.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to devices
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system page

simulator.turnRotaryEncoder(1) -- scroll to info
simulator.screenshot("../assets/system-icon-info.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.sleep(5)
simulator.screenshot("../assets/system-info.png")
simulator.turnRotaryEncoder(-1) -- scroll to 'reset factory setting'
simulator.screenshot("../assets/system-info-factory-reset.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("../assets/system-info-factory-reset-confirm.png")
simulator.pressKey(KEY_RTN) -- canncel
simulator.turnRotaryEncoder(-1) -- back to radio runtime
simulator.screenshot("../assets/system-info-radio-runtime.png")

simulator.pressKey(KEY_RTN)


