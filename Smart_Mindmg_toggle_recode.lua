local ref = gui.Reference("Ragebot", "Accuracy", "Weapon")
local weapon_list = {"shared","zeus","pistol","hpistol","smg","rifle","shotgun","scout","asniper","sniper","lmg"}
local tab = gui.Tab(gui.Reference("Ragebot"), "mindmg_toggle_tab" , "MinDamage Reducer")
local mindmgsettings = gui.Groupbox(tab, "MinDamage on Keypress",16,16,296,300)
local Damagekey = gui.Keybox(mindmgsettings, "mindmg_and_hc_toggle", "MinDamage Key", 0)
Damagekey:SetDescription("Key for reduced/original MinDmg")
local original = gui.GetValue(ref, "smt.mindmg" .. weapon_list[i] ) -- getting the var name of the check boxes/sliders
--(ref, weapon_list[i] , ".mindmg.reduced" ))



local original_weapons = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil} 

callbacks.Register("Draw", function()
	local weapons = gui.GetValue("rbot.accuracy.weapon.smt"):lower():gsub('%W','')
	if weapons == "heavypistol" then
		weapons = "hpistol"
	elseif weapons=="submachinegun" then
		weapons = "smg"
		elseif weapons=="shared" then
		weapons = "shared"
	elseif weapons=="autosniper" then
		weapons = "asniper"
	elseif weapons=="ssg08" then
		weapons = "scout"
	elseif weapons=="awp" then
		weapons = "awp"
	elseif weapons=="lightmachinegun" then
		weapons = "lmg"
	end
for i = 1, #weapon_list do
		if  weapon_list[i] == weapons then
			original_weapons[i]:SetInvisible(false)
		else
			original_weapons[i]:SetInvisible(true)
		end
	end
end)

for i = 1, #weapon_list do
local override = gui.Slider(ref, "smt" ..weapon_ist[i] , ".mindmg.reduced", "Reduced MinDmg Value", 1, 1, 100);
	original_weapons[i] = override
end


local function entities_check()
    local LocalPlayer = entities.GetLocalPlayer();
    local Player
    if LocalPlayer ~= nil then
        Player = LocalPlayer:GetAbsOrigin()
        if (math.floor((entities.GetLocalPlayer():GetPropInt("m_fFlags") % 4) / 2) == 1) then
            z = 46
        else
            z = 64
        end
        Player.z = Player.z + LocalPlayer:GetPropVector("localdata", "m_vecViewOffset[0]").z
        return Player, LocalPlayer
    end
end



callbacks.Register("Draw", function()
	if not entities.GetLocalPlayer() then
		return
	end      
           	if (Damagekey:GetValue() == 0) then return end
				if (input.IsButtonDown(Damagekey:GetValue())) then	
					gui.SetValue("rbot.accuracy.weapon.smt" .. weapon_list[i] .. ".mindmg", override:GetValue())
                else
					gui.SetValue("rbot.accuracy.weapon.smt" .. weapon_list[i] .. ".mindmg", original)
 end 
 end)                

