dofile("common.lua")

simulator.loadModel("fwexample.bin")
simulator.pressKey(KEY_ENTER) -- Ack the checklist warnings
simulator.adcValue(ANALOG_STICK_THROTTLE, 100)
simulator.pressKey(KEY_ENTER, 0.6) -- Contextual menu
simulator.screenshot("../assets/resetmenu.png") -- Reset menu
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_MDL) -- Model page
simulator.turnRotaryEncoder(6) -- Timers icon selected
simulator.pressKey(KEY_ENTER) -- Timers page
simulator.turnRotaryEncoder(1) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Contextual menu
simulator.turnRotaryEncoder(2) -- Edit entry in menu
simulator.pressKey(KEY_ENTER) -- First timer page
simulator.turnRotaryEncoder(1) -- Cursor on "Name"
simulator.pressKey(KEY_ENTER) -- Edition of "Name"
simulator.touch(64, 407) -- Switch to lowercase
simulator.screenshot("../assets/keyboard-text-azerty.png")
simulator.touch(76, 452) -- Switch to numbers
simulator.screenshot("../assets/keyboard-text-numbers.png")
simulator.pressKey(KEY_RTN) -- leave edit mode
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the timers page
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- Back to the model page
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- Outputs
simulator.turnRotaryEncoder(1) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Contextual menu
simulator.turnRotaryEncoder(3) -- First timer selected
simulator.pressKey(KEY_ENTER) -- Edit "Mini"
simulator.screenshot("../assets/keyboard-numbers.png")
simulator.touch(790, 452)
simulator.screenshot("../assets/keyboard-numbers-options.png")
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/keyboard-numbers-slider.png")
simulator.touch(790, 452)
simulator.turnRotaryEncoder(4)
simulator.screenshot("../assets/keyboard-numbers-options-disable-slider.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(14)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/keyboard-numbers-on-telemetry.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_RTN)
simulator.turnRotaryEncoder(-5)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(14)
simulator.screenshot("../assets/source-with-options.png")
simulator.pressKey(KEY_ENTER, 0.6)
simulator.screenshot("../assets/source-menu.png")
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(3)
simulator.screenshot("../assets/source-convert-to-value.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/source-stick-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER) -- open the dialog
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER) -- choose the switches category
simulator.turnRotaryEncoder(1) -- select the member column
simulator.pressKey(KEY_ENTER) -- member menu
simulator.turnRotaryEncoder(5)
simulator.pressKey(KEY_ENTER) -- choose SF (2pos)
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- SF source options
simulator.screenshot("../assets/source-2pos-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER) -- open the dialog
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the trim category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- trim source options
simulator.screenshot("../assets/source-trim-options.png")
simulator.pressKey(KEY_RTN)
simulator.pressKey(KEY_ENTER) -- open the dialog
simulator.turnRotaryEncoder(1) -- select the category column
simulator.pressKey(KEY_ENTER) -- category menu
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- choose the vars category
simulator.pressKey(KEY_RTN) -- remove selection
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.pressKey(KEY_ENTER, 0.6)
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER) -- Var source options
simulator.screenshot("../assets/source-var-options.png")
simulator.pressKey(KEY_RTN) -- close the options menu
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- mixes page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- model page
simulator.turnRotaryEncoder(8)
simulator.pressKey(KEY_ENTER) -- model functions
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6) -- play audio
simulator.turnRotaryEncoder(3)
simulator.pressKey(KEY_ENTER, 0.6) -- options menu
simulator.screenshot("../assets/switch-options.png")
simulator.pressKey(KEY_RTN) -- close the options menu
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to functions page
simulator.pressKey(KEY_RTN) -- clear the selection
simulator.pressKey(KEY_RTN) -- back to model page
simulator.turnRotaryEncoder(-1)
simulator.pressKey(KEY_ENTER) -- inters logiques
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER, 0.6) -- edit inter logique
simulator.turnRotaryEncoder(4)
simulator.pressKey(KEY_ENTER, 0.6) -- sensor options
simulator.screenshot("../assets/source-sensor-options.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER) -- tick "Max"
simulator.pressKey(KEY_RTN) -- close the dialog
simulator.screenshot("../assets/source-sensor-maxi.png")
