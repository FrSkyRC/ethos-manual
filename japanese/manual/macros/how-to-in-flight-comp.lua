--2025-02-1 created
--2025-07-26 new 1.7 source select and lsw and sf add 
-- 0 = STICK_LEFT_HORIZONTAL (Rudder)
-- 1 = STICK_LEFT_VERTICAL (Throttle mode 2)
-- 2 = STICK_RIGHT_VERTICAL (Elevator)
-- 3 = STICK_RIGHT_HORIZONTAL (Aileron)

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("ng2.bin")
simulator.setAnalog(1, -100) -- set flap stick down
simulator.pressKey(KEY_ENTER) --ack alert
simulator.pressKey(KEY_MDL) --open model menu
simulator.pressKey(KEY_PAGE) --2nd page
simulator.turnRotaryEncoder(3) --scroll to lsw
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to first lsw
simulator.screenshot("../assets/how-in-flight-comp-lsws.png")
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-in-flight-comp-lsw-adaptivept2.png")
simulator.pressKey(KEY_RTN) --exit
simulator.turnRotaryEncoder(1) --scroll to next lsw
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-in-flight-comp-lsw-adaptivept3.png")
simulator.pressKey(KEY_RTN) --exit
simulator.turnRotaryEncoder(1) --scroll to next lsw
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-in-flight-comp-lsw-adaptivept4.png")
simulator.pressKey(KEY_RTN) --exit
simulator.turnRotaryEncoder(1) --scroll to next lsw
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-in-flight-comp-lsw-adaptivept5.png")
simulator.pressKey(KEY_RTN) --exit
simulator.pressKey(KEY_RTN) --back to lsw list
simulator.pressKey(KEY_RTN) --back to model menu
--
--now do thevars
simulator.turnRotaryEncoder(3) --scroll to vars
simulator.pressKey(KEY_ENTER) --y
--simulator.screenshot("./screenshot6.png")
simulator.turnRotaryEncoder(1) --scroll to first var
simulator.screenshot("../assets/how-in-flight-comp-vars.png")
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt2.png")
simulator.turnRotaryEncoder(6) --scroll to actions line
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt2-2.png")
simulator.pressKey(KEY_RTN) --exit
simulator.pressKey(KEY_RTN) --back to var list
simulator.turnRotaryEncoder(1) --scroll to next var
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
--simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_RTN) --deselect so sim does not edit here
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt3.png")
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt3-2.png")
simulator.pressKey(KEY_RTN) --exit
simulator.pressKey(KEY_RTN) --back to var list
simulator.turnRotaryEncoder(1) --scroll to next var
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
--simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_RTN) --deselect so sim does not edit here
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt4.png")
simulator.turnRotaryEncoder(6)
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt4-2.png")
simulator.pressKey(KEY_RTN) --exit
simulator.pressKey(KEY_RTN) --back to var list
simulator.turnRotaryEncoder(1) --scroll to next var
simulator.pressKey(KEY_ENTER) --open dialog
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to name
--simulator.pressKey(KEY_ENTER)
--simulator.pressKey(KEY_RTN) --deselect so sim does not edit here
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt5.png")
simulator.turnRotaryEncoder(6) --scroll to actions line
simulator.screenshot("../assets/how-in-flight-comp-var-vadjpt5-2.png")
simulator.pressKey(KEY_RTN) --deselect 
simulator.pressKey(KEY_RTN) --back to
simulator.pressKey(KEY_RTN) --back to vars 
simulator.pressKey(KEY_RTN) --back to model menu
--
--
simulator.turnRotaryEncoder(-1) --scroll back to curves
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to first curve
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) --scroll to edit
simulator.pressKey(KEY_ENTER) --y
simulator.screenshot("../assets/how-in-flight-comp-var-comp-curve.png")
simulator.turnRotaryEncoder(9) --scroll to points heading
simulator.pressKey(KEY_ENTER) --open points list
simulator.turnRotaryEncoder(5) --scroll to point 5
simulator.screenshot("../assets/how-in-flight-comp-var-comp-curve-pts.png")
simulator.pressKey(KEY_RTN, 1) --return home
 