-- 2025-04-07 select vfr and vfrlow line 49 and 69 due to sim sensor and audio file changes
-- 2025-07-24 adapt macro to new Ethos 1.7 source select
-- 2025-08-03 adapt for '+' add sf and add comments
-- 2025-10-25 adapt for new play audio priority
-- 2026-02-17 adapt for new SF workflow

dofile("common.lua")
--simulator.setDateTime({year=2024, month=6, day=24, hour=20, min=0, sec=0, lock=true})

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- next page
simulator.turnRotaryEncoder(4) -- scroll to sf
simulator.screenshot("/screenshots/model-icon-sf.png")
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(4) -- scroll to 4th sf
simulator.pressKey(KEY_ENTER) -- open options
simulator.screenshot("/screenshots/model-sf-menu.png")
simulator.turnRotaryEncoder(2) -- scroll to move
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-sf-move.png")
simulator.pressKey(KEY_RTN) -- cancel
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add new sf
simulator.touch(571, 91) -- add new sf button '+'
simulator.screenshot("/screenshots/model-sf-menu.png")
simulator.turnRotaryEncoder(1) -- scroll to reset
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-reset.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(2) -- scroll to screenshot
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-screenshot.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(3) -- scroll to set fs
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-set-failsafe.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(4) -- scroll to play audio
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-play-audio.png")
simulator.turnRotaryEncoder(1) -- scroll to state
simulator.pressKey(KEY_ENTER) -- enable sf
--simulator.turnRotaryEncoder(7) -- scroll to add new line in seq
simulator.turnRotaryEncoder(8) -- scroll to add new line in seq
simulator.screenshot("/screenshots/model-sf-play-audio-add-line.png")
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) -- open type list
simulator.screenshot("/screenshots/model-sf-play-audio-add-line-type.png")
simulator.pressKey(KEY_RTN) -- cancel
simulator.turnRotaryEncoder(1) -- scroll to file
simulator.pressKey(KEY_ENTER) -- open wav file list
--simulator.turnRotaryEncoder(-5)
--simulator.turnRotaryEncoder(-9) -- select vfrlow
--simulator.turnRotaryEncoder(1)
--simulator.turnRotaryEncoder(3) -- scroll to vfr low
simulator.turnRotaryEncoder(translate("VFRlowFilePosition")) -- scroll to vfr-low.wav
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-sf-play-audio-add-play-file.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to sf
simulator.turnRotaryEncoder(1) --scroll to add action
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to type
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(1) -- scroll to play value
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to source
simulator.pressKey(KEY_ENTER) -- y
-- 
simulator.turnRotaryEncoder(12) -- scroll to telem
simulator.pressKey(KEY_ENTER) --y
simulator.turnRotaryEncoder(5) --scroll to vfr 2.4
simulator.pressKey(KEY_ENTER) --y

simulator.screenshot("/screenshots/model-sf-play-audio-add-play-value.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to sf
simulator.turnRotaryEncoder(1) -- scroll to add new line
simulator.screenshot("/screenshots/model-sf-play-audio-add-play-value-add-line.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to sf list
simulator.turnRotaryEncoder(-4) -- scroll bacl to sf5 sequence
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- scroll to edit
simulator.pressKey(KEY_ENTER) -- y
--simulator.turnRotaryEncoder(15) -- scroll to end of sequence
simulator.turnRotaryEncoder(16) -- scroll to end of sequence
simulator.screenshot("/screenshots/model-sf-play-audio-add-sequence.png")
simulator.turnRotaryEncoder(-1) -- scroll bacl to last seq line
simulator.pressKey(KEY_ENTER) -- y
simulator.turnRotaryEncoder(1) -- open squence mgt options
simulator.screenshot("/screenshots/model-sf-play-audio-add-sequence-management.png")
simulator.pressKey(KEY_RTN) -- back to sequence
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- back to sf list
simulator.pressKey(KEY_RTN)
--[[
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(2)
simulator.pressKey(KEY_ENTER)
]]--
-- add new sf
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(5) -- scroll to haptic
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-haptic.png")
simulator.turnRotaryEncoder(4) -- scroll to pattern
simulator.pressKey(KEY_ENTER) -- y
simulator.screenshot("/screenshots/model-sf-haptic-pattern.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- exit
--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(6) -- scroll to write logs
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-write-logs.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit

--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(7) -- scroll to go to screen
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-go-to-screen.png")
simulator.turnRotaryEncoder(4) -- scroll to screen
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to category
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(5) -- scroll to end of options list
--simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-sf-go-to-screen-options.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit
simulator.pressKey(KEY_RTN) -- back to sf

--
simulator.touch(571, 91) -- add new sf button '+'
simulator.turnRotaryEncoder(8) -- scroll to lock touchscreen
simulator.pressKey(KEY_ENTER) -- open sf
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-lock-touchscreen.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit

--
simulator.touch(571, 91) -- add new sf button '+'
--simulator.pressKey(KEY_ENTER) -- open actions list
simulator.turnRotaryEncoder(9) -- scroll to load model
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-load-model.png")
simulator.pressKey(KEY_RTN) -- deselect
simulator.pressKey(KEY_RTN) -- exit

--
simulator.touch(571, 91) -- add new sf button '+'
--simulator.pressKey(KEY_ENTER) -- open actions list
simulator.turnRotaryEncoder(10) -- scroll to play vario
simulator.pressKey(KEY_ENTER) -- select
simulator.turnRotaryEncoder(1) -- scroll to action
simulator.screenshot("/screenshots/model-sf-play-vario.png")
simulator.turnRotaryEncoder(4) -- scroll to source
simulator.pressKey(KEY_ENTER) -- open
simulator.turnRotaryEncoder(1) -- scroll to vspeed
simulator.screenshot("/screenshots/model-sf-play-vario-options.png")
simulator.pressKey(KEY_ENTER) -- select
simulator.screenshot("/screenshots/model-sf-play-vario-vspeed.png")
simulator.pressKey(KEY_RTN, 1)
