dofile("common.lua")

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.pressKey(KEY_SYS) -- System page

simulator.turnRotaryEncoder(1) -- File manager selected
simulator.screenshot("../assets/system-icon-filemanager.png")
simulator.pressKey(KEY_ENTER)
if system.getVersion()["board"] == "X20PRO" then
    simulator.screenshot("../assets/system-filemanager-radio.png")
    simulator.pressKey(KEY_PAGE)
end    
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
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- enter inside [firmware]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-filemanager-flash-bootloader.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-filemanager-flash-S8R.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-filemanager-flash-TD-ISRM.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/system-filemanager-flash-OTA.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.turnRotaryEncoder(-4)
simulator.pressKey(KEY_ENTER) -- back inside [SD:]
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on models
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-filemanager-bluetooth-receive.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_ENTER) -- enter inside [models]
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6) -- [Enter Long] on models
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/system-filemanager-bluetooth-send.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/system-filemanager-flash.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-alerts.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-alerts.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-date.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-date.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-general.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-general.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.screenshot("../assets/system-general-brightness-menu.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/system-general-brightness-slider.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/system-general-sleep.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/system-general-sleep-brightness.png")
simulator.turnRotaryEncoder(9)
simulator.screenshot("../assets/system-general-audio.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-general-audio-modes.png")
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/system-general-audio-bluetooth.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-general-audio-bluetooth-searching.png")
simulator.sleep(0.05)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-general-audio-bluetooth-device-selected.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-general-audio-bluetooth-connecting.png")
simulator.sleep(10)
simulator.screenshot("../assets/system-general-audio-bluetooth-connected.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.turnRotaryEncoder(-6)
simulator.screenshot("../assets/system-general-audio-vario.png")
simulator.turnRotaryEncoder(9)
simulator.turnRotaryEncoder(-4)
simulator.screenshot("../assets/system-general-haptic.png")
simulator.turnRotaryEncoder(9)
simulator.turnRotaryEncoder(-4)
simulator.screenshot("../assets/system-general-topbar.png")
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/system-general-model-start.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-general-usb.png")
simulator.pressKey(KEY_RTN) -- close the usb menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-battery.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-battery.png")
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-hardware.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-check-x20s.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-analogs-calibration.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-gyro-calibration.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8)
simulator.turnRotaryEncoder(-8)
simulator.screenshot("../assets/system-hardware-pots-x20s.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10)
simulator.turnRotaryEncoder(-10)
simulator.screenshot("../assets/system-hardware-switches.png")
simulator.turnRotaryEncoder(22)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.turnRotaryEncoder(-4)
simulator.screenshot("../assets/system-hardware-shortcuts.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-hardware-adc-check-x20s.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-sticks.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-sticks.png")
simulator.turnRotaryEncoder(6)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-sticks-rx-order.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-devices.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-devices.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-devices-current.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-devices-module-choice.png")
simulator.pressKey(KEY_RTN) -- close the menu
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to devices
simulator.pressKey(KEY_RTN) -- remove the selection
simulator.pressKey(KEY_RTN) -- back to system page

simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/system-icon-info.png")
simulator.pressKey(KEY_ENTER)
simulator.sleep(5)
simulator.screenshot("../assets/system-info.png")
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/system-info-factory-reset.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/system-info-factory-reset-confirm.png")
simulator.pressKey(KEY_RTN) -- canncel
simulator.turnRotaryEncoder(-1)
simulator.screenshot("../assets/system-info-internal-module.png")

simulator.pressKey(KEY_RTN)

