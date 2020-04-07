local RotationJitter = 10
local LBYJitter = 1
local MENU = gui.Tab(gui.Reference("Ragebot"), "aa.settings", "AA by PICOCODE")

local Jitter1 = gui.Slider(MENU, "first_jitter", "First Jitter", 0, -58, 58)
local Jitter2 = gui.Slider(MENU, "second_jitter", "Second Jitter", 0, -58, 58)
local LBYJitter1 = gui.Slider(MENU, "first_LBYjitter", "First LBY Jitter", 0, -180, 180)
local LBYJitter2 = gui.Slider(MENU, "second_LBYjitter", "Second LBY Jitter", 0, -180, 180)
local invkey = gui.Keybox(MENU, "inverter_key", "Inverter Key", 0)

function JitterOffset()
    if (RotationJitter == 10) then
        gui.SetValue("rbot.antiaim.base.rotation", Jitter1:GetValue())
        RotationJitter = 11
    elseif (RotationJitter == 11) then
        gui.SetValue("rbot.antiaim.base.rotation", Jitter2:GetValue())
        RotationJitter = 10
        end
end
function LBY()
    if (LBYJitter == 1) then
        gui.SetValue("rbot.antiaim.base.lby", LBYJitter1:GetValue())
        LBYJitter = 0
    elseif (LBYJitter == 0) then
        gui.SetValue("rbot.antiaim.base.lby", LBYJitter2:GetValue())
        LBYJitter = 1
        end
end
function Inv()
    if (input.IsButtonPressed(invkey:GetValue())) then
        local Inverted = 0
        local toinvert = gui.GetValue("rbot.aa.settings.first_jitter") * (-1)
        local toinvert2 = gui.GetValue("rbot.aa.settings.second_jitter") * (-1)
        local toinvertlby = gui.GetValue("rbot.aa.settings.first_LBYjitter") * (-1)
        local toinvertlby2 = gui.GetValue("rbot.aa.settings.second_LBYjitter") * (-1)    
        if Inverted == 0 then
            gui.SetValue("rbot.aa.settings.first_jitter", toinvert)    
            gui.SetValue("rbot.aa.settings.second_jitter", toinvert2)
            gui.SetValue("rbot.aa.settings.first_LBYjitter", toinvertlby)
            gui.SetValue("rbot.aa.settings.second_LBYjitter", toinvertlby2)
            Inverted = 1
        elseif Inverted == 1 then
            gui.SetValue("rbot.aa.settings.first_jitter", toinvert)    
            gui.SetValue("rbot.aa.settings.second_jitter", toinvert2)
            gui.SetValue("rbot.aa.settings.first_LBYjitter", toinvertlby)
            gui.SetValue("rbot.aa.settings.second_LBYjitter", toinvertlby2)
            Inverted = 0
        end    
    end
end

callbacks.Register("Draw", LBY)
callbacks.Register("Draw", JitterOffset)
callbacks.Register("Draw", Inv)