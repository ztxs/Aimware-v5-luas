-- FOVnViewFovModel changer incl Scopefix --
local visuals_menu = gui.Reference("VISUALS")	-- ("VISUALS", "OTHER", "Effects")

local TAB = gui.Tab(visuals_menu, "lua_fov_tab", "Fov Changer")

local FOVBOX = gui.Groupbox(TAB, "FOV", 15, 15, 605, 500)
local SLIDER = gui.Slider( FOVBOX, "lua_fov_slider", "Field of View", 90, 0, 180 )
local SLIDER_ONE = gui.Slider( FOVBOX, "lua_fov_slider_one", "Field of View for 1st Zoom", 40, 0, 180 )
local SLIDER_TWO = gui.Slider( FOVBOX, "lua_fov_slider_two", "Field of View for 2nd Zoom", 15, 0, 180 )

local VIEWFOVBOX = gui.Groupbox(TAB, "Viewmodel", 15, 220, 605, 500)
local SLIDER_VIEW = gui.Slider( VIEWFOVBOX, "lua_fov_slider_view", "Viewmodel Field of View", 64, 0, 180 )
local SLIDER_VIEWX = gui.Slider( VIEWFOVBOX, "lua_fov_slider_viewX", "Viewmodel Offset X", 1, -40, 40 )
local SLIDER_VIEWY = gui.Slider( VIEWFOVBOX, "lua_fov_slider_viewY", "Viewmodel Offset Y", 1, -40, 40 )
local SLIDER_VIEWZ = gui.Slider( VIEWFOVBOX, "lua_fov_slider_viewZ", "Viewmodel Offset Z", -1, -40, 40 )

callbacks.Register( "Draw", function()
     if entities.GetLocalPlayer() == NULL or entities.GetLocalPlayer() == nil then return end;	

	
	local a = 0
    local local_player = entities.GetLocalPlayer();
    local pWeapon = local_player:GetPropEntity("m_hActiveWeapon")
	local zoomLevel = pWeapon:GetProp("m_zoomLevel")
    if zoomLevel == 1 then
        if SLIDER_ONE:GetValue() == 90 then
            a = -40
        end
        client.SetConVar( "fov_cs_debug", SLIDER_ONE:GetValue(), true )
    elseif zoomLevel == 2 then
        if SLIDER_TWO:GetValue() == 90 then
            a = -40
        end
        client.SetConVar( "fov_cs_debug", SLIDER_TWO:GetValue(), true )
    else
        client.SetConVar( "fov_cs_debug", SLIDER:GetValue(), true )
    end

    client.SetConVar("viewmodel_fov", SLIDER_VIEW:GetValue(), true)
    client.SetConVar("viewmodel_offset_x", SLIDER_VIEWX:GetValue(), true);
    client.SetConVar("viewmodel_offset_y", SLIDER_VIEWY:GetValue(), true);
    client.SetConVar("viewmodel_offset_z", SLIDER_VIEWZ:GetValue() - a, true);
end)

-- End FOVnViewFovModel changer incl Scopefix --