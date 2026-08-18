-- 2025-01-11 add setReadOnly
--
simulator.setDateTime({year=2025, month=9, day=29, hour=20, min=0, sec=0, lock=true})
os.mkdir('RADIO:/screenshots')
simulator.setReadOnly(true) -- set to read only so models do not get modified
simulator.resetAnalogs() -- reset all analogs
simulator.resetSwitches() -- reset all switches

dofile("translations.lua")

function translate(text)
  local entry = TRANSLATIONS[text]
  if entry then
    return entry
  else
    return text
  end
end

local function telemetryHook(event, line)
  if event == "line" then
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=64})
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=64})
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF104, value=201})
  end
end

debug.sethook(telemetryHook, "l")

throttleAnalogIndex = 1
elevatorStickIndex = 2
if system.getStickMode() == 1 then
    throttleAnalogIndex = 2
    elevatorStickIndex = 1
end
