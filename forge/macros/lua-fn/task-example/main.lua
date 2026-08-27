-- Lua Task Example

local taskMin = -100
local taskMax = 100

local function taskInit()
  print("Task init")
end

local function taskWakeup(task)
  -- print("Task wakeup")
end

local function taskEvent(task)
  print("Task event")
end

local function taskConfigure(task)
  print("Task configure")
  local line = form.addLine("Range")
  local slots = form.getFieldSlots(line, {0, "-", 0})
  form.addNumberField(line, slots[1], -1024, 1024, function() return taskMin end, function(value) taskMin = value end)
  form.addStaticText(line, slots[2], "-")
  form.addNumberField(line, slots[3], -1024, 1024, function() return taskMax end, function(value) taskMax = value end)
end

local function taskRead(task)
  print("Task read")
  taskMin = storage.read("min")
  taskMax = storage.read("max")
end

local function taskWrite(task)
  print("Task write")
  storage.write("min", taskMin)
  storage.write("max", taskMax)
end

local function init()
  system.registerTask({key="LuaTask", name="Task Example", init=taskInit, wakeup=taskWakeup, event=taskEvent, configure=taskConfigure, read=taskRead, write=taskWrite})
end

return {init=init}
