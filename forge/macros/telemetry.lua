-- 2025-08-05 adapt to 1.7 source select, new '+' add buttons and comments
-- 2025-08-09 take 'model-telemetry-calculated-sensor-consumption.png' screenshot with highlight
-- 2025-09-03 remove the first deselect line 111
-- 2025-12-06 adapt for BT removed from this screen
-- 2025-04-11 adapt for new tabs in Telemetry
-- 2026-05-01 adapt for fbus via sport connector and long press options
-- 2026-05-07 adapt for fn sw's added to source categories
-- 2026-05-13 remove surplus rtn statements due to bug fix

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.touch(661, 194)
simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(1) -- scroll to telemetry
simulator.screenshot("/screenshots/model-icon-telemetry.png")
simulator.pressKey(KEY_ENTER) -- open
--simulator.screenshot("/screenshots/model-telemetry-discover-new-sensors-off-1.png")
--
-- **** Telemetry menu
-- Telemetry tab is active by default
simulator.screenshot("/screenshots/model-telemetry.png")
simulator.turnRotaryEncoder(1) -- scroll to first sensor
simulator.turnRotaryEncoder(-1) -- scroll to [+] menu
simulator.pressKey(KEY_ENTER) -- open
simulator.screenshot("/screenshots/model-telemetry-tab-options.png")
simulator.turnRotaryEncoder(1) -- scroll to discover option
 
simulator.screenshot("/screenshots/model-telemetry-discover-new-sensors-select.png")
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-discover-new-sensors-result.png")
-- after discovery focus is still on [+] menu
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to stop discovery option
simulator.screenshot("/screenshots/model-telemetry-stop-discovery-select.png")
simulator.pressKey(KEY_ENTER) -- stop discovery
--
-- after stop discovery focus is still on [+] menu
--
-- rssi sensor
--
simulator.turnRotaryEncoder(1) -- scroll to first sensor in list - rssi
simulator.screenshot("/screenshots/model-telemetry-discovered-new-sensors.png")
simulator.pressKey(KEY_ENTER) -- open edit options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.screenshot("/screenshots/model-telemetry-edit-option-select.png")
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-telemetry-edit-rssi-sensor.png")
simulator.turnRotaryEncoder(16) -- scroll to end
simulator.screenshot("/screenshots/model-telemetry-edit-rssi-sensor-2.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to telem list
--
-- vfr sensor
--
simulator.turnRotaryEncoder(5) -- scroll to vfr
simulator.screenshot("/screenshots/model-telemetry-edit-vfr-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- open edit options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-telemetry-edit-vfr-sensor.png")
simulator.turnRotaryEncoder(18) -- scroll to end
simulator.screenshot("/screenshots/model-telemetry-edit-vfr-sensor-2.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to telem list
--
--adc2 sensor
--
simulator.turnRotaryEncoder(14) -- scroll to adc2
simulator.pressKey(KEY_ENTER) -- open edit options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.screenshot("/screenshots/model-telemetry-edit-adc2-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-telemetry-edit-adc2-sensor.png")
simulator.turnRotaryEncoder(13) -- scroll to end
simulator.screenshot("/screenshots/model-telemetry-edit-adc2-sensor-2.png")
-- simulator.screenshot("./screenshot3.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to telem list
-- 
-- vspeed sensor
--
simulator.turnRotaryEncoder(-8) -- scroll to vspeed
simulator.pressKey(KEY_ENTER) -- open edit options
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- edit
simulator.screenshot("/screenshots/model-telemetry-edit-vspeed-sensor.png")
simulator.turnRotaryEncoder(10) -- scroll to end
simulator.screenshot("/screenshots/model-telemetry-edit-vspeed-sensor-2.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to telem list
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted


--
-- do diy sensor
--
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-1) -- scroll to [+] menu
simulator.pressKey(KEY_ENTER) -- open tab options
simulator.turnRotaryEncoder(2) -- scroll to diy sensor option
simulator.screenshot("/screenshots/model-telemetry-diy-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-diy-sensor-edit.png")
simulator.turnRotaryEncoder(2) -- scroll to auto detect
simulator.pressKey(KEY_ENTER)
simulator.sleep(1) -- wait 
simulator.screenshot("/screenshots/model-telemetry-diy-sensor-auto-detect.png")
simulator.pressKey(KEY_ENTER) -- close dialog
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted

--
-- now do calculated sensors
--
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-1) -- scroll to [+] menu
simulator.pressKey(KEY_ENTER) -- open tab options
simulator.turnRotaryEncoder(3) -- scroll to 'create calculated sensor'
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to consumption
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-consumption.png")
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-consumption-select.png")
--
-- distance
simulator.turnRotaryEncoder(1) -- scroll to distance
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-distance.png")
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to trip
--
-- trip
--
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-trip.png")
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to multi-lipo
--
-- multi-lipo
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-multi-lipo.png")
simulator.turnRotaryEncoder(9) -- scroll to xxxxx
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to 
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to 2nd lipo
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-multi-lipo-2.png")
simulator.turnRotaryEncoder(-10) -- scroll back to function
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to percent
--
-- percent
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-percent.png")
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to power
--
-- power
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-power.png")
simulator.turnRotaryEncoder(8) -- scroll to current source
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to current sensor
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to voltage source
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(3) -- scroll to vfas sensor
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-power-2.png")
simulator.turnRotaryEncoder(-9) -- scroll back to function
simulator.pressKey(KEY_ENTER) -- enabled
simulator.turnRotaryEncoder(1) -- scroll to custom
--
-- do calculated custom power sensor
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor.png")
-- simulator.turnRotaryEncoder(9) -- scroll to add
-- simulator.screenshot("./screenshot36.png")
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(-8)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit
simulator.pressKey(KEY_PAGE) -- delete char
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
--
simulator.touch(640, 399) -- M
simulator.touch(73, 393) -- shift
simulator.touch(79, 351) -- a
simulator.touch(242, 401) -- x
simulator.touch(57, 394) -- shift
simulator.touch(751, 305) -- P
simulator.touch(72, 394) -- shift
simulator.touch(687, 308) -- o
simulator.touch(117, 301) -- w
simulator.touch(199, 302) -- e
simulator.touch(285, 305) -- r
simulator.touch(735, 454) -- ENTER
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-maxpower.png")
simulator.turnRotaryEncoder(7) -- scroll to source
-- take /screenshots for intro
simulator.turnRotaryEncoder(1)
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-add-action.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-add-action-select.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-1) -- scroll back to delete actions
simulator.pressKey(KEY_ENTER) -- delete
simulator.pressKey(KEY_ENTER) -- confirm
-- now we are back on the source param
-- select vfas source
simulator.pressKey(KEY_ENTER) -- edit source
simulator.turnRotaryEncoder(11) -- scroll to source category telem
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(21) -- scroll to vfas
simulator.pressKey(KEY_ENTER) -- y
--
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to multiply
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to source
-- select current
simulator.pressKey(KEY_ENTER) -- edit source
simulator.turnRotaryEncoder(11) -- scroll to source category telem
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(13) -- scroll to current
simulator.pressKey(KEY_ENTER) --
--
simulator.turnRotaryEncoder(1) -- scroll to add
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5) -- scroll to max
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to source
-- select maxpower custom sensor
simulator.pressKey(KEY_ENTER) -- edit source
simulator.turnRotaryEncoder(11) -- scroll to source category telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(-1) -- reverse scroll to maxpower
simulator.pressKey(KEY_ENTER)
--
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-maxpower-2.png")
--simulator.turnRotaryEncoder(-14)
--simulator.screenshot("./screenshot38.png")
--simulator.pressKey(KEY_RTN, 1)
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted
--
-- do subtract example
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-1) -- scroll to [+] menu
simulator.pressKey(KEY_ENTER) -- open tab options
simulator.turnRotaryEncoder(3) -- scroll to 'create calculated sensor'
--simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- create
simulator.turnRotaryEncoder(1) -- scroll to function
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(6) -- scroll to custom
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to name
simulator.pressKey(KEY_ENTER) -- edit
simulator.pressKey(KEY_PAGE) -- delete char
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
--
simulator.touch(166, 348) -- S
simulator.touch(72, 408) -- shift
simulator.touch(517, 303) -- u
simulator.touch(480, 401) -- b
simulator.touch(364, 300) -- t
simulator.touch(285, 301) -- r
simulator.touch(59, 396) -- shift
simulator.touch(200, 303) -- E
simulator.touch(63, 398) -- shift
simulator.touch(242, 409) -- x
simulator.touch(83, 354) -- a
simulator.touch(633, 404) -- m
simulator.touch(754, 305) -- p
simulator.touch(726, 350) -- l
simulator.touch(203, 304) -- e
simulator.pressKey(KEY_RTN) -- accept
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-subtrexample.png")
simulator.turnRotaryEncoder(7) -- scroll to source
simulator.pressKey(KEY_ENTER) -- y

-- add rssi sensor
simulator.turnRotaryEncoder(11) -- scroll to source category telem
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(0) -- scroll to rssi 2.4g
simulator.pressKey(KEY_ENTER)
--
simulator.turnRotaryEncoder(1) -- scroll to add action
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to fn
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- scroll to subtract
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-subtrexample-subtract.png")
simulator.turnRotaryEncoder(1) -- scroll to value field
-- simulator.pressKey(KEY_ENTER)
-- simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER, 0.6) -- long press line source
simulator.turnRotaryEncoder(3) -- scroll to convert to value
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-subtrexample-conv2val.png")
simulator.pressKey(KEY_ENTER) -- convert
simulator.pressKey(KEY_ENTER) -- edit
simulator.touch(391, 451) -- set to tens
simulator.turnRotaryEncoder(2) -- 20
simulator.pressKey(KEY_RTN) -- y
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-subtr-20.png")
--simulator.screenshot("./screenshot7.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted
--simulator.pressKey(KEY_RTN)
--
-- demo of internal value 
simulator.setAnalog(throttleStickIndex, 100) -- set thr to -100
-- start at Telemetry icon
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(-1) -- scroll to [+] menu
simulator.pressKey(KEY_ENTER) -- open tab options
simulator.turnRotaryEncoder(3) -- scroll to 'create calculated sensor'
--simulator.screenshot("/screenshots/model-telemetry-calculated-sensor-select.png")
simulator.pressKey(KEY_ENTER) -- create
simulator.turnRotaryEncoder(1) -- scroll to function
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(6) -- scroll to custom
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(8) -- scroll to source
simulator.pressKey(KEY_ENTER)
--
-- select throttle
simulator.turnRotaryEncoder(2) -- scroll to source category analog
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2) -- scroll to throttle
simulator.pressKey(KEY_ENTER)
--
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-internal-value-max.png")
simulator.setAnalog(throttleStickIndex, -100) -- set thr to -100
simulator.sleep(0.6) -- wait 
simulator.screenshot("/screenshots/model-telemetry-edit-custom-sensor-internal-value-min.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted


-- **** Settings menu
--simulator.pressKey(KEY_MDL) -- open model menu
--simulator.pressKey(KEY_PAGE) -- 2nd page
--simulator.turnRotaryEncoder(1) -- scroll to telemetry
simulator.pressKey(KEY_ENTER) -- open
simulator.pressKey(KEY_PAGE) -- go to settings tab
simulator.screenshot("/screenshots/model-telemetry-settings.png")
--
-- competition only
simulator.turnRotaryEncoder(1) -- scroll to comp only
simulator.pressKey(KEY_ENTER) -- open, get confirmation dialog
simulator.screenshot("/screenshots/model-telemetry-comp-only-confirm.png")
simulator.pressKey(KEY_RTN) -- cancel
--
-- bluetooth
simulator.turnRotaryEncoder(1) -- scroll to bluetooth
simulator.pressKey(KEY_ENTER) -- enable
--simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_ENTER) -- confirm stop audio bt
simulator.sleep(3) -- wait 
simulator.screenshot("/screenshots/model-telemetry-bt-option.png")
simulator.sleep(5) -- wait 
simulator.pressKey(KEY_ENTER) -- turn off BT
--
simulator.turnRotaryEncoder(1) -- scroll to fbus via sport connector
simulator.screenshot("/screenshots/model-telemetry-fbus-via-sport.png")
--simulator.turnRotaryEncoder(2) -- scroll to individual rssi alert (BT change)
simulator.turnRotaryEncoder(1) -- scroll to individual rssi alert
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-telemetry-rssi-individual-alert.png")
simulator.pressKey(KEY_ENTER) -- disable
--simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
--simulator.pressKey(KEY_RTN) -- deselect
--simulator.pressKey(KEY_RTN) -- 
--simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN) -- back to model menu, telem highlighted

--
-- delete all sensors
-- get blank start after deleting all sensors
simulator.pressKey(KEY_ENTER) -- open telemetry menu
simulator.touch(214, 90) -- tap on the Sensors tab
simulator.pressKey(KEY_ENTER,0.6) -- open tab options
simulator.turnRotaryEncoder(1) -- scroll to 'delete all sensors'
simulator.screenshot("/screenshots/model-telemetry-sensors-delete-select.png")
simulator.pressKey(KEY_ENTER) -- delete all sensors
simulator.screenshot("/screenshots/model-telemetry-sensors-delete-confirm.png")
--simulator.pressKey(KEY_RTN) -- cancel
simulator.pressKey(KEY_ENTER) -- confirm delete all sensors
simulator.sleep(0.6) -- wait 
simulator.screenshot("/screenshots/model-telemetry-sensors-deleted.png")
--
simulator.pressKey(KEY_RTN, 0.6) -- return home
