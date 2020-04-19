--[[
-- TranspirancyOnZoom ------------------>

local TransparencyOnZoom = gui.Reference("VISUALS", "LOCAL", "Helper")
local Enable_box = gui.Checkbox(TransparencyOnZoom, "enable_transparency_checkbox", "Enable TransparencyOnScope", 0)
Enable_box:SetDescription("Enable Local ChamsTransparecy on Scope")

local cache = {
clr_local,
clr_local_hidden,
clr_ghost,
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
--]]




--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#
--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#--#


-- TransparenzOnScope --

local REF = gui.Reference( "Visuals", "Fov Changer" ) -- ("Visual", "Local", "Helper")

--local TAB = gui.Tab(REF, "lua_transparent_on_scope_tab", "Transparent on scope")

local BOX = gui.Groupbox(REF, "Transparent on scope lua by atk3001", 15, 415, 605, 500)
local SLIDER = gui.Slider(BOX, "lua_transparent_on_scope_slider", "Level of transparency", 5, 0, 255)
local localchams = gui.Combobox(BOX, "lua_transparent_on_scope_set_localchams", "Select the local chams while scoped", "Use the already set one", "Flat", "Color", "Metallic", "Glow", "Textured", "invisible")
local switchghost = gui.Checkbox(BOX, "lua_transparent_on_scope_switchghost", "Turn off ghost chams while scoped", false)
local switchoc = gui.Checkbox(BOX, "lua_transparent_on_scope_switchoc", "Turn off occluded chams while scoped", false)
local switchol = gui.Checkbox(BOX, "lua_transparent_on_scope_switchol", "Turn off Overlay while scoped", false)

local stored = 0
local set = 0
local change = 0
local slidervalue
local localvisiblecustom
local cb1 = switchghost:GetValue()
local cb2 = switchoc:GetValue()
local cb3 = switchol:GetValue()
local localchamscheck = localchams:GetValue()

local ghostoccluded, ghostoverlay, ghostvisible
local localoccluded, localoverlay, localvisible

local ghostoccludedclr_r, ghostoccludedclr_g, ghostoccludedclr_b, ghostoccludedclr_a
local ghostoverlayclr_r, ghostoverlayclr_g, ghostoverlayclr_b, ghostoverlayclr_a
local ghostvisibleclr_r, ghostvisibleclr_g, ghostvisibleclr_b, ghostvisibleclr_a

local localoccludedclr_r, localoccludedclr_g, localoccludedclr_b, localoccludedclr_a
local localoverlayclr_r, localoverlayclr_g, localoverlayclr_b, localoverlayclr_a 
local localvisibleclr_r, localvisibleclr_g, localvisibleclr_b, localvisibleclr_a 

callbacks.Register( "Draw", function()
local player_local = entities.GetLocalPlayer();
local scoped = player_local:GetProp("m_bIsScoped")
draw.Text(100 , 100,"Scoped: " .. tostring(scoped))
if scoped ~= 0 then

    if slidervalue ~= SLIDER:GetValue() then
        change = 1
    end

    if cb1 ~= switchghost:GetValue() then
        change = 1
        cb1 = switchghost:GetValue()
    end

    if cb2 ~= switchoc:GetValue() then
        change = 1
        cb2 = switchoc:GetValue()
    end

    if cb3 ~= switchol:GetValue() then
        change = 1
        cb3 = switchol:GetValue()
    end

    if localchamscheck ~= localchams:GetValue() then
        change = 1
        localchamscheck = localchams:GetValue()
    end

    if stored == 0 then
        ghostoccluded = gui.GetValue( "esp.chams.ghost.occluded" )
        ghostoverlay = gui.GetValue( "esp.chams.ghost.overlay" )
        ghostvisible = gui.GetValue( "esp.chams.ghost.visible" )

        localoccluded = gui.GetValue( "esp.chams.local.occluded" )
        localoverlay = gui.GetValue( "esp.chams.local.overlay" )
        localvisible = gui.GetValue( "esp.chams.local.visible" )
        ghostoccludedclr_r, ghostoccludedclr_g, ghostoccludedclr_b, ghostoccludedclr_a = gui.GetValue( "esp.chams.ghost.occluded.clr" )
        ghostoverlayclr_r, ghostoverlayclr_g, ghostoverlayclr_b, ghostoverlayclr_a = gui.GetValue( "esp.chams.ghost.overlay.clr" )
        ghostvisibleclr_r, ghostvisibleclr_g, ghostvisibleclr_b, ghostvisibleclr_a = gui.GetValue( "esp.chams.ghost.visible.clr" )

        localoccludedclr_r, localoccludedclr_g, localoccludedclr_b, localoccludedclr_a = gui.GetValue( "esp.chams.local.occluded.clr" )
        localoverlayclr_r, localoverlayclr_g, localoverlayclr_b, localoverlayclr_a = gui.GetValue( "esp.chams.local.overlay.clr" )
        localvisibleclr_r, localvisibleclr_g, localvisibleclr_b, localvisibleclr_a = gui.GetValue( "esp.chams.local.visible.clr" )

        stored = 1
    else 
        if set == 0 or change == 1 then
            slidervalue = SLIDER:GetValue()

            if switchghost:GetValue() then
                gui.SetValue( "esp.chams.ghost.occluded", 0 )
                gui.SetValue( "esp.chams.ghost.overlay", 0 )
                gui.SetValue( "esp.chams.ghost.visible", 0 )
            else 
                gui.SetValue( "esp.chams.ghost.occluded", ghostoccluded )
                gui.SetValue( "esp.chams.ghost.overlay", ghostoverlay )
                gui.SetValue( "esp.chams.ghost.visible", ghostvisible ) 
            end

            if localchams:GetValue() ~= 0 then 
                localvisiblecustom = localchams:GetValue()
            else
                localvisiblecustom = localvisible
            end

            if switchoc:GetValue() == true then
                gui.SetValue( "esp.chams.ghost.occluded" , 0)
                gui.SetValue( "esp.chams.local.occluded" , 0)
            else
                if switchghost:GetValue() == 1 then
                gui.SetValue( "esp.chams.ghost.occluded" , ghostoccluded)
                end
                gui.SetValue( "esp.chams.local.occluded" , localoccluded)
                if ghostoccluded ~= 0 then
                    gui.SetValue("esp.chams.ghost.occluded.clr", ghostoccludedclr_r, ghostoccludedclr_g, ghostoccludedclr_b, slidervalue)
                end
                if localoccluded ~= 0 then
                    gui.SetValue( "esp.chams.local.occluded.clr", localoccludedclr_r, localoccludedclr_g, localoccludedclr_b, slidervalue)
                end
            end

            if switchol:GetValue() == true then
                gui.SetValue( "esp.chams.ghost.overlay" , 0)
                gui.SetValue( "esp.chams.local.overlay" , 0)
            else
                if switchghost:GetValue() == 1 then
                gui.SetValue( "esp.chams.ghost.overlay" , ghostoverlay)
                end
                gui.SetValue( "esp.chams.local.overlay" , localoverlay)
                if ghostoverlay ~= 0 then
                    gui.SetValue("esp.chams.ghost.overlay.clr", ghostoverlayclr_r, ghostoverlayclr_g, ghostoverlayclr_b, slidervalue)
                end
                if localoverlay ~= 0 then
                    gui.SetValue("esp.chams.local.overlay.clr", localoverlayclr_r, localoverlayclr_g, localoverlayclr_b, slidervalue)
                end
            end

            if ghostvisible ~= 0 then
                gui.SetValue("esp.chams.ghost.visible.clr", ghostvisibleclr_r, ghostvisibleclr_g, ghostvisibleclr_b, slidervalue)
            end
        
            if localvisiblecustom ~= 0 then
                gui.SetValue("esp.chams.local.visible", localvisiblecustom)
            end
            gui.SetValue("esp.chams.local.visible.clr", localvisibleclr_r, localvisibleclr_g, localvisibleclr_b, slidervalue)

        change = 0
        set = 1
        end
    end
else
    if set == 1 then

        gui.SetValue( "esp.chams.ghost.occluded", ghostoccluded )
        gui.SetValue( "esp.chams.ghost.overlay", ghostoverlay )
        gui.SetValue( "esp.chams.ghost.visible", ghostvisible )

        gui.SetValue( "esp.chams.local.occluded", localoccluded )
        gui.SetValue( "esp.chams.local.overlay", localoverlay )
        gui.SetValue( "esp.chams.local.visible", localvisible )
        
        gui.SetValue( "esp.chams.ghost.occluded.clr", ghostoccludedclr_r, ghostoccludedclr_g, ghostoccludedclr_b, ghostoccludedclr_a )
        gui.SetValue( "esp.chams.ghost.overlay.clr", ghostoverlayclr_r, ghostoverlayclr_g, ghostoverlayclr_b, ghostoverlayclr_a)
        gui.SetValue( "esp.chams.ghost.visible.clr", ghostvisibleclr_r, ghostvisibleclr_g, ghostvisibleclr_b, ghostvisibleclr_a)

        gui.SetValue( "esp.chams.local.occluded.clr", localoccludedclr_r, localoccludedclr_g, localoccludedclr_b, localoccludedclr_a)
        gui.SetValue( "esp.chams.local.overlay.clr" , localoverlayclr_r, localoverlayclr_g, localoverlayclr_b, localoverlayclr_a)
        gui.SetValue( "esp.chams.local.visible.clr" ,localvisibleclr_r, localvisibleclr_g, localvisibleclr_b, localvisibleclr_a)

        set = 0
        stored = 0
    end
end
end)
-- End TransparenzOnScope --