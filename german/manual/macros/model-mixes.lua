dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

-- simulator.loadModel("extra.bin")
-- model must have ail mix with 3 weight rates and no expo
simulator.loadModel("rarebear.bin")

simulator.setAnalog(ANALOG_LAST_SLIDER, 50)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
-- set up a flight mode
--[[
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.touch(322, 351)
simulator.touch(633, 399)
simulator.touch(69, 452)
simulator.touch(39, 308)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
]]--
-- end of fm
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/model-icon-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mixes.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mixes-ail-edit.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-ail.png")
simulator.turnRotaryEncoder(4) -- curve select
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- select expo
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- expo value
simulator.pressKey(KEY_ENTER) -- edit expo
simulator.touch(393, 448) -- select 10% steps
simulator.turnRotaryEncoder(3) -- 30%
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-ail-expo.png")
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
-- simulator.turnRotaryEncoder(-1)
-- simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.screenshot("../assets/model-mixes-ail-weight.png")
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER, 1) -- long press diff source
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER) -- select use a source
simulator.pressKey(KEY_ENTER) --  cat
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- open cat
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- analogs
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- member list
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- slider right
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-mixes-ail-diff.png")
simulator.turnRotaryEncoder(4)
simulator.turnRotaryEncoder(-2)
simulator.screenshot("../assets/model-mixes-ail-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-mixes-thr.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-thr-trim-menu.png")
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-mixes-thr-trim-low-position.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.turnRotaryEncoder(-5)
simulator.screenshot("../assets/model-mixes-thr-cut.png")
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(5)
simulator.turnRotaryEncoder(-5)
simulator.screenshot("../assets/model-mixes-thr-hold.png")
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/model-mixes-thr-ch-count.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_MDL)