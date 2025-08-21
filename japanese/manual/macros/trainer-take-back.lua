-- 2025-08-04 add comments

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})


simulator.setSwitch(3, 2) -- set switch SD down as trainer switch
simulator.loadModel("oxalys.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.turnRotaryEncoder(3) -- scroll to lsw
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to first lsw ailinput
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/trainer-take-back-ailinput.png")
simulator.turnRotaryEncoder(4) -- scroll to source
simulator.pressKey(KEY_ENTER, 0.6) -- long ENT
simulator.turnRotaryEncoder(2) -- scroll to 'ignore trainer input'
simulator.pressKey(KEY_ENTER) -- enable
simulator.screenshot("../assets/trainer-take-back-ailinput-ignore.png")
simulator.pressKey(KEY_RTN) -- back to lsw1
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to lsw list
simulator.turnRotaryEncoder(1) -- scroll to second lsw eleinput
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/trainer-take-back-eleinput.png")
simulator.pressKey(KEY_RTN) -- back to lsw list
simulator.turnRotaryEncoder(1) -- scroll to lsw disable trainer
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/trainer-take-back-disable-trainer.png")
simulator.pressKey(KEY_RTN) -- back to lsw list
simulator.turnRotaryEncoder(1) -- scroll to lsw trainer active
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("../assets/trainer-take-back-trainer-active.png")
simulator.pressKey(KEY_RTN) -- back to lsw list
simulator.screenshot("../assets/trainer-take-back.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
