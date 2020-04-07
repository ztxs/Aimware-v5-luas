local vis_tab_radar = gui.Reference('VISUALS')
local vis_main_tab = gui.Tab(vis_tab_radar, "lua_tab_radar", "EngineRadar & FPSboost")
local EngineRadarchk = gui.Checkbox ( vis_main_tab, "lua_engine_radar", "Enable EngineRadar", 0 );


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
