-- TranspirancyOnZoom ------------------>

local TransparencyOnZoom = gui.Reference("VISUALS", "LOCAL", "Helper")
local Enable_box = gui.Checkbox(TransparencyOnZoom, "enable_transparency_checkbox", "Enable TransparencyOnScope", 0)
Enable_box:SetDescription("Enable Local ChamsTransparecy on Scope")

local cache = {
clr_local
clr_local_hidden
clr_ghost
clr_ghost_hidden
}

local invoke_cache_callback = function()
    if cache.clr_local ~= nil then
        gui.SetValue("esp.chams.local.visible.clr", cache.clr_local[1], cache.clr_local[2], cache.clr_local[3], cache.clr_local[4])
        cache.clr_local = nil
    end
	if cache.clr_local_hidden ~= nil then
        gui.SetValue("esp.chams.local.visible.clr", cache.clr_local_hidden[1], cache.clr_local_hidden[2], cache.clr_local_hidden[3], cache.clr_local_hidden[4])
        cache.clr_local_hidden = nil
    end
	if cache.clr_ghost ~= nil then
        gui.SetValue("esp.chams.ghost.visible.clr", cache.clr_ghost[1], cache.clr_ghost[2], cache.clr_ghost[3], cache.clr_ghost[4])
        cache.clr_ghost = nil
    end
	if cache.clr_ghost_hidden ~= nil then
        gui.SetValue("esp.chams.ghost.visible.clr", cache.clr_ghost_hidden[1], cache.clr_ghost_hidden[2], cache.clr_ghost_hidden[3], cache.clr_ghost_hidden[4])
        cache.clr_ghost_hidden = nil
    end
end

callbacks.Register("Draw", "scope_trpn", function()
    local me = entities.GetLocalPlayer()

    if me == nil or not me:IsAlive() or Enable_box:GetValue() == nil then
        invoke_cache_callback()
        return
    end

    local m_bIsScoped = me:GetProp("m_bIsScoped")
    local m_iTeamNum = me:GetProp("m_iTeamNum") -- T: 2 CT: 3

    if cache.clr_local == nil then cache.clr_local = { gui.GetValue("esp.chams.local.visible.clr") } end
	if cache.clr_local_hidden == nil then cache.clr_local_hidden = { gui.GetValue("esp.chams.local.occluded.clr") } end
    if cache.clr_ghost == nil then cache.clr_ghost = { gui.GetValue("esp.chams.ghost.visible.clr") } end
	if cache.clr_ghost_hidden == nil then cache.clr_ghost_hidden = { gui.GetValue("esp.chams.ghost.occluded.clr") } end

    print(cache.clr_local)
    print(cache.clr_local_hidden)
    print(cache.clr_ghost)    
	print(cache.clr_ghost_hidden)
	
	
    if m_bIsScoped == 1 or m_bIsScoped == 257 then

        if m_iTeamNum == 2 then gui.SetValue("esp.chams.local.visible.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 2 then gui.SetValue("esp.chams.local.occluded.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 2 then gui.SetValue("esp.chams.ghost.visible.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 2 then gui.SetValue("esp.chams.ghost.occluded.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 3 then gui.SetValue("esp.chams.local.visible.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 3 then gui.SetValue("esp.chams.local.occluded.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 3 then gui.SetValue("esp.chams.ghost.visible.clr", 90, 90, 90, 32) end
        if m_iTeamNum == 3 then gui.SetValue("esp.chams.ghost.occluded.clr", 90, 90, 90, 32) end
    else
        invoke_cache_callback()
    end
end)

-- END TranspirancyOnZoom ------------------>
