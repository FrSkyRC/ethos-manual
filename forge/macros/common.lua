-- 2025-01-11 add setReadOnly
--
simulator.setDateTime({year=2025, month=9, day=29, hour=20, min=0, sec=0, lock=true})
os.mkdir('RADIO:/screenshots')
simulator.setReadOnly(true) -- set to read only so models do not get modified
simulator.resetAnalogs() -- reset all analogs
simulator.resetSwitches() -- reset all switches

function injectRSSI()
    simulator.injectSPortFrame({module=0, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=60})
    simulator.injectSPortFrame({module=1, band=0, rx=0, physId=0x98, primId=0x10, appId=0xF101, value=60})
end
