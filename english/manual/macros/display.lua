--2024-12-04 change adcValue() to setAnalog()
-- 2025-07-22 adapt macro to new Ethos 1.7 source select

-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

--dofile("common.lua")
simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("geronimo.bin")

simulator.setAnalog(1, 80)
--simulator.setAnalog(ANALOG_LAST_SLIDER, (-0.0 * 100 / 1024))
simulator.setAnalog(ANALOG_LAST_SLIDER, -100)
simulator.setAnalog(2, -10)
simulator.setAnalog(0, 20)
simulator.setAnalog(3, 40)

simulator.pressKey(KEY_ENTER) --clear warning
simulator.pressKey(KEY_DISP) --go to configure screens
simulator.turnRotaryEncoder(1) --scroll to configure of first widget
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to widget select(bitmap is default)
simulator.screenshot("../assets/display-widget-bitmap-config.png")
simulator.setAnalog(1, 80) -- start setting points for line chart demo
simulator.turnRotaryEncoder(1) --scroll to bitmap type
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-bitmap-type.png")
simulator.setAnalog(1, 70)
simulator.pressKey(KEY_RTN) --deselectbtype
simulator.turnRotaryEncoder(-1) --scroll back to widget select
simulator.pressKey(KEY_ENTER) -- open widgets list
simulator.turnRotaryEncoder(-1) --scroll back to '---'
simulator.screenshot("../assets/display-widget-types.png")
simulator.setAnalog(1, 60)
simulator.turnRotaryEncoder(2) --scroll to value widget
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source select
simulator.pressKey(KEY_ENTER) --open
--[[
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN) --rssi def
]]--
--simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(10) --scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(0) --scroll to RSSI
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(-1) --scroll back 
simulator.screenshot("../assets/display-widget-value-config.png")
simulator.setAnalog(1, 50)
simulator.turnRotaryEncoder(1) --scroll back to source
simulator.pressKey(KEY_ENTER, 1) --long ENT
simulator.turnRotaryEncoder(1) --scroll to min
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-value-min.png")
simulator.setAnalog(1, 40)
simulator.pressKey(KEY_RTN) --return
simulator.turnRotaryEncoder(-1) --scroll back to w type
simulator.screenshot("../assets/display-widget-value-min-rssi.png")
simulator.setAnalog(1, 30)
simulator.pressKey(KEY_ENTER) --open w type
simulator.turnRotaryEncoder(1) --scroll to timer logs
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-timer-logs-config.png")
simulator.setAnalog(1, 20)
simulator.pressKey(KEY_ENTER) -- enter cancels
simulator.turnRotaryEncoder(1) --scroll to gps
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-gps-map-config.png")
simulator.setAnalog(1, 10)
simulator.pressKey(KEY_ENTER) --enter cancels
simulator.turnRotaryEncoder(1) --scroll to lipo
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to sensor select
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to lipo
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(-1) --scroll back to w type
simulator.screenshot("../assets/display-widget-lipo-config.png")
simulator.setAnalog(1, 90)
simulator.pressKey(KEY_ENTER) --open w select
simulator.turnRotaryEncoder(1) --scroll to channels
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-channels-config.png")
simulator.setAnalog(1, 80)
simulator.pressKey(KEY_ENTER) --ent cancels
simulator.turnRotaryEncoder(1) --scroll to line chart
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to source select
simulator.pressKey(KEY_ENTER) --y
--[[select rssi
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(9)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(10) --scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(0) --scroll to RSSI
simulator.screenshot("../assets/display-change-source.png")
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(1) --scroll to pause cond
simulator.pressKey(KEY_ENTER) --y
--[[select sa down
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
simulator.turnRotaryEncoder(3) --scroll to sw's
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(2) --sw SA down
simulator.pressKey(KEY_ENTER) --y
--
simulator.turnRotaryEncoder(-2) --scroll back to w select
simulator.screenshot("../assets/display-widget-line-chart-config.png")
simulator.setAnalog(1, 70)
simulator.pressKey(KEY_ENTER) --open w select
simulator.turnRotaryEncoder(1) --scroll to text w
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/display-widget-text-config.png")
simulator.setAnalog(1, 60)
simulator.pressKey(KEY_RTN) --return from w
simulator.pressKey(KEY_RTN)

simulator.turnRotaryEncoder(7) --scroll to screen 2
simulator.pressKey(KEY_ENTER) --open
simulator.pressKey(KEY_ENTER) --open config options 
simulator.screenshot("../assets/display-screen-config-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)

-- now the working widgets
simulator.sleep(10) -- wait 
simulator.setAnalog(1, 50) --set more points for line chart demo
simulator.sleep(10) -- wait 
simulator.setAnalog(1, 40)
simulator.sleep(10) -- wait 
simulator.setAnalog(1, 30)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-value-telemetry.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-timer-log.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/display-widget-timer-log-menu.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-lipo.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-channels.png")
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-line-chart.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/display-widget-line-chart-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_PAGE)
simulator.screenshot("../assets/display-widget-text.png")
-- create new model for default home screen
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(18)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
simulator.touch(742, 454)
--simulator.touch(743, 453)
simulator.sleep(2) -- wait 
simulator.screenshot("../assets/display-main-view.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/display-widget-config-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)



simulator.pressKey(KEY_PAGE)
