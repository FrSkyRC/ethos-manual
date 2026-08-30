-- 2025-08-11 enable task example and add comments
-- 2025-10-20 add simulator.reloadScripts() so that Lua icon loads 
--

dofile("common_no_telem.lua")

local LUA_FN_SCRIPTS = {
  "demo-source",
  "task-example",
  "source-example",
}

for _, name in ipairs(LUA_FN_SCRIPTS) do
  local ok, err = os.copy("RADIO:/macros/lua-fn/" .. name, "RADIO:/scripts/" .. name)
end

simulator.reloadScripts() -- reload for the Lua menu

simulator.loadModel("rarebear.bin")

simulator.pressKey(KEY_ENTER) -- ack alert
simulator.pressKey(KEY_MDL) -- open model menu
simulator.pressKey(KEY_PAGE) -- 2nd page
simulator.pressKey(KEY_PAGE) -- 3rd page
simulator.turnRotaryEncoder(1) -- scroll to lua
simulator.screenshot("/screenshots/model-icon-lua.png")
simulator.pressKey(KEY_ENTER)
simulator.turnRotaryEncoder(1) -- enable task example
simulator.pressKey(KEY_ENTER)
simulator.screenshot("/screenshots/model-lua-config.png")
simulator.pressKey(KEY_RTN, 1)

for _, name in ipairs(LUA_FN_SCRIPTS) do
  os.rmtree("RADIO:/scripts/" .. name)
end

simulator.reloadScripts() -- reload for the Lua menu
