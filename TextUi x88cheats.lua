--x88cheats Menu inspired by Dragon's Text-UI--
--Rework by w1ldac3--

local ref = gui.Reference("Visuals")
local ref_upd = gui.Reference("Settings")
local x88_tab = gui.Tab(ref, "x88_tab", "x88Cheats")
local x88_updtab = gui.Tab(ref_upd, "x88_updtab", "x88Cheats Updates")

-- Auto Updater
local clientVersion = "1.0.5"
local latestVersion = http.Get("https://raw.githubusercontent.com/w1ldac3/x88Cheats-UI-Lua/master/version.txt")
local function Update()
    if clientVersion ~= latestVersion then
        currentScript = file.Open(GetScriptName(), "w")
        currentScript:Write(http.Get("https://raw.githubusercontent.com/w1ldac3/x88Cheats-UI-Lua/master/x88cheats%20UI.lua"))
        currentScript:Close()
        LoadScript(GetScriptName())
    end
end
--End - Auto-Updater--
--GUI of Auto-Updater--
local updater_groupbox = gui.Groupbox(x88_updtab, "Updater", 16, 16, 160, 0)
local changelog_groupbox = gui.Groupbox(x88_updtab, "Changelog", 192, 16, 431, 167)
local clientversion_text = gui.Text(updater_groupbox, "Current version: v" .. clientVersion)
local latestversion_text = gui.Text(updater_groupbox, "Latest version: v" .. latestVersion)
local update_button = gui.Button(updater_groupbox, "Update", Update)
local changelog_groupbox = gui.Text(changelog_groupbox, http.Get("https://raw.githubusercontent.com/w1ldac3/x88Cheats-UI-Lua/master/changelog.txt"))
--END - GUI of Auto-Updater--

--GUI--
local x88_group = gui.Groupbox(x88_tab, "Settings", 15,15, 295,400)
local x88_defaultst = gui.Groupbox(x88_tab, "Default UI Settings", 15,240, 294,400)
local x88_mlst = gui.Groupbox(x88_tab, "MasterLooser UI Settings", 15,520, 294,400)
local x88_styles = gui.Groupbox(x88_tab, "Styles", 320,15, 295,400)
local x88_offsets = gui.Groupbox(x88_tab, "Offsets", 320, 565, 295, 400 )
local x88_othr = gui.Groupbox(x88_tab, "Extra", 15,620,294,400)
local x88_info = gui.Groupbox(x88_tab, "Information", 320,1015,294,400)
local x88_con = gui.Groupbox(x88_tab, "Contact Information", 15,1075,294,400)
local ToggleMenu = gui.Checkbox(x88_group, "x88_enable", "Menu", false)
local ToggleWel = gui.Checkbox(x88_group, "x88_welcome", "Welcome!", false)
local ToggleAdvanced = gui.Checkbox(x88_defaultst, "x88_advanced", "Advanced Mode", false)
local ToggleKD = gui.Checkbox(x88_defaultst, "x88_kd", "Kills&Deaths", false)
local ToggleWM = gui.Checkbox(x88_group, "x88_watermark", "Premium Watermark", false)
local ToggleESP = gui.Checkbox(x88_defaultst, "x88_esp", "Visual Features", false)
local ToggleMisc = gui.Checkbox(x88_defaultst, "x88_misc", "Misc Features", false)
local ToggleStyles = gui.Combobox(x88_styles, "x88_style", "UI Style", "Default", "MasterLooser15", "Squidoodle (Beta + No Offsets)")
local clr_menu = gui.ColorPicker(x88_styles, "x88_menu_clr", "Menu Color", 255,255,255,255)
local clr_wel = gui.ColorPicker(x88_styles, "x88_menu_clr", "Welcome Message Color", 252,211,3,255)
local clr_wm = gui.ColorPicker(x88_styles, "x88_menu_wm", "Watermark Color", 192,108,129,255)
local clr_func_off = gui.ColorPicker(x88_styles, "x88_func_clr_off", "Functions OFF Color", 255,255,255,255)
local clr_func_on = gui.ColorPicker(x88_styles, "x88_func_clr_on", "Functions ON Color", 67,144,219,255)
local clr_func_on2 = gui.ColorPicker(x88_mlst, "x88_func_clr_on2", "2nd Functions ON Color", 143,222,203,255)
gui.Text(x88_styles, "SEIZURE WARNING!")
local epilepsy_menu = gui.Checkbox(x88_styles, "x88_rainbow_menu", "Rainbow Menu", false)
local epilepsy_wel = gui.Checkbox(x88_styles, "x88_rainbow_wel", "Rainbow Welcome Message", false)
local epilepsy_wm = gui.Checkbox(x88_styles, "x88_rainbow_wm", "Rainbow Watermark", false)
local epilepsy_func = gui.Checkbox(x88_styles, "x88_rainbow_func", "Rainbow Functions (v1.1)", false)
local welcome_offset_x = gui.Slider(x88_offsets, "x88_welcome_offset_x", "Welcome! Offset X", 270, 0, 700)
local welcome_offset_y = gui.Slider(x88_offsets, "x88_welcome_offset_y", "Welcome! Offset Y", 5, 0, 700)
local menu_offset_x = gui.Slider(x88_offsets, "x88_menu_offset_x", "Menu Offset X", 270, 0, 700)
local menu_offset_y = gui.Slider(x88_offsets, "x88_menu_offset_y", "Menu Offset Y", 50, 0, 700)
local wmark_offset_x = gui.Slider(x88_offsets, "x88_wmark_offset_x", "Watermark Offset X", 5, 0, 700)
local wmark_offset_y = gui.Slider(x88_offsets, "x88_wmark_offset_y", "Watermark Offset Y", 35, 0, 700)
local kd_offset_x = gui.Slider(x88_offsets, "x88_kd_offset_x", "KD Offset X", 500, 0, 700)
local kd_offset_y = gui.Slider(x88_offsets, "x88_kd_offset_y", "KD Offset Y", 5, 0, 700)
--Text in GUI--
gui.Text(x88_info, "Credits:")
gui.Text(x88_info, "Originally by I_Am_The_Dragon (UID: 220920)")
gui.Text(x88_info, "Reworked by w1ldac3 (UID: 217577)")
gui.Text(x88_info, "S/o to Squidoodle (UID: 305824) for helping a lot   with parts of code.")
gui.Text(x88_con, "Discord w1ldac3#5772")
gui.Text(x88_con, "Telegram @w1ldac3")
-- End - Text in GUI--
--Descriptions--
ToggleMenu:SetDescription("Shows x88cheats menu.")
ToggleWel:SetDescription("Show welcome message.")
ToggleKD:SetDescription("Shows Kills and Deaths counter.")
ToggleESP:SetDescription("Shows Visual features in menu.")
ToggleMisc:SetDescription("Shows Misc features in menu.")
ToggleWM:SetDescription("Shows premium x88 software watermark.")
ToggleAdvanced:SetDescription("Shows type of Auto-Strafe, Fake-Lag and Fake-Ping.")
ToggleStyles:SetDescription("Chooses style of the menu.")
epilepsy_menu:SetDescription("Draws menu in animated rainbow color.")
epilepsy_wel:SetDescription("Draws welcome msg. in animated rainbow color.")
epilepsy_wm:SetDescription("Draws watermark in animated rainbow color.")
epilepsy_func:SetDescription("Draws *OFF/ON* in animated rainbow color.")
--End - Descriptions--
--End - GUI--

local font = draw.CreateFont("Tahoma", 14, 700, {0x200})
local username = client.GetPlayerNameByIndex(client.GetLocalPlayerIndex())
--This ^ gets your name from game--
--Thanks for helping Squidoodle--


local function overlay()
--RGB--
local speed = 3
    local r = math.floor(math.sin(globals.RealTime() * speed) * 127 + 128)
    local g = math.floor(math.sin(globals.RealTime() * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.RealTime() * speed + 4) * 127 + 128)
    local a = 255
--END of RGB--
local x, y = 0, 0
x = x + wmark_offset_x:GetValue()
y = y + wmark_offset_y:GetValue()
	if gui.GetValue("esp.master") then
	if ToggleWM:GetValue() then
	draw.SetFont(font)
	if epilepsy_wm:GetValue()
	then
	draw.Color(r,g,b,a)
	else
    draw.Color(clr_wm:GetValue())
	end
    draw.TextShadow(x,y,"x88Cheats")
	end
	end
end

local function welcome()
--RGB--
local speed = 3
    local r = math.floor(math.sin(globals.RealTime() * speed) * 127 + 128)
    local g = math.floor(math.sin(globals.RealTime() * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.RealTime() * speed + 4) * 127 + 128)
    local a = 255
--END of RGB--
local x, y = 0, 0
x = x + welcome_offset_x:GetValue()
y = y + welcome_offset_y:GetValue()
	if gui.GetValue("esp.master") then
	if ToggleWel:GetValue() then
    if gui.GetValue("esp.x88_tab.x88_style") == 0 then
		draw.SetFont(font)
	    if epilepsy_wel:GetValue()
	    then
	    draw.Color(r,g,b,a)
	    else
        draw.Color(clr_wel:GetValue())
	    end
        --Hello MasterLooser15!--
        draw.TextShadow(x,y,"Hello ")
        draw.TextShadow(x+35,y,username)
    	--MADE by w1ldac3--
    	draw.TextShadow(x,y+15,"Made by w1ldac3")
    	--Credits to Dragon--
    	draw.TextShadow(x+115,y+15,"Credits to Dragon")
	elseif gui.GetValue("esp.x88_tab.x88_style") == 1 then
		draw.SetFont(font)
		if epilepsy_wel:GetValue()
	    then
	    draw.Color(r,g,b,a)
	    else
        draw.Color(clr_wel:GetValue())
	    end
		draw.TextShadow(x,y,"Hello MasterLooser15 :)")
		draw.TextShadow(x,y+15, "Hello Vexxes :)")
	end
	end
	end
end
local function textui()
--RGB--
local speed = 3
    local r = math.floor(math.sin(globals.RealTime() * speed) * 127 + 128)
    local g = math.floor(math.sin(globals.RealTime() * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.RealTime() * speed + 4) * 127 + 128)
    local a = 255
--END of RGB--
local x, y = 0, 0
x = x + menu_offset_x:GetValue()
y = y + menu_offset_y:GetValue()
	if gui.GetValue("esp.master") then
	if ToggleMenu:GetValue() then
--Check if MasterLooser15 Style is off--
	if gui.GetValue("esp.x88_tab.x88_style") == 0 then
--Check finished--
	if entities.GetLocalPlayer() then
		draw.SetFont(font)
		--MENU Draws--
		if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end		end
		draw.TextShadow(x,y+15,"Aimbot:")
		draw.TextShadow(x,y,"OBS mode:") 

--Aimbot Functions--
if gui.GetValue("lbot.master") then
	draw.Color(25,193,33,255)
	draw.TextShadow(x+150,y+15,"Legit")
	elseif gui.GetValue("rbot.master") then
	draw.Color(255,0,0,255)
	draw.TextShadow(x+150,y+15,"Rage")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+150,y+15,"OFF")
end

--LegitBot Menu--
if gui.GetValue("lbot.master") then
	if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end	draw.TextShadow(x,y+30,"LegitBot:")
	draw.TextShadow(x,y+45,"Backtrack:")
	draw.TextShadow(x,y+60,"Triggerbot:")
	draw.TextShadow(x,y+75,"AutoTrigger:")
	draw.TextShadow(x,y+90,"Resolver:")
	draw.TextShadow(x,y+105,"LegitAA:")

--Functions--		
	if gui.GetValue("lbot.aim.enable") then
		draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+30,"ON")
		else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+30,"OFF")
    end
    if gui.GetValue("lbot.extra.backtrack") == 0 then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+45,"OFF")
		elseif gui.GetValue("lbot.extra.backtrack") <= 100 then
		draw.Color(25,193,33,255)
		draw.TextShadow(x+150,y+45,"Legit")
		elseif gui.GetValue("lbot.extra.backtrack") <= 150 then
		draw.Color(255,255,0,255)
		draw.TextShadow(x+150,y+45,"Medium")
		elseif gui.GetValue("lbot.extra.backtrack") <= 200 then
		draw.Color(255,165,0,255)
		draw.TextShadow(x+150,y+45,"Rage")
		elseif gui.GetValue("lbot.extra.backtrack") <= 400 then
		draw.Color(255,0,0,255)
		draw.TextShadow(x+150,y+45,"MAX")
	end
    
    if gui.GetValue("lbot.trg.enable") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow( x+150,y+60, "ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow( x+150,y+60, "OFF")
	end
	if gui.GetValue("lbot.trg.autofire") then
		draw.Color(255,0,0,255)
		draw.TextShadow(x+150,y+75,"ON")
		else
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+75,"OFF")
	end
	if gui.GetValue("lbot.posadj.resolver") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+150,y+90,"ON")
		else
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+90,"OFF")
	end
	if string.match(tostring(gui.GetValue("lbot.antiaim.type")),"Off") then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+105,"OFF")
		elseif string.match(tostring(gui.GetValue("lbot.antiaim.type")),"Minimum") then	
		draw.Color(25,193,33,255)
		draw.TextShadow(x+150,y+105,"Min")
		elseif string.match(tostring(gui.GetValue("lbot.antiaim.type")),"Maximum") then
	
		draw.Color(255,0,0,255)
		draw.TextShadow(x+150,y+105,"Max")
	end
end
--End of LBOT menu--
--Visuals Functions--
if ToggleESP:GetValue() then
	if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end	draw.TextShadow(x+205,y+105,"BOX ESP:")
	draw.TextShadow(x+205,y+120,"Box Precision:")
	draw.TextShadow(x+205,y+135,"Chams:")
	draw.TextShadow(x+205,y+150,"Chams XQZ:")
	draw.TextShadow(x+205,y+165,"BTChams:")
	draw.TextShadow(x+205,y+180,"BTChams XQZ:")
	draw.TextShadow(x+205,y+195,"Glow:")
	draw.TextShadow(x+205,y+210,"Player Indicators:")
if gui.GetValue("esp.overlay.enemy.box") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+355,y+105, "OFF")
	elseif gui.GetValue("esp.overlay.enemy.box") == 1 then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+355,y+105, "Outlined")
	elseif gui.GetValue("esp.overlay.enemy.box") == 2 then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+355,y+105, "Normal")
end
if gui.GetValue("esp.overlay.enemy.precision") then
	draw.Color(clr_func_on:GetValue())	
	draw.TextShadow( x+355, y+120, "ON")	
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow( x+355, y+120, "OFF")
end
if gui.GetValue("esp.chams.enemy.visible") == 0 then
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+135, "OFF" )
	elseif gui.GetValue("esp.chams.enemy.visible") == 1 then
	draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Flat" )
    elseif gui.GetValue("esp.chams.enemy.visible") == 2 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Color" )
    elseif gui.GetValue("esp.chams.enemy.visible") == 3 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Metallic" )
    elseif gui.GetValue("esp.chams.enemy.visible") == 4 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Glow" )
    elseif gui.GetValue("esp.chams.enemy.visible") == 5 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Textured" )
    elseif gui.GetValue("esp.chams.enemy.visible") == 6 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+135,  "Invisible" )
end
if gui.GetValue("esp.chams.enemy.occluded") == 0 then
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+150, "OFF" )
    elseif gui.GetValue("esp.chams.enemy.occluded") == 1 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+150,  "Flat" )
    elseif gui.GetValue("esp.chams.enemy.occluded") == 2 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+150,  "Color" )
    elseif gui.GetValue("esp.chams.enemy.occluded") == 3 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+150,  "Metallic" )
    elseif gui.GetValue("esp.chams.enemy.occluded") == 4 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+150,  "Glow" )
end
if gui.GetValue("esp.chams.backtrack.visible") == 0 then
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+165, "OFF" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 1 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Flat" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 2 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Color" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 3 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Metallic" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 4 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Glow" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 5 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Textured" )
    elseif gui.GetValue("esp.chams.backtrack.visible") == 6 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+165,  "Invisible" )
end

if gui.GetValue("esp.chams.backtrack.occluded") == 0 then
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+180, "OFF" )
    elseif gui.GetValue("esp.chams.backtrack.occluded") == 1 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+180,  "Flat" )
    elseif gui.GetValue("esp.chams.backtrack.occluded") == 2 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+180,  "Color" )
    elseif gui.GetValue("esp.chams.backtrack.occluded") == 3 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+180,  "Metallic" )
    elseif gui.GetValue("esp.chams.backtrack.occluded") == 4 then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+180,  "Glow" )
end
if gui.GetValue("esp.overlay.enemy.glow") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+355,y+195,"OFF")
	elseif gui.GetValue("esp.overlay.enemy.glow") == 1 then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+355,y+195,"Team")
	elseif 
gui.GetValue("esp.overlay.enemy.glow") == 2 then
	draw.Color(0,255,0,255)
	draw.TextShadow(x+355,y+195,"Health")
end
if gui.GetValue("esp.local.outofview") then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+210, "ON")
    else
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+210, "OFF")
end
end
--End of Visuals--
--Misc Functions--
if ToggleMisc:GetValue() then
	if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end	draw.TextShadow(x+205,y+15,"Auto-Strafe:")
	draw.TextShadow(x+205,y+30,"Bunny-Hop:")
	draw.TextShadow(x+205,y+45,"FakeLag:")
	draw.TextShadow(x+205,y+60,"Fake PING:")
	draw.TextShadow(x+205,y+75,"Hitsound:")
	draw.TextShadow(x+205,y+90,"Clantag:")
if gui.GetValue("misc.strafe.enable") then
    draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+355,y+15, "ON" )
	else
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+15, "OFF")
        
end
if ToggleAdvanced:GetValue() then
if gui.GetValue("misc.strafe.enable") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+380,y+15, "|")
    if string.match(tostring(gui.GetValue("misc.strafe.mode")), "Silent") then
    draw.Color(255,0,0,255)
	draw.TextShadow(x+390,y+15, "SILENT")
	elseif string.match(tostring(gui.GetValue("misc.strafe.mode")), "Normal") then
    draw.Color(255,255,0,255)
	draw.TextShadow(x+390,y+15, "NORMAL")
	elseif string.match(tostring(gui.GetValue("misc.strafe.mode")), "Sideways") then
    draw.Color(255,255,0,255)
	draw.TextShadow(x+390,y+15, "SIDEWAYS")

	elseif string.match(tostring(gui.GetValue("misc.strafe.mode")), "W-Only") then
    draw.Color(255,255,0,255)
	draw.TextShadow(x+390,y+15, "W")



	elseif string.match(tostring(gui.GetValue("misc.strafe.mode")), "Mouse") then
    draw.Color(25,193,33,255)
	draw.TextShadow(x+390,y+15, "MOUSE")

end
end
end
	if string.match(tostring(gui.GetValue("misc.autojump")), "Off") then
    draw.Color(clr_func_off:GetValue())
    draw.TextShadow(x+355,y+30, 'OFF')
    elseif string.match(tostring(gui.GetValue("misc.autojump")), "Perfect") then
    draw.Color(255,255,0,255)
    draw.TextShadow(x+355,y+30, 'Perfect')
    elseif string.match(tostring(gui.GetValue("misc.autojump")), "Legit") then
    draw.Color(25,193,33,255)
	draw.TextShadow(x+355,y+30, 'Legit')
end   
    if gui.GetValue("misc.fakelag.enable") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+355,y+45, "ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+355,y+45, "OFF")
end
if ToggleAdvanced:GetValue() then
if gui.GetValue("misc.fakelag.enable") then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+380,y+45, "|")
		if gui.GetValue("misc.fakelag.type") == 0 then 
		draw.Color(25,193,33,255)
		draw.TextShadow(x+390,y+45, "NORMAL")
		elseif gui.GetValue("misc.fakelag.type") == 1 then
		draw.Color(255,0,0,255)
		draw.TextShadow(x+390,y+45, "ADAPTIVE")
		elseif gui.GetValue("misc.fakelag.type") == 2 then
		draw.Color(255,165,0,255)
		draw.TextShadow(x+390,y+45, "RANDOM")
		elseif gui.GetValue("misc.fakelag.type") == 3 then
		draw.Color(255,165,0,255)
		draw.TextShadow(x+390,y+45, "SWITCH")
end
if gui.GetValue("misc.fakelag.peek") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+455,y+45, "+ DDOS")
end
end    
    end
        if gui.GetValue("misc.fakelatency.enable") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+355,y+60, "ON")
        else
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+355,y+60, "OFF")	
end
if ToggleAdvanced:GetValue() then		
if gui.GetValue("misc.fakelatency.enable") then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+380,y+60, "|")
		if gui.GetValue("misc.fakelatency.amount") == 0 then
        draw.Color(255,255,255)
        draw.TextShadow(x+390,y+60, "0")
        elseif gui.GetValue("misc.fakelatency.amount") <= 100 then
        draw.Color( 25, 193, 33, 255 )
        draw.TextShadow(x+390,y+60, "LOW")
		elseif gui.GetValue("misc.fakelatency.amount") <= 350 then
        draw.Color( 255, 255, 0, 255 )
        draw.TextShadow(x+390,y+60, "MEDIUM")
		elseif gui.GetValue("misc.fakelatency.amount") <= 700 then
        draw.Color( 255, 165, 0, 255 )
        draw.TextShadow(x+390,y+60, "BAD INTERNET")
		elseif gui.GetValue("misc.fakelatency.amount") <= 1000 then
        draw.Color( 255, 0, 0, 255 )
        draw.TextShadow(x+390,y+60, "MAX")

    end
end
end
        if gui.GetValue("esp.world.hitmarkers") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+355,y+75, "ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+355,y+75, "OFF")
    end
        if gui.GetValue("misc.clantag") then
        draw.Color(255,0,0)
        draw.TextShadow(x+355,y+90, "FLEX :)")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+355,y+90, "OFF")
    end
end
--End of Misc-- 
--RageBot Menu-- 
        if gui.GetValue("rbot.master") then
--UI--
if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end draw.TextShadow(x,y+30,"RageBot:")
draw.TextShadow(x,y+45, "pSilent:") 
draw.TextShadow(x,y+60, "pResolver:")       
draw.TextShadow(x,y+75, "RageBacktrack:")   
draw.TextShadow(x,y+90, "Cholesterol:") --Double-Tap 
draw.TextShadow(x,y+105, "AA Pitch:")
draw.TextShadow(x,y+120,"AA Yaw:")
draw.TextShadow(x,y+135,"KnifeBot:")
--Functions--
		if gui.GetValue("rbot.aim.enable") then
		draw.Color(255,0,0,255)
		draw.TextShadow(x+150,y+30,"ON")
		else
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+30,"OFF")
	end
        if gui.GetValue("rbot.aim.target.silentaim") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+45, "ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+45, "OFF")
    end
        if gui.GetValue("rbot.accuracy.posadj.resolver") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+60, "ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+60, "OFF")
    end
        if gui.GetValue("rbot.accuracy.posadj.backtrack") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+75, "ON" )
        else
        draw.Color (clr_func_off:GetValue())
        draw.TextShadow(x+150,y+75, "OFF")
    end
        if gui.GetValue("rbot.accuracy.weapon.asniper.doublefire") == 0 then
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+90, "OFF")
        elseif gui.GetValue("rbot.accuracy.weapon.asniper.doublefire") == 1 then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+90, "SHIFT")
        elseif gui.GetValue("rbot.accuracy.weapon.asniper.doublefire") == 2 then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+90, "RAPID")
    end
        if gui.GetValue("rbot.antiaim.advanced.pitch") == 0 then
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+105, "OFF")
        elseif gui.GetValue("rbot.antiaim.advanced.pitch") == 1 then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+105, "89`")
        elseif gui.GetValue("rbot.antiaim.advanced.pitch") == 2 then
        draw.Color(255,0,0,255)
        draw.TextShadow(x+150,y+105, "180`")
end
		if string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Off") then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+150,y+120,"OFF")
		elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Backward") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+150,y+120,"Back")
		elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Spinbot") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+150,y+120,"Spin")
		elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+150,y+120,"Sync")
		elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync Jitter") then
		draw.Color(clr_func_on:GetValue())
		draw.TextShadow(x+150,y+120,"JitterSync")
--IDK why Desync Jitter is not drawing JitterSync :(--
--Prob bc it just found match string Desync and then draws only SYNC--

end
		if string.match(tostring(gui.GetValue("rbot.aim.extra.knife")), "Off") then
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y+135,"OFF")
        elseif string.match(tostring(gui.GetValue("rbot.aim.extra.knife")), "Default Knifebot") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+135,"Default")
        elseif string.match(tostring(gui.GetValue("rbot.aim.extra.knife")), "Only Backstab") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+135,"TF2 Spy")
        elseif string.match(tostring(gui.GetValue("rbot.aim.extra.knife")), "Quick Stab") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y+135,"Quick")
end
end
--End of Ragebot Menu--
		if gui.GetValue("esp.other.antiobs") then
        draw.Color(clr_func_on:GetValue())
        draw.TextShadow(x+150,y,"ON")
        else
        draw.Color(clr_func_off:GetValue())
        draw.TextShadow(x+150,y,"OFF")
    end
end
--Check if MasterLooser15 Style is on--
	elseif gui.GetValue("esp.x88_tab.x88_style") == 1 then
--Check finished--
	if entities.GetLocalPlayer() then
	--1st Menu--
	draw.SetFont(font)
	if epilepsy_menu:GetValue() then
		draw.Color(r,g,b,a)
		else
		draw.Color(clr_menu:GetValue())
		end	draw.TextShadow(x,y,"Triggerbot:")
	draw.TextShadow(x,y+15,"Bunnyhop:")
	draw.TextShadow(x,y+30,"Chams:")
	draw.TextShadow(x,y+45,"ESP:")
	draw.TextShadow(x,y+60,"RankESP:")
	draw.TextShadow(x,y+75,"NoHands?:")
	draw.TextShadow(x,y+90,"AA:")
	draw.TextShadow(x,y+105,"AA Mode:")
	draw.TextShadow(x,y+120,"Clantag:")
	draw.TextShadow(x,y+135,"Trickshot?:")
	draw.TextShadow(x,y+150,"FOVChanger:")
	draw.TextShadow(x,y+165,"Weapon FOV:")
	draw.TextShadow(x,y+180,"Crosshair:")
	draw.TextShadow(x,y+195,"pSilent:")
	draw.TextShadow(x,y+210,"AutoFire:")
	draw.TextShadow(x,y+225,"HVH Mode:")
	draw.TextShadow(x,y+240,"HS Only?:")
	--End of 1st Menu--
	--2nd Menu--
	draw.TextShadow(x+140,y,"MPoints?:")
	draw.TextShadow(x+140,y+15,"Legit:")
	draw.TextShadow(x+140,y+30,"Thirdp:")
	draw.TextShadow(x+140,y+45,"BackTrack:")
	draw.TextShadow(x+140,y+60,"BTChams:")
	draw.TextShadow(x+140,y+75,"AntiTrig:")
	draw.TextShadow(x+140,y+90,"SuperLegit:")
	draw.TextShadow(x+140,y+105,"Trolling?:")
	draw.TextShadow(x+140,y+120,"Kills:")
	draw.TextShadow(x+140,y+135,"Deaths:")
	draw.TextShadow(x+140,y+150,"KD:")
	draw.TextShadow(x+140,y+165,"Ping:")
	--End of 2nd Menu--
	--Functions--
if gui.GetValue("lbot.master") then
	if gui.GetValue("lbot.trg.enable") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y,"OFF")
	end
	else
	draw.TextShadow(x+90,y,"OFF")
end
if string.match(tostring(gui.GetValue("misc.autojump")), "Off") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+15,"OFF")
	elseif string.match(tostring(gui.GetValue("misc.autojump")), "Perfect") or string.match(tostring(gui.GetValue("misc.autojump")), "Legit") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y+15,"ON")
end
if gui.GetValue("esp.chams.enemy.occluded") == 0 and 
gui.GetValue("esp.chams.enemy.visible") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+30,"OFF")
elseif gui.GetValue("esp.chams.enemy.occluded") or gui.GetValue("esp.chams.enemy.visible") ~= 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+30,"")
end
if gui.GetValue("esp.chams.enemy.occluded") == 0 then
if gui.GetValue("esp.chams.enemy.visible") > 0 then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+80,y+30,"V_Static")
end
	elseif gui.GetValue("esp.chams.enemy.occluded") > 0 then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+80,y+30,"F_Static")
end
if gui.GetValue("esp.overlay.enemy.box") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+45,"OFF")
	elseif gui.GetValue("esp.overlay.enemy.box") == 1 then
	draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+90,y+45,"Outline")
	elseif gui.GetValue("esp.overlay.enemy.box") == 2 then
	draw.Color(clr_func_on:GetValue())
    draw.TextShadow(x+90,y+45,"Normal")
end
if gui.GetValue("misc.rankreveal") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y+60,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+60,"OFF")
end
if gui.GetValue("lbot.master") or gui.GetValue("rbot.master") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+90,"")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+90,"OFF")
end
if gui.GetValue("lbot.master") then
	if string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Minimum") or string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Maximum") then
	draw.Color(r,g,b)
	draw.TextShadow(x+90,y+90,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+90,"OFF")
end
end
if gui.GetValue("rbot.master") then
	if string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Backward") or string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Spinbot") or string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync") or string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync Jitter") then
	draw.Color(255,0,0)
	draw.TextShadow(x+50,y+90,"WARNING: ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+90,"OFF")
	end
end
if gui.GetValue("lbot.master") or gui.GetValue("rbot.master") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+105,"")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+105,"OFF")
end
if gui.GetValue("lbot.master") then
	if string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Off") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+105,"OFF")
	elseif string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Minimum") or string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Maximum") then
	draw.Color(255,255,255)
	draw.TextShadow(x+60,y+105,"Legit Desync")
end
end
if gui.GetValue("rbot.master") then
	if string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Off") then
	draw.Color(255,255,255)
	draw.TextShadow(x+90,y+105,"OFF")
	elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Backward") then
	draw.Color(255,255,255)
	draw.TextShadow(x+90,y+105,"Back")
	elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Spinbot") then
	draw.Color(255,255,255)
	draw.TextShadow(x+90,y+105,"Spin")
	elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync") then
	draw.Color(255,255,255)
	draw.TextShadow(x+90,y+105,"Sync")
end
end
if gui.GetValue("misc.clantag") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y+120,"1")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+120,"0")
end
if gui.GetValue("esp.x88_tab.x88_viewmodel_editor") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y+150,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+150,"OFF")
end
if gui.GetValue("esp.x88_tab.x88_viewmodel_editor") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+165,vfov:GetValue())
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+165,"OFF")
end
if gui.GetValue("esp.other.crosshair") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90,y+180,"xhair")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+180,"OFF")
end
if gui.GetValue("lbot.master") or gui.GetValue("rbot.master") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+195,"")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+195,"OFF")
end
if gui.GetValue("lbot.master") then
	if gui.GetValue("lbot.semirage.silentaimbot") then
	draw.Color(clr_func_on:GetValue())
	draw.TextShadow(x+90, y+195,"Tick")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90, y+195,"OFF")
end
end
if gui.GetValue("rbot.master") then
	if gui.GetValue("rbot.aim.target.silentaim") then
	draw.Color(255,0,0)
	draw.TextShadow(x+90,y+195,"Override")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+195,"OFF")
end
end
if gui.GetValue("lbot.master") then
	if gui.GetValue("lbot.aim.autofire") then
	draw.Color(255,0,0)
	draw.TextShadow(x+90,y+210,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+210,"OFF")
end
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+210,"OFF")
end
if gui.GetValue("rbot.master") then
	draw.Color(255,0,0)
	draw.TextShadow(x+90,y+225,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+90,y+225,"OFF")
end
if entities.FindByClass( "CBasePlayer" )[1] ~= nil then
        latency=entities.GetPlayerResources():GetPropInt( "m_iPing", client.GetLocalPlayerIndex() )
   draw.Color(255,255,255)
	draw.TextShadow(x+174,y+165,latency)  
end
if gui.GetValue("lbot.master") then
	draw.Color(clr_func_on2:GetValue())
	draw.TextShadow(x+230,y+15,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230,y+15,"OFF")
end
if gui.GetValue("lbot.extra.backtrack") == 0 then
		draw.Color(clr_func_off:GetValue())
		draw.TextShadow(x+230,y+45,"OFF")
		elseif gui.GetValue("lbot.extra.backtrack") <= 100 then
		draw.Color(clr_func_on2:GetValue())
		draw.TextShadow(x+230,y+45,"Legit")
		elseif gui.GetValue("lbot.extra.backtrack") <= 150 then
		draw.Color(255,255,0)
		draw.TextShadow(x+230,y+45,"Medium")
		elseif gui.GetValue("lbot.extra.backtrack") <= 250 then
		draw.Color(255,165,0)
		draw.TextShadow(x+230,y+45,"Blatant")
		elseif gui.GetValue("lbot.extra.backtrack") <= 400 then
		draw.Color(255,0,0)
		draw.TextShadow(x+230,y+45,"MAX")
end
if gui.GetValue("esp.local.thirdpersondist") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230, y+30,"OFF")
end
if gui.GetValue("esp.local.thirdpersondist") > 0 then
	draw.Color(255,255,255)
	draw.TextShadow(x+230,y+30,"ON")
	draw.TextShadow(x+255,y+30,gui.GetValue("esp.local.thirdpersondist"))
end
if gui.GetValue("esp.chams.backtrack.occluded") == 0 and gui.GetValue("esp.chams.backtrack.visible") == 0 then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230,y+60,"OFF")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x,y,"")
end
if gui.GetValue("esp.chams.backtrack.occluded") > 0 or gui.GetValue("esp.chams.backtrack.visible") > 0 then
	draw.Color(clr_func_on2:GetValue())
	draw.TextShadow(x+230,y+60,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x,y,"")
end
if gui.GetValue("misc.fakelag.enable") then
	if gui.GetValue("misc.fakelag.peek") then
	draw.Color(clr_func_on2:GetValue())
	draw.TextShadow(x+230,y+75,"ON")
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230,y+75,"OFF")
	end
	else
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230,y+75,"OFF")
end
if gui.GetValue("lbot.master") then
	if gui.GetValue("lbot.aim.enable") then
	draw.Color(clr_func_off:GetValue())
	draw.TextShadow(x+230,y+90,"OFF")
	else
	draw.Color(clr_func_on2:GetValue())
	draw.TextShadow(x+230,y+90,"ON")
	end
	else
    draw.Color(clr_func_on2:GetValue())
	draw.TextShadow(x+230,y+90,"ON")
end
end
end
end
end
end
--End of Menu--
--Squidoodle's Menu--
local peek_abs_origin = {}
local is_peeking = false
local has_shot = false
local legitAA = 0
local YAW;
local PITCH;
local PITCHES = {
    [0] = "OFF",
    [1] = "89",
    [2] = "180"
}
local lby = nil;
local YAWS = {
 [3] = "OFF",
 [4] = "Backward",
 [5] = "Spinbot",
 [6] = "Desync",
 [7] = "Desync Jitter"
}
callbacks.Register( "CreateMove", function(cmd)
    view = cmd:GetViewAngles().y 
    PITCH = cmd:GetViewAngles().x

end )
local pLocal = entities.GetLocalPlayer();
local function welcome_sqd()
	basex = 320
    basey = 96
    basexright = 475
    baseyright = 96 + 20
    fakelag = gui.GetValue("misc.fakelag.factor") 
--Welcome Text--
	if gui.GetValue("esp.x88_tab.x88_style") == 2 then
    draw.SetFont( font );
    draw.Color( 252, 211, 3 );
    draw.TextShadow( basex, basey - 46, "Hello Masterlooser :)" );
    draw.TextShadow( basex, basey - 31, "Hello EnzoHvH :)" );
	end
--End of Welcome Text--
    if gui.GetValue("esp.x88_tab.x88_style") == 2 then
	if entities.GetLocalPlayer() then
        local kills = entities.GetPlayerResources():GetPropInt("m_iKills", entities.GetLocalPlayer():GetIndex())
        local deaths = entities.GetPlayerResources():GetPropInt("m_iDeaths", entities.GetLocalPlayer():GetIndex())
        local kdr = kills / deaths
    if Difference == 0 then
    rr = 255
    gg = 0
    bb = 0
    else
        rr = 46
        gg = 111
        bb = 44
    end

    YAW = gui.GetValue("rbot.antiaim.base")
    lby = pLocal:GetProp("m_flLowerBodyYawTarget");
    Difference = view - lby 
    draw.TextShadow( basex , 80,"Fake: ".. math.floor(lby * 100) / 100)
    draw.TextShadow( basex + 105, 80, "Real: " .. math.floor(view * 100) / 100)
    draw.Color( rr, gg, bb, 255     )
    draw.TextShadow( basexright + 50, basey - 16, "Diff: ".. math.floor(Difference * 100) / 100 )
    end
	end
end

local function textui_sqd()

    draw.SetFont( font );
    local speed = 3
    local r = math.floor(math.sin(globals.RealTime() * speed) * 127 + 128)
    local g = math.floor(math.sin(globals.RealTime() * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.RealTime() * speed + 4) * 127 + 128)
    local a = 255
	if gui.GetValue("esp.x88_tab.x88_style") == 2 then
        if entities.GetLocalPlayer() then
        if gui.GetValue( "lbot.master" )  then                                         
        if gui.GetValue("lbot.trg.enable") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey, "Triggerbot: ");
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey, "ON" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, 96, "Triggerbot: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey, "OFF" )
    
        end
    else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, 96, "Triggerbot: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey, "OFF" )
    end
        if string.match(tostring(gui.GetValue("misc.autojump")), "Perfect") then            
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 15, "Bunnyhop: ");
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 15, "ON");
        elseif string.match(tostring(gui.GetValue("misc.autojump")), "Legit ") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 15, "Bunnyhop: ");
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 15, "ON");
        elseif string.match(tostring(gui.GetValue("misc.autojump")), "OFF") then
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex, basey + 15, "Bunnyhop: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey + 15, "OFF");
    end
        if gui.GetValue("esp.chams.enemy.occluded") > 0 then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 30, "Chams: ");
        draw.Color( 255, 0, 0, 255 )
        draw.TextShadow( basex + 105, basey + 30, "F_Static" )
        elseif gui.GetValue("esp.chams.enemy.visible") > 0 then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 30, "Chams: ");
        draw.Color( 31, 142, 244, 255 )
        draw.TextShadow( basex + 105, basey + 30, "V_Static" )
        else
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex, basey + 30, "Chams: ");
        draw.TextShadow( basex + 105, basey + 30, "OFF" )


    end
        if gui.GetValue("esp.overlay.enemy.skeleton") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 45, "ESP: ");
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 45, "ON");
        else 
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 45, "ESP: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey + 45, "OFF  ");

    end
        if gui.GetValue("misc.rankreveal") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow(basex, basey + 60, "RankESP: " );
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 60, "ON" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow(basex, basey + 60, "RankESP: " );
        draw.TextShadow( basex + 105, basey + 60, "OFF" )
        
    
    end
        
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow(basex, basey + 75, "Nohands: " );
        draw.TextShadow( basex + 105, basey + 75, "OFF" )
        

        if gui.GetValue( "lbot.master") then
            if string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Maximum") then            
                draw.Color( 255, 255, 255, 255 )
                draw.TextShadow( basex, basey + 90, "AA: " )
                draw.Color( r, g, b, 255 )
                draw.TextShadow( basex + 105, basey + 90, "ON" )
                legitAA = 1
            elseif string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Minimum") then            
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.Color( r, g, b, 255 )
                draw.TextShadow( basex + 105, basey + 90, "ON" )
                legitAA = 1
            else
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 90, "AA: ");
            draw.TextShadow( basex+ 105,basey + 90, "OFF" )
            legitAA = 0
            end
        elseif gui.GetValue("lbot.master")then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 90, "AA: ");
            draw.TextShadow( basex+ 105,basey + 90, "OFF" )
        end

        if gui.GetValue( "rbot.master") then
            if string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Backward") then
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.Color( 255, 0, 0, 255 )
                draw.TextShadow( basex + 105, basey + 90, "Warning: ON")
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Spinbot") then
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.Color( 255, 0, 0, 255 )
                draw.TextShadow( basex + 105, basey + 90, "Warning: ON" )
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync") then
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.Color( 255, 0, 0, 255 )
                draw.TextShadow( basex + 105, basey + 90, "Warning: ON" )
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync Jitter") then
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.Color( 255, 0, 0, 255 )
                draw.TextShadow( basex + 105, basey + 90, "Warning: ON" )
            else
                draw.Color( 255, 255, 255, 255 );
                draw.TextShadow( basex, basey + 90, "AA: ");
                draw.TextShadow( basex+ 105,basey + 90, "OFF" )
            end
        elseif gui.GetValue("rbot.master") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 90, "AA: ");
            draw.TextShadow( basex+ 105,basey + 90, "OFF" )
        end
    

        
       
            if gui.GetValue( "lbot.master") then
            if string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Maximum") then            
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex, basey + 105, "AA Mode:" )
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Legit Desync" )
            elseif string.match(tostring(gui.GetValue("lbot.antiaim.type")), "Minimum") then            
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Legit Desync" )
            else
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.TextShadow( basex+ 105,basey + 105, "OFF" )
            end
        end
            if gui.GetValue( "rbot.master") then
            if string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Backward") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Backward" )
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Spinbot") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Spinbot" )
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Desync" )
            elseif string.match(tostring(gui.GetValue("rbot.antiaim.base")), "Desync Jitter") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basex + 105, basey + 105, "Desync Jitter" )
            else
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basex, basey + 105, "AA Mode: ");
            draw.TextShadow( basex+ 105,basey + 105, "OFF" )
            end
            end
        




        if gui.GetValue("misc.clantag") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 120, "Clantag: ");
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 120, "1" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 120, "Clantag: ");
        draw.TextShadow( basex + 105, basey + 120, "0")
    end



       
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basex, basey + 135, "Trickshot: ");
        draw.TextShadow( basex + 105, basey + 135, "OFF" )

        draw.TextShadow( basex, basey + 150, "FOVChanger: " )
        draw.TextShadow( basex + 105, basey + 150, "OFF"  )
        if gui.GetValue( "esp.x88_tab.x88_viewmodel_editor" ) then
        draw.TextShadow( basex, basey + 165, "Weapon FOV: ")
        draw.TextShadow( basex + 105, basey + 165, fO .. " N" )
        else
        draw.TextShadow( basex, basey + 165, "Weapon FOV: ")
        draw.TextShadow( basex + 105, basey + 165, "OFF" )
        end
       
        if gui.GetValue( "esp.other.crosshair" ) then
        draw.TextShadow( basex, basey + 180, "Crosshair: ")
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 180, "xhair" )
        else 
        draw.TextShadow( basex, basey + 180, "Crosshair: ")
        draw.TextShadow( basex + 105, basey + 180, "OFF" )
        end
        if gui.GetValue( "rbot.aim.target.silentaim" ) then
        draw.Color( 255, 255, 255, a )
        draw.TextShadow( basex, basey + 195, "pSilent" )
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 195, "ON" )
        else
            draw.Color( 255, 255, 255, a )
        draw.TextShadow( basex, basey + 195, "pSilent: " )
        draw.TextShadow( basex + 105, basey + 195, "Aim Override" )
        end
        draw.Color( 255, 255, 255, 255 )
        if gui.GetValue("lbot.aim.autofire") then 
        draw.TextShadow( basex, basey + 210, "Autofire:" )
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 210, "ON" )
        else
        draw.TextShadow( basex, basey + 210, "Autofire: " )
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey + 210, "OFF" )
        end
        if gui.GetValue( "rbot.master") then
        draw.TextShadow( basex, basey + 225, "HvH Mode:" )
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basex + 105, basey + 225, "1" )
        else
        draw.TextShadow( basex, basey + 225, "HvH Mode: " )
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basex + 105, basey + 225, "OFF" )
        end
        if string.match(tostring(gui.GetValue("rbot.hitscan.points.shared")), "4 0 0 0 0 0 0 0 ") then
        draw.Color( 255, 255, 255, a )
        draw.TextShadow( basex, basey + 240, "HS Only" )
        draw.Color( 31, 142, 255, a )
        draw.TextShadow( basex + 105, basey + 240, "ON" )
        elseif string.match(tostring(gui.GetValue("rbot.hitscan.points.shared")), "0 0 0 0 4 0 0 0 ") then
        draw.Color( 255, 255, 255, a )
        draw.TextShadow( basex, basey + 240, "HS Only" )
        draw.Color( 31, 142, 255, a )
        draw.TextShadow( basex + 105, basey + 240, "BAIM" )
        else
        draw.Color( 255, 255, 255, a )
        draw.TextShadow( basex, basey + 240, "HS Only" )
        draw.TextShadow( basex + 105, basey + 240, "OFF" )
        end
        if gui.GetValue("rbot.master") then
        if gui.GetValue("rbot.hitscan.points.shared") then
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basexright, basey , "MPoints: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basexright + 105, basey , "90  " .. "ON" )
            
        end
    else
            draw.Color( 255, 255, 255, 255 );
            draw.TextShadow( basexright, basey , "MPoints: ");
            draw.Color( 255, 255, 255, 255 )
            draw.TextShadow( basexright + 105, basey  , "0  ".."OFF" )
        end

        if gui.GetValue( "lbot.master") then
        draw.TextShadow( basexright, basey + 15, "Legit: " )
        draw.Color( 132, 184, 172, a )
        draw.TextShadow( basexright + 105, basey + 15, "ON" )
        else
        draw.TextShadow( basexright, basey + 15, "Legit: " )
        draw.Color( 255, 255, 255, a )
        draw.TextShadow( basexright + 105, basey + 15, "OFF" )
        end

    --end
     if gui.GetValue( "esp.local.thirdpersonkey")then
        draw.Color( 255, 255, 255, a )
     draw.TextShadow( basexright + 25, basey + 30, "Thirdp: " )
     draw.Color( 31, 142, 255, a )
     draw.TextShadow( basexright + 130, basey + 30, "ON ".. gui.GetValue( "esp.local.thirdpersondist") )
    else
     draw.TextShadow( basexright, basey + 30, "Thirdp: " )
     draw.TextShadow( basexright + 130, basey + 30, "OFF ")
    end

        if gui.GetValue("lbot.extra.backtrack") < 150 then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 45, "Backtrack: ");
        draw.Color( 132, 184, 172, a )
        draw.TextShadow( basexright + 130, basey + 45, "Legit" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 45, "Backtrack: ");
        draw.Color( 255, 0, 0, 255 )
        draw.TextShadow( basexright + 130, basey + 45, "Blatant" )
    end
        if gui.GetValue("esp.chams.backtrack.visible") > 0 or ("esp.chams.backtrack.occluded") > 0 then
        draw.Color( 255, 255, 255 ,255 );
        draw.TextShadow( basexright, basey + 60, "BTChams: ");
        draw.Color( 132, 184, 172, a )
        draw.TextShadow( basexright + 105, basey + 60, "ON" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 60, "BTChams: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basexright + 105, basey + 60, "OFF" )
    end
        if gui.GetValue("misc.fakelag.peek") then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 75, "AntiTrig: ");        
        draw.Color( 31, 142, 255, 255 )
        draw.TextShadow( basexright + 105, basey + 75, "ON" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 75, "AntiTrig: ");
        draw.TextShadow( basexright + 105, basey+75, "OFF" )
    end
        if gui.GetValue("esp.chams.enemy.occluded") > 0 or gui.GetValue( "lbot.aim.enable" ) then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 90, "SuperLegit: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basexright + 105, basey + 90 , "OFF" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 90, "SuperLegit: ");
        draw.Color( 132, 184, 172, a )
        draw.TextShadow( basexright + 105, basey + 90 , "ON" )
        end
    
        if legitAA == 1 then
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 105, " ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basexright + 105, basey + 105 , "OFF" )
        else
        draw.Color( 255, 255, 255, 255 );
        draw.TextShadow( basexright, basey + 105, "Trolling: ");
        draw.Color( 255, 255, 255, 255 )
        draw.TextShadow( basexright + 105, basey + 105 , "OFF" )
        

        if gui.GetValue("misc.bypasspure") then
        kills = entities.GetPlayerResources():GetPropInt( 'm_iKills', client.GetLocalPlayerIndex() );
        deaths = entities.GetPlayerResources():GetPropInt( 'm_iDeaths', client.GetLocalPlayerIndex() ); 
        draw.TextShadow( basexright + 105, basey + 120, "Kills: " .. kills )
        draw.TextShadow( basexright + 105, basey + 135, "Deaths: " .. deaths )
        draw.Color( rrr, ggg, bbb, a )
        --draw.TextShadow( basexright + 105, basey + 150, "KD: " )
		--draw.TextShadow(basexright+115, basey +150, getKdr(entities.GetLocalPlayer()))
        else
        kills = entities.GetPlayerResources():GetPropInt( 'm_iKills', client.GetLocalPlayerIndex() );
        deaths = entities.GetPlayerResources():GetPropInt( 'm_iDeaths', client.GetLocalPlayerIndex() ); 
        draw.TextShadow( basexright + 105, basey + 120, "Kills: " .. kills )
        draw.TextShadow( basexright + 105, basey + 135, "Deaths: " .. deaths )
        draw.Color( rrr, ggg, bbb, a )
        --draw.TextShadow( basexright + 105, basey + 150, "KD: " )
		--draw.TextShadow(basexright+115, basey +150, getKdr(entities.GetLocalPlayer()))
        end  
        end
        
    end       
    end
end
--End of Squidoodle's Menu--
--Functions of Kills\Deaths--
local function getKdr(ply)
    local e = entities.GetPlayerResources()
    local index = ply:GetIndex()

    return e:GetPropInt('m_iKills', client.GetLocalPlayerIndex()) / e:GetPropInt('m_iDeaths', client.GetLocalPlayerIndex())
end
function kills_deaths()
local x, y = 0, 0
menu_x = x + menu_offset_x:GetValue()
menu_y = y + menu_offset_y:GetValue()
x = x + kd_offset_x:GetValue()
y = y + kd_offset_y:GetValue()
if gui.GetValue("esp.master") then
if ToggleKD:GetValue() then
if entities.GetLocalPlayer() then
if gui.GetValue("esp.x88_tab.x88_style") == 0 then
	draw.SetFont(font)
	--Kills&Deaths--
	draw.Color(255,100,0,255)
	draw.TextShadow(x,y,"Kills:")
	draw.Color(255,50,50,255)
	draw.TextShadow(x,y+15,"Deaths:")
	--kills
    draw.Color(255, 255, 255, 255)
    draw.TextShadow(x+30, y, entities.GetPlayerResources():GetPropInt('m_iKills', client.GetLocalPlayerIndex()
))
    --deaths
    draw.Color(255, 255, 255, 255)
    draw.TextShadow(x+45, y+15, entities.GetPlayerResources():GetPropInt('m_iDeaths', client.GetLocalPlayerIndex()))
end
end
end
if gui.GetValue("esp.x88_tab.x88_style") == 1 then
	if ToggleMenu:GetValue() then
	draw.SetFont(font)
	draw.Color(255, 255, 255, 255)
    draw.TextShadow(menu_x+173, menu_y+120, entities.GetPlayerResources():GetPropInt('m_iKills', client.GetLocalPlayerIndex()
))
    --deaths
    draw.Color(255, 255, 255, 255)
    draw.TextShadow(menu_x+190, menu_y+135, entities.GetPlayerResources():GetPropInt('m_iDeaths', client.GetLocalPlayerIndex()))
	draw.Color(255,255,255,255)
	draw.TextShadow(menu_x+163, menu_y+150, getKdr(entities.GetLocalPlayer()))
end
end
end
end



--End--
--Viemodel FOV Changer--
 visuals_menu = gui.Reference("Visuals", "x88Cheats")
 custom_viewmodel_editor = gui.Checkbox(x88_othr, "x88_viewmodel_editor", "Custom Viewmodel Editor", 0 );
 xO = client.GetConVar("viewmodel_OFFset_x"); 
 yO = client.GetConVar("viewmodel_OFFset_y"); 
 zO = client.GetConVar("viewmodel_OFFset_z");
 fO = client.GetConVar("viewmodel_fov");
 xS = gui.Slider(x88_othr, "vm_x", "X", xO, -20, 20);
 yS = gui.Slider(x88_othr, "vm_y", "Y", yO, -100, 100);
 zS = gui.Slider(x88_othr, "vm_z", "Z", zO, -20, 20);
 vfov = gui.Slider(x88_othr, "vfov", "Viewmodel FOV", fO, 0, 120);
 
local function Visuals_Viewmodel()

   if custom_viewmodel_editor:GetValue() then 
client.SetConVar("viewmodel_OFFset_x", xS:GetValue(), true);
client.SetConVar("viewmodel_OFFset_y", yS:GetValue(), true);
client.SetConVar("viewmodel_OFFset_z", zS:GetValue(), true);
client.SetConVar("viewmodel_fov", vfov:GetValue(), true);
   end
   end
local function Visuals_Disable_Post_Processing()
       if visuals_disable_post_processing:GetValue() then 
           client.SetConVar( "mat_postprocess_enable", 0, true );
   else
       client.SetConVar( "mat_postprocess_enable", 1, true );
       end
   end
--End of Viewmodel changer--
--SimpleSpeclist by Cheeseot
local specshit = gui.Reference( "Visuals", "x88Cheats", "Extra")
local BetterSpecBox = gui.Checkbox( specshit, "betterspec", "Simple spectator list", false )
BetterSpecBox:SetDescription("Position based on default spectator window.")

function betterspec()
local sorting = 0
local specpos1, specpos2 = gui.GetValue("spectators")
	if BetterSpecBox:GetValue() then
	gui.SetValue("misc.showspec", 0)
	local lp = entities.GetLocalPlayer()
		if lp ~= nil then
			for i, v in ipairs(entities.FindByClass("CCSPlayer")) do
			local player = v
				if player ~= lp and not player:IsAlive() then
				local name = player:GetName()
					if player:GetPropEntity("m_hObserverTarget") ~= nil then
					local playerindex = player:GetIndex()
					local botcheck = client.GetPlayerInfo(playerindex)
						if not botcheck["IsGOTV"] then
						local target = player:GetPropEntity("m_hObserverTarget");
							if target:IsPlayer() then
							local targetindex = target:GetIndex()
							local myindex = client.GetLocalPlayerIndex()
								if lp:IsAlive() then
									if targetindex == myindex then
									draw.SetFont(font)
									draw.Color(255,255,255,255)
									draw.Text( specpos1, specpos2 + (sorting * 16), name )
									draw.TextShadow( specpos1, specpos2 + (sorting * 16), name )
									sorting = sorting + 1
									end
								end	
								if not lp:IsAlive() then
									if lp:GetPropEntity("m_hObserverTarget") ~= nil then
									local myspec = lp:GetPropEntity("m_hObserverTarget")
									local myspecindex = myspec:GetIndex()
									if targetindex == myspecindex then
									draw.SetFont(font)
									draw.Color(255,255,255,255)
									draw.Text( specpos1, specpos2 + (sorting * 16), name )
									draw.TextShadow( specpos1, specpos2 + (sorting * 16), name )
									sorting = sorting + 1
									end
								end
								end
							end
						end
					end
				end
			end
		end
	end
end	
callbacks.Register ("Draw", "betterspec", betterspec)
--SimpleSpeclist by Cheeseot
--Recoil Crosshair by Cheeseot
local PunchCheckbox = gui.Checkbox(x88_othr, "recoilcrosshair", "Recoil Crosshair", 0 );
local recoilcolor = gui.ColorPicker(PunchCheckbox, "recoilcolor", "Recoil Crosshair Color", 255,255,255,255)
local IdleCheckbox = gui.Checkbox(x88_othr, "_recoilidle", "Crosshair only while recoil", 0 );

PunchCheckbox:SetDescription("Shows a nice little crosshair with recoil.")
IdleCheckbox:SetDescription("Shows recoil crosshair only while recoil presented.")

local function punch()

local rifle = 0;
local me = entities.GetLocalPlayer();
if me ~= nil and not gui.GetValue("rbot.master") then
    if me:IsAlive() then
    local scoped = me:GetProp("m_bIsScoped");
    if scoped == 256 then scoped = 0 end
    if scoped == 257 then scoped = 1 end
    local my_weapon = me:GetPropEntity("m_hActiveWeapon");
    if my_weapon ~=nil then
        local weapon_name = my_weapon:GetClass();
        local canDraw = 0;
        local snipercrosshair = 0;
        weapon_name = string.gsub(weapon_name, "CWeapon", "");
        if weapon_name == "Aug" or weapon_name == "SG556" then
            rifle = 1;
            else
            rifle = 0;
            end

        if scoped == 0 or (scoped == 1 and rifle == 1) then
            canDraw = 1;
            else
            canDraw = 0;
            end

        if weapon_name == "Taser" or weapon_name == "CKnife" then
            canDraw = 0;
            end

        if weapon_name == "AWP" or weapon_name == "SCAR20" or weapon_name == "G3SG1"  or weapon_name == "SSG08" then
            snipercrosshair = 1;
            end

    --Recoil Crosshair by Cheeseot

        if PunchCheckbox:GetValue() and canDraw == 1 then
            local punchAngleVec = me:GetPropVector("localdata", "m_Local", "m_aimPunchAngle");
            local punchAngleX, punchAngleY = punchAngleVec.x, punchAngleVec.y
            local w, h = draw.GetScreenSize();
            local x = w / 2;
            local y = h / 2;
            local fov = 90 --gui.GetValue("vis_view_fov");      polak pls add this back

            if fov == 0 then
                fov = 90;
                end
            if scoped == 1 and rifle == 1 then
                fov = 45;
                end
            
            local dx = w / fov;
            local dy = h / fov;
			
			local px = 0
			local py = 0
			
            if gui.GetValue("esp.other.norecoil") then
				px = x - (dx * punchAngleY)*1.2;
				py = y + (dy * punchAngleX)*2;
            else
				px = x - (dx * punchAngleY)*0.6;
				py = y + (dy * punchAngleX);
			end
            
            if px > x-0.5 and px < x then px = x end
            if px < x+0.5 and px > x then px = x end
            if py > y-0.5 and py < y then py = y end
            if py < y+0.5 and py > y then py = y end

			if IdleCheckbox:GetValue() then
            if px == x and py == y and snipercrosshair ~=1 then return; end
			end
				
            draw.Color(recoilcolor:GetValue());
            draw.FilledRect(px-3, py-1, px+3, py+1);
            draw.FilledRect(px-1, py-3, px+1, py+3);
            end
        end
    end
    end
end
callbacks.Register("Draw", "punch", punch);
--Recoil Crosshair by Cheeseot
--Callbacks\Listeners--
client.AllowListener( "player_death" )
client.AllowListener( "client_disconnect" )
client.AllowListener( "begin_new_match" )
callbacks.Register( "FireGameEvent", "KillDeathCount", KillDeathCount)
callbacks.Register("Draw", "Custom Viewmodel Editor", Visuals_Viewmodel)
callbacks.Register("Draw", "kills_deaths", kills_deaths)
callbacks.Register( "Draw", "overlay", overlay )
callbacks.Register( "Draw", "welcome", welcome )
callbacks.Register( "Draw", "textui", textui )  
callbacks.Register("Draw","welcome_sqd", welcome_sqd)
callbacks.Register("Draw","textui_sqd", textui_sqd)
