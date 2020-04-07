local visuals_menu = gui.Reference("VISUALS", "OTHER", "Effects")
local visuals_custom_viewmodel_editor = gui.Checkbox( visuals_menu, "lua_custom_viewmodel_editor", "Custom Viewmodel Editor", 1 );
local xO = client.GetConVar("viewmodel_offset_x");
local yO = client.GetConVar("viewmodel_offset_y");
local zO = client.GetConVar("viewmodel_offset_z");
local fO = client.GetConVar("viewmodel_fov");
local f1 = client.GetConVar("fov_cs_debug");
local xS = gui.Slider(visuals_menu, "lua_x", "X", xO, -20, 20); 
local yS = gui.Slider(visuals_menu, "lua_y", "Y", yO, -100, 100); 
local zS = gui.Slider(visuals_menu, "lua_z", "Z", zO, -20, 20); 
local vfov = gui.Slider(visuals_menu, "vfov", "Viewmodel FOV", fO, 0, 120);
local fov = gui.Slider(visuals_menu, "fov", "View FOV", f1, 0, 120);

local function Visuals_Viewmodel()
   if visuals_custom_viewmodel_editor:GetValue() then
client.SetConVar("viewmodel_offset_x", xS:GetValue(), true);
client.SetConVar("viewmodel_offset_y", yS:GetValue(), true);
client.SetConVar("viewmodel_offset_z", zS:GetValue(), true);
client.SetConVar("viewmodel_fov", vfov:GetValue(), true);
client.SetConVar("fov_cs_debug", fov:GetValue(), true);
   end
   end


local function noshadows()
    client.SetConVar( "r_shadows", 0, true );
    client.SetConVar( "cl_csm_static_prop_shadows", 0, true );
    client.SetConVar( "cl_csm_shadows", 0, true );
    client.SetConVar( "cl_csm_world_shadows", 0, true );
    client.SetConVar( "cl_foot_contact_shadows", 0, true );
    client.SetConVar( "cl_csm_viewmodel_shadows", 0, true );
    client.SetConVar( "cl_csm_rope_shadows", 0, true );
    client.SetConVar( "cl_csm_sprite_shadows", 0, true );
end


local function event(e)
    if e:GetName() == "round_start" then
        noshadows()
    end       
end

noshadows()

client.AllowListener("round_start")
callbacks.Register ("FireGameEvent", event)
callbacks.Register("Draw", "Custom Viewmodel Editor", Visuals_Viewmodel)

-------------------------------------------------------------------------------------------------

--------------------
-- ui setup
--------------------
local visualzz_ref = gui.Reference( "Visuals", "Other", "Effects" );
local tab = gui.Text( visualzz_ref, "" );
local Title = gui.Text( visualzz_ref, "# Extra Visuals #");

--------------------
-- ui items
--------------------
gui.Checkbox( visualzz_ref, "old_wep_esp", "Old weapon ESP", false );
gui.Checkbox( visualzz_ref, "old_hp_esp", "Old HP indicator", false );
gui.Checkbox( visualzz_ref, "nade_esp", "Grenade ESP", false );
--gui.Checkbox( visualzz_ref, "fov_enable", "Field of view override", false );
--gui.Slider( visualzz_ref, "fov_val", "Field of view amount", 60, 0, 140 );



--------------------
-- funcs
--------------------
local function GetWpnName( x )
	if x == 1 then return "desert eagle" end
	if x == 2 then return "dual berettas" end
	if x == 3 then return "five-seven" end
	if x == 4 then return "glock-18" end
	if x == 7 then return "ak-47" end
	if x == 8 then return "aug" end
	if x == 9 then return "awp" end
	if x == 10 then return "famas" end
	if x == 11 then return "g3sg1" end
	if x == 13 then return "galil ar" end
	if x == 14 then return "m249" end
	if x == 16 then return "m4a4" end
	if x == 17 then return "mac-10" end
	if x == 19 then return "p90" end
	if x == 23 then return "mp5-sd" end
	if x == 24 then return "ump-45" end
	if x == 25 then return "xm1014" end
	if x == 26 then return "pp-bizon" end
	if x == 27 then return "mag-7" end
	if x == 28 then return "negev" end
	if x == 29 then return "sawed-off" end
	if x == 30 then return "tec-9" end
	if x == 31 then return "zeus x27" end
	if x == 32 then return "p2000" end
	if x == 33 then return "mp7" end
	if x == 34 then return "mp9" end
	if x == 35 then return "nova" end
	if x == 36 then return "p250" end
	if x == 37 then return "ballistic shield" end
	if x == 38 then return "scar-20" end
	if x == 39 then return "sg 553" end
	if x == 40 then return "ssg 08" end
	if x == 41 then return "knife" end
	if x == 42 then return "knife" end
	if x == 43 then return "flashbang" end
	if x == 44 then return "high explosive grenade" end
	if x == 45 then return "smoke grenade" end
	if x == 46 then return "molotov" end
	if x == 47 then return "decoy grenade" end
	if x == 48 then return "incendiary grenade" end
	if x == 49 then return "c4 explosive" end
	if x == 50 then return "kevlar vest" end
	if x == 51 then return "kevlar + helmet" end
	if x == 52 then return "heavy assault suit" end
	if x == 54 then return "item_nvg" end
	if x == 55 then return "defuse kit" end
	if x == 56 then return "rescue kit" end
	if x == 57 then return "medi-shot" end
	if x == 58 then return "music kit" end
	if x == 59 then return "knife" end
	if x == 60 then return "m4a1-s" end
	if x == 61 then return "usp-s" end
	if x == 60 then return "m4a1-s" end
	if x == 61 then return "usp-s" end
	if x == 63 then return "cz75-auto" end
	if x == 64 then return "r8 revolver" end
	if x == 68 then return "tactical awareness grenade" end
	if x == 69 then return "bare hands" end
	if x == 70 then return "breach charge" end
	if x == 72 then return "tablet" end
	if x == 75 then return "axe" end
	if x == 76 then return "hammer" end
	if x == 78 then return "wrench" end
	if x == 80 then return "spectral shiv" end
	if x == 81 then return "fire bomb" end
	if x == 82 then return "diversion device" end
	if x == 83 then return "frag grenade" end
	if x == 84 then return "snowball" end
	if x == 85 then return "bump mine" end
	if x == 5027 then return "bloodhound gloves" end
	if x == 5028 then return "default t gloves" end
	if x == 5029 then return "default ct gloves" end
	if x == 5030 then return "sport gloves" end
	if x == 5031 then return "driver gloves" end
	if x == 5032 then return "hand wraps" end
	if x == 5033 then return "moto gloves" end
	if x == 5034 then return "specialist gloves" end
	if x == 5035 then return "hydra gloves" end
	if x == 5036 then return "local t agent" end
	if x == 5037 then return "local ct agent" end
end

local function DarkenMaterials( mat )
	local group = mat:GetTextureGroupName();

	if group == "World textures" or group == "StaticProp textures" or group == "SkyBox textures" then
		local modulate = ( group == "StaticProp textures" ) and 0.5 or 0.25;
		mat:ColorModulate( modulate, modulate, modulate );
	end
end

local function RestoreMaterials( mat ) 
	mat:ColorModulate( 1.0, 1.0, 1.0 );
end

--------------------
-- callbacks
--------------------
local function OnDrawESP( builder )
    local ent = builder:GetEntity();
    local localply = entities.GetLocalPlayer();
	
	--------------------
	-- old esp
	--------------------
	if ent:IsPlayer() and ent:GetTeamNumber() ~= localply:GetTeamNumber() then
		if gui.GetValue( "esp.other.old_wep_esp" ) then
			local id = ent:GetWeaponID();
	    	builder:AddTextBottom( GetWpnName( id ) );
		end

		if gui.GetValue( "esp.other.old_hp_esp" ) then
			builder:AddTextLeft( ent:GetHealth() .. " HP" .. " " );
		end 
	end
end

local function OnDraw( )
	--------------------
	-- fov changer
	--------------------
--	if gui.GetValue( "esp.other.fov_enable" ) then
--		client.SetConVar( "fov_cs_debug", gui.GetValue("esp.other.fov_val" ), true );
--	else
--		client.SetConVar( "fov_cs_debug", 0, true );
--	end


	--------------------
	-- ugly wip nade esp
	--------------------
	if gui.GetValue( "esp.other.nade_esp") then
		local nades = entities.FindByClass( "CBaseCSGrenadeProjectile" );
		for i = 1, #nades do
			local x, y = client.WorldToScreen( nades[ i ]:GetAbsOrigin() );
			if x ~= nil then
				draw.Color( 0, 0, 0, 250 )
				draw.FilledRect( x - 1, y - 1, x + 7, y + 7);

				draw.Color( 255, 0, 0, 255 );			
				draw.FilledRect( x, y, x + 5, y + 5);
			end
		end
	end
end



callbacks.Register( "DrawESP", OnDrawESP );
callbacks.Register( "Draw", OnDraw );

-------------------------------------------------------------------------------------------------

local nisc = gui.Reference('VISUALS', "Other", "Effects");
local vis_other_effects_title_SpaceLine = gui.Text(nisc, "");

local vis_other_effects_title = gui.Text(nisc, "# HvH Visuals #");
local EngineRadarchk = gui.Checkbox ( nisc, "lua_engine_radar", "Enable EngineRadar", 0 );
local ShowImpactsCheckbox = gui.Checkbox( nisc, "lua_showimpacts", "Show Impacts", 0 );
local impactpenCheckbox = gui.Checkbox( nisc, "lua_impactpen", "Bullet Penetration Impacts", 0 );
local showlagcompensationCheckbox = gui.Checkbox( nisc, "showlagcompensation", "Show Lagcompensation", 0 );
local FullbrightCheckbox = gui.Checkbox( nisc, "lua_fullbright", "Full Brightness", 0 );
local panorama_blur_off = gui.Checkbox(nisc,'lua_disable_panorama_blur', 'Disable Panorama Blur', 0)
local DisableWorldShadowsChkbox = gui.Checkbox(nisc, "lua_disable_shadows", "Disable WorldShadows", 0 );


-- show impacts 
local function showimpacts()
	if ShowImpactsCheckbox:GetValue() then
		client.SetConVar("sv_showimpacts", 1, true)
	else
		client.SetConVar("sv_showimpacts", 0, true)
	end
end
callbacks.Register("Draw", "showimpacts", showimpacts)

-- Bullet Penetration Impacts
local function impact()

    if impactpenCheckbox:GetValue() then
        client.SetConVar( "sv_showimpacts_penetration", 1, true )
    else
        client.SetConVar( "sv_showimpacts_penetration", 0, true )
    end
    
end

callbacks.Register( "Draw", "impact", impact )

--showlagcompensation--
local function showlagcompensation()
	
	if showlagcompensationCheckbox:GetValue() then
		client.SetConVar( "sv_showlagcompensation", 1, true )
	else
		client.SetConVar( "sv_showlagcompensation", 0, true )
	end
	
end

callbacks.Register( "Draw", "showlagcompensation", showlagcompensation )

-- Fullbright
local function Fullbright()
	
	if FullbrightCheckbox:GetValue() then
		client.SetConVar( "mat_fullbright", 1, true )
	else
		client.SetConVar( "mat_fullbright", 0, true )
	end
	
end

callbacks.Register( "Draw", "FullBrightness", Fullbright )

---disable panorama blur\--
local function disable_panorama_blur()
	
	if panorama_blur_off:GetValue() then
		client.SetConVar('@panorama_disable_blur', 1, true)
	else
		client.SetConVar('@panorama_disable_blur', 0, true)
		end 	
	
end

callbacks.Register('Draw', "disable_panorama_blur", disable_panorama_blur)

-- Engine Radar by Nyanpasu!
local function engine_radar_draw()

for index, Player in pairs(entities.FindByClass("CCSPlayer")) do

if not EngineRadarchk:GetValue() then        

Player:SetProp("m_bSpotted", 0);


else

Player:SetProp("m_bSpotted", 1);

end
end
end

callbacks.Register("Draw", "engine_radar_draw", engine_radar_draw);



-- No FOG  FPS Boost
local function nofog(e)
    if e:GetName() == "round_start" then
        client.SetConVar( "fog_enable", 0, true );
        client.SetConVar( "fog_enableskybox", 0, true );
        client.SetConVar( "fog_enable_water_fog", 0, true );
        client.SetConVar( "fog_override", 1, true );
        end        
    end
    
client.AllowListener("round_start")
callbacks.Register("FireGameEvent", "nofog", nofog)
-- END NoFog FPSboost ------------------

-- No WorldShadows FPS Boost
local function noshadows()

if not DisableWorldShadowsChkbox:GetValue() then
return
else
    client.SetConVar( "r_shadows", 0, true );
    client.SetConVar( "cl_csm_static_prop_shadows", 0, true );
    client.SetConVar( "cl_csm_shadows", 0, true );
    client.SetConVar( "cl_csm_world_shadows", 0, true );
    client.SetConVar( "cl_foot_contact_shadows", 0, true );
    client.SetConVar( "cl_csm_viewmodel_shadows", 0, true );
    client.SetConVar( "cl_csm_rope_shadows", 0, true );
    client.SetConVar( "cl_csm_sprite_shadows", 0, true );
end
end

local function eventz(e)
    if e:GetName() == "round_start" then
        noshadows()
    end       
end

--noshadows()

client.AllowListener("round_start")
callbacks.Register ("FireGameEvent", eventz)
-- END WorldShadows FPSboost ------------------


