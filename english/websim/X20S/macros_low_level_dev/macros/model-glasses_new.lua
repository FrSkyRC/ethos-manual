
-- 2026-04-04 first version
-- 2026-04-06 adapt to scrolling bug fix
-- 2026-04-21 correct last line to use RTN
-- 2026-05-07 adapt for fn sw's added to source categories

dofile("/macros/common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")


simulator.pressKey(KEY_ENTER) -- ackn alert
simulator.pressKey(KEY_MDL) -- open model
simulator.pressKey(KEY_PAGE) -- go to 2nd page
simulator.turnRotaryEncoder(8) -- scroll to glasses
simulator.screenshot("/screenshots/model-icon-glasses.png")
simulator.pressKey(KEY_ENTER) -- open glasses
simulator.screenshot("/screenshots/model-glasses.png")
-- bug work-around
simulator.pressKey(KEY_ENTER) --
simulator.pressKey(KEY_PAGE)
simulator.pressKey(KEY_PAGE)
--
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("/screenshots/model-glasses-base-config.png")
simulator.turnRotaryEncoder(2) -- scroll to search 
simulator.screenshot("/screenshots/model-glasses-base-config-search.png")
simulator.pressKey(KEY_ENTER) -- search
simulator.sleep(1) -- wait
simulator.advertizeBluetooth("Engo", "01:01:01:01:01:01")
--simulator.advertizeBluetooth("Bob", "01:01:01:01:01:02")
simulator.sleep(1) -- wait
simulator.turnRotaryEncoder(1) -- scroll to Alice
simulator.screenshot("/screenshots/model-glasses-base-config-engo.png")
simulator.pressKey(KEY_ENTER) -- select alice
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-glasses-base-config-connected-ok.png")
simulator.pressKey(KEY_ENTER) -- ack connected
simulator.sleep(1) -- wait
simulator.screenshot("/screenshots/model-glasses-base-config-connected.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to delete
simulator.screenshot("/screenshots/model-glasses-base-config-disconnect-select.png")
simulator.pressKey(KEY_RTN) -- exit from delete
--
-- simulator.screenshot("/screenshots/screenshot5.png")
-- now do display tab
simulator.pressKey(KEY_PAGE) -- page to display tab
simulator.screenshot("/screenshots/model-glasses-display.png")
simulator.turnRotaryEncoder(1) -- scroll to change layout
simulator.screenshot("/screenshots/model-glasses-display-change-layout-select.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-glasses-display-layouts-select.png")
simulator.turnRotaryEncoder(5) -- scroll to layout 5
simulator.screenshot("/screenshots/model-glasses-display-layouts-select-5.png")
simulator.pressKey(KEY_ENTER) -- select
simulator.screenshot("/screenshots/model-glasses-display-layout-5.png")
simulator.turnRotaryEncoder(1) -- scroll to widget 1
simulator.screenshot("/screenshots/model-glasses-display-widget-1-select.png")
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to widget type
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.screenshot("/screenshots/model-glasses-display-widget-1-value-select.png")
simulator.pressKey(KEY_ENTER) -- y
--simulator.screenshot("/screenshots/model-glasses-display-widget-1-value.png")
simulator.turnRotaryEncoder(1) -- scroll to source
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(11) -- scroll to timers
simulator.pressKey(KEY_ENTER) -- select
simulator.pressKey(KEY_ENTER) -- select timer 1
simulator.screenshot("/screenshots/model-glasses-display-widget-1-edit-timer1.png")
simulator.pressKey(KEY_RTN) -- 
simulator.pressKey(KEY_RTN)
--simulator.screenshot("/screenshots/model-glasses-display-widget-1-timer1-select.png")
simulator.pressKey(KEY_RTN)
simulator.screenshot("/screenshots/model-glasses-display-widget-1-timer1.png")
--
-- do vfr in 2nd widget
simulator.turnRotaryEncoder(3) -- scroll to 2nd widget
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to widget type
simulator.pressKey(KEY_ENTER) -- open 
simulator.turnRotaryEncoder(1) -- scroll to value
simulator.pressKey(KEY_ENTER) -- edit
simulator.turnRotaryEncoder(1) -- scroll to source
simulator.pressKey(KEY_ENTER) --edit
simulator.turnRotaryEncoder(12) -- scroll to telem
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(5) -- scroll to vfr 2.4g
simulator.pressKey(KEY_ENTER) -- select
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- exit
simulator.screenshot("/screenshots/model-glasses-display-widget-2-vfr.png")
simulator.pressKey(KEY_RTN, 0.6) -- return home