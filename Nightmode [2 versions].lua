--[[local reference = gui.Reference("VISUALS", "WORLD", "Extra");
local exposure = gui.Slider(reference, "nex_bloom_exposure", "Night Mode", 100, 1, 100);
callbacks.Register("Draw", "Night Mode", function()
local controller = entities.FindByClass("CEnvTonemapController")[1];
if(controller) then
controller:SetProp("m_bUseCustomAutoExposureMin", 1);
controller:SetProp("m_bUseCustomAutoExposureMax", 1);

controller:SetProp("m_flCustomAutoExposureMin", exposure:GetValue()/100);
controller:SetProp("m_flCustomAutoExposureMax", exposure:GetValue()/100);
end
end)
--]]

--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#

 --[[Made by superyu'#7167]]--
VALUE = gui.Slider(gui.Reference("Visuals", "World", "Materials"), "esp.world.materials.nightmode", "Nightmode", 1, 1, 100);
APPLY = gui.Button(gui.Reference("Visuals", "World", "Materials"), "Apply Nightmode", function()
    local v = (100 - VALUE:GetValue()) / 100
    materials.Enumerate(function(mat)
        if string.find(mat:GetTextureGroupName(), "World") then
            mat:ColorModulate(v, v, v);
        end
    end)
end)
