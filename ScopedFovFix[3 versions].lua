local tp_state = {
    level = {
        [1] = 40,
        [2] = 15
    },

    convar = "sensitivity",
    convar_tp = "cam_idealdist",

    cache = nil,
    cache_sense = nil
}

callbacks.Register("Draw", "scope_fix", function()
    local g_Local = entities.GetLocalPlayer()

    if g_Local == nil then
        return
    end

    -- Thirdperson / ViewFOV corrections
    local tp_dist = gui.GetValue("esp.local.thirdpersondist")
    local cam_dist = client.GetConVar(tp_state.convar_tp)
	local m_bIsScoped = g_Local:GetProp("m_bIsScoped")
	
--	if (esp.other.lua_custom_viewmodel_editor:GetValue() == nil) then return; end

    if not (m_bIsScoped == 1 or m_bIsScoped == 257) and tp_dist > 0 then
        gui.SetValue("esp.local.thirdpersondist", cam_dist)
    end

    local weapon = g_Local:GetPropEntity("m_hActiveWeapon")
    if weapon then
        if tp_state.cache == nil then tp_state["cache"] = gui.GetValue("esp.other.fov") end
        if tp_state.cache_sense == nil then tp_state["cache_sense"] = client.GetConVar(tp_state.convar) end

        if g_Local:IsAlive() and (m_bIsScoped == 1 or m_bIsScoped == 257) then
            local level = weapon:GetProp("m_zoomLevel")

            local tcache = tp_state.cache - 90
            local tcache = (tcache > 0 and tcache or 0)

            if level ~= nil and tp_state.level ~= nil then
                gui.SetValue("esp.other.fov", tp_state.level[level] + tcache)
                client.SetConVar(tp_state.convar, (level == 1 and (tp_state.cache_sense / 2) or tp_state.cache_sense), true)
            end
        else
            if tp_state.cache ~= nil then
                gui.SetValue("esp.other.fov", tp_state.cache)
                tp_state["cache"] = nil
            end

            if tp_state.cache_sense ~= nil then
                client.SetConVar(tp_state.convar, tp_state.cache_sense, true)
                tp_state["cache_sense"] = nil
            end
        end
    else
        if tp_state.cache ~= nil then
            gui.SetValue("esp.other.fov", tp_state.cache)
            tp_state["cache"] = nil
        end

        if tp_state.cache_sense ~= nil then
            client.SetConVar(tp_state.convar, tp_state.cache_sense, true)
            tp_state["cache_sense"] = nil
        end
    end
end)



--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#----#--#
--[[
local GetValue = gui.GetValue;
local SetValue = gui.SetValue;

local UserViewFov = GetValue( "esp.other.fov" );

local function ZoomFOV()
    
    if ( UserViewFov > 0 ) then
    
        if entities.GetLocalPlayer() ~= nil then

            local LocalPlayer = entities.GetLocalPlayer();
            local isScoped = LocalPlayer:GetProp( "m_bIsScoped" );
    
            if isScoped ~= 0 then
                SetValue( "esp.other.fov", 0 );
            else
                SetValue( "esp.other.fov", UserViewFov );
            end

        end

    end
    
end

callbacks.Register( "Draw", "ZoomFOV", ZoomFOV);
--]]

--[[#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--

local GetLocalPlayer, GetValue, SetValue = entities.GetLocalPlayer, gui.GetValue, gui.SetValue
local enable = gui.Checkbox(gui.Reference('VISUALS', 'LOCAL', 'Helper'), 'vis_fixfov', 'Fix Scoped FOV', false)
local fov, set = {}

callbacks.Register('Draw', 'Fov fix', function()
	if not enable:GetValue() then
		return;
	end


	if GetValue("esp.other.lua_custom_viewmodel_editor") == nil then
		return;
	end

	local local_player = GetLocalPlayer()
	local is_scoped = local_player and local_player:GetProp("m_bIsScoped")
	local scoped = is_scoped == 1 or is_scoped == 257

	if scoped then
		SetValue('esp.other.fov', 0)
		SetValue('esp.other.vfov', 0)
		set = true
	else
		if not set then
			fov = {GetValue('esp.other.fov'), GetValue('esp.other.vfov')}
		else
			SetValue('esp.other.fov', fov[1])
			SetValue('esp.other.vfov', fov[2])
			set = false
		end
	end
end)


--]]