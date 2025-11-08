-- 2025-01-11 add setReadOnly
-- 2025-10-20 temporarily comment out resets()
simulator.setDateTime({year=2025, month=9, day=29, hour=20, min=0, sec=0, lock=true})
os.mkdir('RADIO:/screenshots')
simulator.setReadOnly(true) -- set to read only so models do not get modified
--simulator.resetAnalogs() -- reset all analogs
--simulator.resetSwitches() -- reset all switches
