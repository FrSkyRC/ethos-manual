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

local function cells(count, index, v1, v2)
  return (count << 4) + index
       + (math.floor(v1 * 500 + 0.5) << 8)
       + (math.floor(v2 * 500 + 0.5) << 20)
end

local function telemetryHook(event, line)
  if event == "line" then
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=64}) -- RSSI on 2.4GHz
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF010, value=0}) -- VFR on 2.4GHz -- multiplied by -1 and offset = 100   
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF011, value=0}) -- Rx VFR -- multiplied by -1 and offset = 100   
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=64}) -- RSSI on 900M
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF103, value=104}) -- ADC2 Volage = 104V   
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF104, value=201}) -- RxBatt
    simulator.injectSPortFrame({module=0, band=1, rx=0, physId=0x98, primId=0x10, appId=0xF105, value=32}) -- SWR    
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0300, value=cells(2, 0, 3.2, 3.7)}) -- LiPo1 (1+2)
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0301, value=cells(6, 0, 3.69, 3.72)}) -- LiPo2 (1+2)
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0301, value=cells(6, 2, 3.71, 3.70)}) -- LiPo2 (3+4)
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0301, value=cells(6, 4, 3.69, 3.71)}) -- LiPo2 (5+6)
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0200, value=100}) -- VFAS Current = 10.0A
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0210, value=1000}) -- VFAS Voltage = 10.0V    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0100, value=0}) -- Vario Altitude = 0m
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0x0110, value=50}) -- Vario VSpeed = 0.50m/s
  end
end

debug.sethook(telemetryHook, "l")

throttleStickIndex = 1
elevatorStickIndex = 2
if system.getStickMode() == 1 then
    throttleStickIndex = 2
    elevatorStickIndex = 1
end
