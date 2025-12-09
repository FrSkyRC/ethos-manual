-- Lua Status widget
-- 01 alpha 9
-- 02 alpha 10 font changed
-- 03 bugfixes
-- 04 invert source for system events
-- 05 increase to 3 states
-- 06 version for Ethos 1.5.x (wdget.source now returns +/-100% instead of +/-1024)
-- 07 add one decimal to the thresholds, and allow thresholds up to +/-1000
-- 08 add debug mode so source values can be checked

local translations = {en="Lua Status3"}

local function name(widget)
    local locale = system.getLocale()
    return translations[locale] or translations["en"]
end

local function create()
    return {color1=lcd.RGB(0xF8, 0x00, 0x00), color2=lcd.RGB(0xF8, 0x80, 0x00), color3=lcd.RGB(0x00, 0xFC, 0x00), source=nil, value=0, state1threshold=500, state2threshold=-500, fontsize=FONT_STD, state1text="State 1", state2text="State 2", state3text="State 3", debugmode=false}
end

local function paint(widget)
    if widget.source == nil then
        return
    end

    lcd.font(widget.fontsize)

    local w, h = lcd.getWindowSize()
    local text_w, text_h = lcd.getTextSize("")
    -- local box_top, box_height = text_h, h - text_h - 4
    -- local box_left, box_width = 4, w - 8

    -- Source name and value
    -- lcd.drawText(box_left, 0, widget.source:name())
    -- lcd.drawText(box_left + box_width, 0, widget.source:stringValue(), RIGHT)

    -- print("widget.value"..widget.value) -- debug
    -- print("state1threshold"..state1threshold) -- debug

    if widget.value > widget.state1threshold/10 then
        -- State1 background
        -- lcd.color(widget.ri, widget.gi, widget.bi)
        lcd.color(widget.color1)
        lcd.drawFilledRectangle(0, 0, w, h)
        -- State1 Text
        lcd.color(BLACK)
        if widget.debugmode == true then
            --lcd.drawText(w / 2, (h - text_h)/ 2, widget.value, LEFT)
            s1thr = widget.state1threshold/10
            --lcd.drawText(w / 2, (h - text_h)/ 2,"thr1 "..s1thr .." ;  ", RIGHT)
            lcd.drawText(w / 2, (h - text_h)/ 2, "threshold1= "..s1thr.." ;  "..string.char(10).."src= "..widget.value, CENTERED)
        else
            lcd.drawText(w / 2, (h - text_h)/ 2, widget.state1text, CENTERED)
        end
    else
        if widget.value > widget.state2threshold/10 then
            -- State2 background
            -- lcd.color(widget.ri, widget.gi, widget.bi)
            lcd.color(widget.color2)
            lcd.drawFilledRectangle(0, 0, w, h)
            -- State1 Text
            lcd.color(BLACK)
            if widget.debugmode == true then
                --lcd.drawText(w / 2, (h - text_h)/ 2, , LEFT)
                s2thr = widget.state2threshold/10
                lcd.drawText(w / 2, (h - text_h)/ 2, "threshold2= "..s2thr.." ;  "..string.char(10).."src= "..widget.value, CENTERED)
            else
                lcd.drawText(w / 2, (h - text_h)/ 2, widget.state2text, CENTERED)
            end
        else
            -- State3 background
            -- lcd.color(widget.r, widget.g, widget.b)
            lcd.color(widget.color3)
            lcd.drawFilledRectangle(0, 0, w, h)
            -- print("lcd.color"..widget.color3) -- debug
            -- State3 Text
            lcd.color(BLACK)
            if widget.debugmode == true then
                --lcd.drawText(w / 2, (h - text_h)/ 2, widget.value, LEFT)
                s2thr = widget.state2threshold/10
                --lcd.drawText(w / 2, (h - text_h)/ 2, "thr2 "..s2thr.." ;  ", RIGHT)
                lcd.drawText(w / 2, (h - text_h)/ 2, "threshold2= "..s2thr.." ;  "..string.char(10).."src= "..widget.value, CENTERED)
            else
                lcd.drawText(w / 2, (h - text_h)/ 2, widget.state3text, CENTERED)
            end
        end
    end
end

local function wakeup(widget)
    if widget.source then
        local newValue = widget.source:value()
        if widget.value ~= newValue then
            -- print("lcd.invalidate "..widget.value.." "..newValue) --debug
            widget.value = newValue
            lcd.invalidate()
        end
    end
end

local function configure(widget)
    -- Source choice
    line = form.addLine("Source")
    form.addSourceField(line, nil, function() return widget.source end, function(value) widget.source = value end)

    -- State 1 text param
    line = form.addLine("State 1 Text Parameter")
    form.addTextField(line, nil, function() return widget.state1text end, function(value) widget.state1text = value end);

    -- State 1 threshold
    line = form.addLine("State 1 Threshold")
    f = form.addNumberField(line, nil, -10000, 10000,  function() return widget.state1threshold end, function(value) widget.state1threshold = value end);
    f:decimals(1)
    -- print("state1threshold"..widget.state1threshold) -- debug

    -- State 1 Color
    line = form.addLine("State 1 Background Color")
    --form.addColorField(line, nil, function() return widget.r, widget.g, widget.b end, function(r, g, b) widget.r, widget.g, widget.b = r, g, b end)
    form.addColorField(line, nil, function() return widget.color1 end, function(color1) widget.color1 = color1 end)
    -- print("addColorField"..widget.color1) -- debug

    -- State 2 text param
    line = form.addLine("State 2 Text Parameter")
    form.addTextField(line, nil, function() return widget.state2text end, function(value) widget.state2text = value end);

    -- State 2 threshold
    line = form.addLine("State 2 Threshold")
    -- form.addNumberField(line, nil, minValue, maxValue, function() return value end, function(newValue) value = newValue end)
    f = form.addNumberField(line, nil, -10000, 10000, function() return widget.state2threshold end, function(value) widget.state2threshold = value end);
    f:decimals(1)
    -- print("state2threshold"..widget.state2threshold) -- debug

    -- State 2 Color
    line = form.addLine("State 2 Background Color")
    --form.addColorField(line, nil, function() return widget.r, widget.g, widget.b end, function(r, g, b) widget.r, widget.g, widget.b = r, g, b end)
    form.addColorField(line, nil, function() return widget.color2 end, function(color2) widget.color2 = color2 end)

    -- State 3 text param
    line = form.addLine("State 3 Text Parameter")
    form.addTextField(line, nil, function() return widget.state3text end, function(value) widget.state3text = value end);
    
    -- State 3 Color
    line = form.addLine("State 3 Background Color")
    -- form.addColorField(line, nil, function() return widget.ri, widget.gi, widget.bi end, function(ri, gi, bi) widget.ri, widget.gi, widget.bi = ri, gi, bi end)
    form.addColorField(line, nil, function() return widget.color3 end, function(color3) widget.color3 = color3 end)

    -- Font (XS, S, STD, L, L Bold, XL, XXL)
    line = form.addLine("Font Size")
    form.addChoiceField(line, nil, {{"Extra Small", FONT_XS}, {"Small", FONT_S}, {"Standard", FONT_STD}, {"Large", FONT_L}, {"Large Bold", FONT_L_BOLD}, {"Extra Large", FONT_XL}, {"Extra Extra Large", FONT_XXL}}, function() return widget.fontsize end, function(value) widget.fontsize = value end)

    -- Debug mode
    line = form.addLine("Display values for debug")
    form.addBooleanField(line, nil, function() return widget.debugmode end, function(value) widget.debugmode = value end)
  
  
end

local function read(widget)
    widget.source = storage.read("source")
    widget.state1text = storage.read("state1text")
    widget.state2text = storage.read("state2text")
    widget.state3text = storage.read("state3text")
    widget.state1threshold = storage.read("state1threshold")
    widget.state2threshold = storage.read("state2threshold")
    widget.fontsize = storage.read("fontsize")
    widget.color1 = storage.read("color1")
    widget.color2 = storage.read("color2")
    widget.color3 = storage.read("color3")
    widget.debugmode = storage.read("debugmode")
end

local function write(widget)
    storage.write("source", widget.source)
    storage.write("state1text", widget.state1text)
    storage.write("state2text", widget.state2text)
    storage.write("state3text", widget.state3text)
    storage.write("state1threshold", widget.state1threshold)
    storage.write("state2threshold", widget.state2threshold)
    storage.write("fontsize", widget.fontsize)
    storage.write("color1", widget.color1)
    storage.write("color2", widget.color2)
    storage.write("color3", widget.color3)
    storage.write("debugmode", widget.debugmode)
end

local function init()
    system.registerWidget({key="status3", name=name, create=create, paint=paint, wakeup=wakeup, configure=configure, read=read, write=write})
end

return {init=init}