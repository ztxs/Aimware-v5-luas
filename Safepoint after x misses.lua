local ref = gui.Reference("Ragebot","Accuracy","Weapon")
--local slider = gui.Slider(ref, "auto_safepoint", "Safepoint after x misses", 0, 0, 10)

local m = 0;

local operating = false

local wepList = {"shared","zeus","pistol","hpistol","smg","rifle","shotgun","scout","asniper","sniper","lmg"}

local sliderArr = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}

for i = 1, #wepList do
	local a = gui.Slider(ref,"s_"..wepList[i], "Safepoint after x misses",0,0,10)
	sliderArr[i] = a
end

client.AllowListener("player_hurt")
client.AllowListener("weapon_fire")

callbacks.Register("FireGameEvent", function(e)
	if not entities.GetLocalPlayer() then return end
	if not entities.GetLocalPlayer():IsAlive() then return end
    if e:GetName() == "player_hurt" then
        local ME = client.GetLocalPlayerIndex()
        if client.GetPlayerIndexByUserID(e:GetInt("attacker")) == ME and client.GetPlayerIndexByUserID(e:GetInt("userid")) ~= ME and not entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon"):GetName():match("knife") and t~=nil then
            m=0
        end
    end
    if e:GetName() == "weapon_fire" then
        if client.GetPlayerIndexByUserID(e:GetInt("userid")) == client.GetLocalPlayerIndex() and not entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon"):GetName():match("knife") and t~=nil then
            m=m+1
        end
    end
end)

callbacks.Register("AimbotTarget", function(e)
    local test = pcall(function() tostring(e:GetHealth()) end)
    if test then
        t = e
    else
        t = nil
    end
end)

callbacks.Register("Draw", function()
	if not entities.GetLocalPlayer() then
		return
	end
	local mode = gui.GetValue("rbot.hitscan.mode"):lower():gsub('%W','')
	if mode == "heavypistol" then
		mode = "hpistol"
	elseif mode=="submachinegun" then
		mode = "smg"
	elseif mode=="autosniper" then
		mode = "asniper"
	elseif mode=="lightmachinegun" then
		mode = "lmg"
	end
	local ogt,val;
	if m >= gui.GetValue("rbot.accuracy.weapon.s_"..mode) and gui.GetValue("rbot.accuracy.weapon.s_"..mode) > 0 and not operating then
		ogt = target
		val = gui.GetValue("rbot.hitscan.mode."..mode..".overlap")
		gui.SetValue("rbot.hitscan.mode."..mode..".overlap", true)
		operating = true
	end
	if operating == true then
		if ogt ~= target or not entities.GetLocalPlayer():IsAlive()  then
			gui.SetValue("rbot.hitscan.mode."..mode..".overlap", val)
			m=0
			operating=false
		end
	end
end)

callbacks.Register("Draw", function()
	local mode = gui.GetValue("rbot.accuracy.weapon"):lower():gsub('%W','')
	if mode == "heavypistol" then
		mode = "hpistol"
	elseif mode=="submachinegun" then
		mode = "smg"
	elseif mode=="autosniper" then
		mode = "asniper"
	elseif mode=="lightmachinegun" then
		mode = "lmg"
	end
	for i = 1,#wepList do
		if wepList[i] == mode then
			sliderArr[i]:SetInvisible(false)
		else
			sliderArr[i]:SetInvisible(true)
		end
	end
end)