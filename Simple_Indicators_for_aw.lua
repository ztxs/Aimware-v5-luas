--FIXED--
--(Silly) Indicators by w1ldac3--
--GUI--
local ref = gui.Reference("Visuals","Local","Helper")
local autofire_check = gui.Checkbox(ref, "autofire.ind", "AutoFire Indicator", false)
local chol_check = gui.Checkbox(ref, "doublefire.ind", "DoubleFire Indicator", false)
--local baim_check = gui.Checkbox(ref, "baim.ind", "Baim Indicator", false)
local backtrack_check = gui.Checkbox(ref, "backtrack.ind", "Backtrack Indicator", false)
local resolver_check = gui.Checkbox(ref, "resolver.ind", "Resolver Indicator", false)
local fakeLag_check = gui.Checkbox(ref, "fakeLag.ind", "FakeLag Indicator", false)
local ddos_check = gui.Checkbox(ref, "ddos.ind", "DDOS Indicator", false)
local hc_check = gui.Checkbox(ref, "hc.ind", "HC Indicator", false)
local mindmg_check = gui.Checkbox(ref, "mindmg.ind", "MinDmg Indicator", false)
local blood_check = gui.Checkbox(ref, "bloodpressure.ind", "Blood Pressure Indicator", false)
local y_offset = gui.Slider(ref, "y.ind.offset", "Indicators Y Offset", -70, -450, 450)
local on_clr = gui.ColorPicker(ref, "ind.on.color", "Indicators ON Color", 178,193,89,255)
local off_clr = gui.ColorPicker(ref, "ind.off.color", "Indicators OFF Color", 255,25,25,255)
local value_clr = gui.ColorPicker(ref, "ind.value.color", "Indicators Value Color", 255,25,25,255)
--local font_s = gui.Slider(ref, "ind.font.size", "Font Size", 25, 0, 40)
gui.Text(ref, "Hello Daered fans.")

--End - GUI--
local weapon_list = {"shared","zeus","pistol","hpistol","smg","rifle","shotgun","scout","asniper","sniper","lmg"}

local vars = {nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil}


local adaptive_weapons = {
    -- see line 219
    ["asniper.mindmg"] = { 11, 38 },
    ["sniper.mindmg"] = { 9 },
    ["scout.mindmg"] = { 40 },
    ["hpistol.mindmg"] = { 64, 1 },
    ["pistol.mindmg"] = { 2, 3, 4, 30, 32, 36, 61, 63 },
    ["rifle.mindmg"] = { 7, 8, 10, 13, 16, 39, 60 },
    ["shared"] = {},
}



local function find_key(value) -- see line 219
    for k, v in pairs(adaptive_weapons) do
        if table_contains(v, value) then
            return k
        end
    end
end


local function set_vis(value) -- see line 219
    for k, v in pairs(adaptive_weapons) do
        if table_contains(v, value) then
            if k~= false then 
            k:SetInvisible(false)
            end
        else
            if k ~= false then 
            k:SetInvisible(true)
        end
        end
    end
end

callbacks.Register("Draw", function()
	local weapons = gui.GetValue("rbot.accuracy.weapon"):lower():gsub('%W','')
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
			adaptive_weapons[i]:SetInvisible(false)
		else
			return
		end
	end
end)



setFont = draw.SetFont
createFont = draw.CreateFont
getScreenSize = draw.GetScreenSize
getLocal = entities.GetLocalPlayer
color = draw.Color
text = draw.TextShadow
--local font_size = font_s:GetValue()
local font = draw.CreateFont("Tahoma", 15, 700, {0x200})
local screenX, screenY = getScreenSize()
local half_screenY = screenY / 2
--local red = 255,25,25,255
--local green = 178,193,89,255


local function drawIndicators()

local hc = gui.GetValue("rbot.accuracy.weapon.asniper.hitchance")  
local mindmg = gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")   

    draw.SetFont(font)
    
	if entities.GetLocalPlayer() then 
   
--AutoFire Indicator
	if autofire_check:GetValue() then
		if (gui.GetValue("rbot.master") == true) and (gui.GetValue("rbot.aim.key") == 0) then
		color(on_clr:GetValue())
        text(10, half_screenY+y_offset:GetValue(), "AutoFire")
		else
		color(off_clr:GetValue())
        text(10, half_screenY+y_offset:GetValue(), "AutoFire")
		end
    end
	
--Cholesterol Indicator--
	if chol_check:GetValue() then
        if (gui.GetValue("rbot.accuracy.weapon.asniper.doublefire") == 1 or 2) then
        color(on_clr:GetValue())
        text(10, half_screenY+15+y_offset:GetValue(), "DoubleFire")
        else
        color(off_clr:GetValue())
        text(10, half_screenY+15+y_offset:GetValue(), "DoubleFire")
        end
    end

--Baim Indicator
--	if baim_check:GetValue() then
--		if (gui.GetValue("rbot.hitscan.mode", weapon_list[i],".baimlethal") == true) then
--		color(on_clr:GetValue())
--        text(10, half_screenY+30+y_offset:GetValue(), "Baim (broken)")
--		else
--		color(off_clr:GetValue())
--        text(10, half_screenY+30+y_offset:GetValue(), "Baim (broken)")
--		end
--	end
    
--Backtrack Indicator--
    if backtrack_check:GetValue() then
        if (gui.GetValue("rbot.accuracy.posadj.backtrack") == true) then
        color(on_clr:GetValue())
        text(10, half_screenY+30+y_offset:GetValue(), "Backtrack")
        else
        color(off_clr:GetValue())
        text(10, half_screenY+30+y_offset:GetValue(), "Backtrack")
        end
    end
    
--Resolver Indicator
	if resolver_check:GetValue() then
		if (gui.GetValue("rbot.accuracy.posadj.resolver") == true) then
		color(on_clr:GetValue())
        text(10, half_screenY+45+y_offset:GetValue(), "Resolver")
		else
		color(off_clr:GetValue())
        text(10, half_screenY+45+y_offset:GetValue(), "Resolver")
		end
    end

--Fakelag Indicator
	if fakeLag_check:GetValue() then
		if (gui.GetValue("misc.fakelag.enable") == true) then
		color(on_clr:GetValue())
        text(10, half_screenY+60+y_offset:GetValue(), "Fakelag")
		else
		color(off_clr:GetValue())
        text(10, half_screenY+60+y_offset:GetValue(), "Fakelag")
		end
    end

--DDOS Indicator--
    if ddos_check:GetValue() then
        if (gui.GetValue("misc.fakelag.peek") == true) then
        color(on_clr:GetValue())
        text(10, half_screenY+75+y_offset:GetValue(), "DDOS PEEK")
        else
        color(off_clr:GetValue())
        text(10, half_screenY+75+y_offset:GetValue(), "DDOS PEEK")
        end
    end
	
--hc and mindmg
	if hc_check:GetValue() then
		if (gui.GetValue("rbot.accuracy.weapon", weapon_list[1], weapon_list[2], weapon_list[3], weapon_list[4], weapon_list[5], weapon_list[6], weapon_list[7],".hitchance") ~= nil) then  
        draw.Color(124, 176, 34, 255)
		text(10, half_screenY+90+y_offset:GetValue(), "HC % is")
        --draw.Color(0,0,128,255)
		color(value_clr:GetValue())
		text(82, half_screenY+90+y_offset:GetValue(), weapon_list[i], ''..hc)
	end
	if mindmg_check:GetValue() then
		if (gui.GetValue("rbot.accuracy.weapon", weapon_list[1], weapon_list[2], weapon_list[3], weapon_list[4], weapon_list[5], weapon_list[6], weapon_list[7],".mindmg") ~= nil) then  
        draw.Color(124, 176, 34, 255)
		text(10, half_screenY+105+y_offset:GetValue(), "MinDMG" )
	    --draw.Color(0,0,128,255)
		color(value_clr:GetValue())
		text(82, half_screenY+105+y_offset:GetValue(), weapon_list[i], ''..mindmg )
	end
	end
end

end
end


--Blood Pressure Indicator--
local originRecords = {}
local function drawHook()
    setFont(font)

    if blood_check:GetValue() then
       
        if getLocal() then
            if getLocal():IsAlive() then
                if originRecords[1] ~= nil and originRecords[2] ~= nil then
                    local delta = Vector3(originRecords[2].x - originRecords[1].x, originRecords[2].y - originRecords[1].y, originRecords[2].z - originRecords[1].z)
                    delta = delta:Length2D()^2
                    if delta > 4096 then
                        color(on_clr:GetValue())
                    else
                        color(off_clr:GetValue())
                    end
                    text(10, half_screenY+120+y_offset:GetValue(), "BLOOD PRESSURE")
                    if originRecords[3] ~= nil then
                        table.remove(originRecords, 1)
                    end
                end
            end
        end
    end
end

local function createMoveHook(cmd)
    if blood_check:GetValue() then
        if getLocal() then
            if getLocal():IsAlive() then
                if cmd.sendpacket then
                    table.insert(originRecords, entities.GetLocalPlayer():GetAbsOrigin())
                end
            end
        end
    end
end

callbacks.Register("Draw", drawHook)
callbacks.Register("Draw", drawIndicators)
callbacks.Register("CreateMove", createMoveHook)