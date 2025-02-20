--dofile("common.lua")

simulator.loadModel("edge 540.bin")


simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_MDL)
simulator.turnRotaryEncoder(8)
simulator.screenshot("../assets/model-icon-rf.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-home.png")
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-internal-module.png")
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-protocol-select-access.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-rf-protocol-select-d16.png")
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-rf-protocol-select-td.png")
simulator.pressKey(KEY_RTN)
simulator.screenshot("../assets/model-rf-access.png")
simulator.turnRotaryEncoder(7)
simulator.screenshot("../assets/model-rf-access-register.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-access-register-waiting.png")
simulator.sleep(8) -- wait 
simulator.screenshot("../assets/model-rf-access-register-rx-connected.png")
simulator.sleep(6) -- wait 
simulator.pressKey(KEY_ENTER)
simulator.sleep(4) -- wait 
simulator.screenshot("../assets/model-rf-access-register-registration-ok.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1)
simulator.screenshot("../assets/model-rf-access-rx1.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-access-rx1-bind-waiting-for-rx.png")
simulator.sleep(4) -- wait 
simulator.turnRotaryEncoder(1) -- scroll to rx
simulator.screenshot("../assets/model-rf-access-rx1-select-rx.png")
simulator.pressKey(KEY_ENTER) -- select rx
simulator.sleep(4) -- wait 
simulator.screenshot("../assets/model-rf-access-rx1-bind-ok.png")
simulator.sleep(4) -- wait 
-- simulator.screenshot("./screenshot15.png")
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-access-rx1-bound.png")
simulator.pressKey(KEY_ENTER)
simulator.pressKey(KEY_ENTER)
simulator.screenshot("../assets/model-rf-access-rx1-menu.png")
