local setValue = gui.SetValue
local getValue = gui.GetValue
local creg = callbacks.Register
local button_held = input.IsButtonDown
local y_offset = gui.Slider(gui.Reference("Visuals","Local","Helper"), "y.ind.offset", "HC Override Indicators Y-Offset", -70, -450, 450)
local screenX, screenY = getScreenSize()
local half_screenY = screenY / 2
local enabled = false
local reduce_hc_ref = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON");
local asniperhcslider = gui.Slider(reduce_hc_ref,"asniperhcslider", "New HC Slider", 0, 1, 100)
--local asnipermindmgslider = gui.Slider(reduce_hc_ref,"asnipermindmgslider", "New MinDmg Slider", 0, 1, 100)
local tgglkey = gui.Keybox(reduce_hc_ref, "ChangeDmgKey", "Change HC key", false);

-- cache old hc/dmg to restore later
local old_hc = getValue("rbot.accuracy.weapon.asniper.hitchance")
--local old_dmg = get("rbot.accuracy.weapon.asniper.mindmg")

local function reduce()


if (tgglkey:GetValue() == 0) then
        return;
    end

-- the amount to adjust
local new_hc = asniperhcslider:GetValue()
--local new_dmg = asnipermindmgslider:GetValue()

if not enabled then
old_hc = getValue("rbot.accuracy.weapon.asniper.hitchance")
end--local old_dmg = get("rbot.accuracy.weapon.asniper.mindmg")


    if button_held(tgglkey:GetValue()) then
        draw.Color(255,0,0,255);
        draw.Text(10, half_screenY-45+y_offset:GetValue(), "Accuracy Mode: Reduced")
        
        draw.Color(255,255,255,255)
        draw.Text(10, half_screenY-30+y_offset:GetValue(), "Hitchance:  " .. math.floor(new_hc))
       -- draw.Text(10, 645, "Minimum DMG:  " .. math.floor(new_dmg))
         setValue("rbot.accuracy.weapon.asniper.hitchance", (new_hc))
      --  set("rbot.accuracy.weapon.asniper.mindmg", asnipermindmgslider:GetValue())
        enabled = true
    else
        draw.Color(0,255,0,255)
        draw.Text(10, half_screenY-45+y_offset:GetValue(), "Accuracy Mode: Normal")
        draw.Color(255,255,255,255)
        
        draw.Text(10, half_screenY-30+y_offset:GetValue(), "Hitchance:  " .. math.floor(old_hc))
      --  draw.Text(10, 645, "Minimum DMG:  " .. math.floor(old_dmg))
        
        setValue("rbot.accuracy.weapon.asniper.hitchance", (old_hc))
      --  set("rbot.accuracy.weapon.asniper.mindmg", old_dmg)
	  enabled = false
    end
end

creg("Draw", "reduce", reduce)