local set = gui.SetValue
local get = gui.GetValue
local creg = callbacks.Register
local button_held = input.IsButtonDown

local reduce_hc_ref = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON");
local asniperhcslider = gui.Slider(reduce_hc_ref,"asniperhcslider", "New HC Slider", 0, 1, 100)
local asnipermindmgslider = gui.Slider(reduce_hc_ref,"asnipermindmgslider", "New MinDmg Slider", 0, 1, 100)
local tgglkey = gui.Keybox(reduce_hc_ref, "ChangeDmgKey", "Change damage key", false);

-- cache old hc/dmg to restore later
local old_hc = get("rbot.accuracy.weapon.asniper.hitchance")
local old_dmg = get("rbot.accuracy.weapon.asniper.mindmg")

-- the amount to adjust
local new_hc = asniperhcslider:GetValue()
local new_dmg = asnipermindmgslider:GetValue()

local function reduce()

if not get("rbot.accuracy.weapon.asniper") then
return;
end

if (tgglkey:GetValue() == 0) then
        return;
    end

-- amount to display
local hc = get("rbot.accuracy.weapon.asniper.hitchance")
local dmg = get("rbot.accuracy.weapon.asniper.mindmg")

    if button_held(tgglkey:GetValue()) then
        draw.Color(0,255,0,255);
        draw.Text(10,615, "Accuracy Mode: Reduced")
        
        draw.Color(255,255,255,255)
        draw.Text(10, 630, "Hitchance:  " .. math.floor(hc))
        draw.Text(10, 645, "Minimum DMG:  " .. math.floor(dmg))
        
        set("rbot.accuracy.weapon.asniper.hitchance", asniperhcslider:GetValue())
        set("rbot.accuracy.weapon.asniper.mindmg", asnipermindmgslider:GetValue())
        
    else
        draw.Color(255,255,255,255)
        draw.Text(10,615, "Accuracy Mode: Normal")
        draw.Color(255,255,255,255)
        
        draw.Text(10, 630, "Hitchance:  " .. math.floor(old_hc))
        draw.Text(10, 645, "Minimum DMG:  " .. math.floor(old_dmg))
        
        set("rbot.accuracy.weapon.asniper.hitchance", old_hc)
        set("rbot.accuracy.weapon.asniper.mindmg", old_dmg)
    end
end

creg("Draw", "reduce", reduce)