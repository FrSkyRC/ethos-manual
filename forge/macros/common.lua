-- 2025-01-11 add setReadOnly
--
simulator.setDateTime({year=2025, month=9, day=29, hour=20, min=0, sec=0, lock=true})
os.mkdir('RADIO:/screenshots')
simulator.setReadOnly(true) -- set to read only so models do not get modified
simulator.resetAnalogs() -- reset all analogs
simulator.resetSwitches() -- reset all switches

dofile("/macros/translations.lua")

function translate(text)
  local entry = TRANSLATIONS[text]
  if entry then
    return entry
  else
    return text
  end
end

