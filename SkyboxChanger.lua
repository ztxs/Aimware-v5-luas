-- Skybox list.
-- { file name, display name }
local skybox_list = {
    
	{"sky_descent", "Galaxy"},
	{"bartuc_canyon_", "Bartuc Canyon"},
    {"bartuc_grey_sky_", "Bartuc Grey"},
    {"blue1", "Blue One"},
    {"blue2", "Blue Two"},
    {"blue3", "Blue Three"},
    {"blue4", "Blue Four"},
    {"blue5", "Blue Five"},
    {"blue6", "Blue Six"},
    {"cssdefault", "Css Default"},
    {"dark1", "Dark One"},
    {"dark2", "Dark Two"},
    {"dark3", "Dark Three"},
    {"dark4", "Dark Four"},
    {"dark5", "Dark Five"},
    {"extreme_glaciation_", "Extreme Glaciation"},
    {"green1", "Green One"},
    {"green2", "Green Two"},
    {"green3", "Green Three"},
    {"green4", "Green Four"},
    {"green5", "Green Five"},
    {"greenscreen", "Green Screen"},
    {"greysky", "Grey Sky"},
    {"night1", "Night One"},
    {"night2", "Night Two"},
    {"night3", "Night Three"},
    {"night4", "Night Four"},
    {"night5", "Night Five"},
    {"orange1", "Orange One"},
    {"orange2", "Orange Two"},
    {"orange3", "Orange Three"},
    {"orange4", "Orange Four"},
    {"orange5", "Orange Five"},
    {"orange6", "Orange Six"},
    {"persistent_fog_", "Persistent Fog"},
    {"pink1", "Pink One"},
    {"pink2", "Pink Two"},
    {"pink3", "Pink Three"},
    {"pink4", "Pink Four"},
    {"pink5", "Pink Five"},
    {"polluted_atm_", "Polluted"},
    {"toxic_atm_", "Toxic"},
    {"water_sunset_", "Water Sunset"},
}


local arglist = {}
local arg_to_name = {}
for num, sky in ipairs(skybox_list) do
    arglist[num] = sky[2]
    arg_to_name[num - 1] = sky[1]
end


local msc_ref = gui.Reference( "Visuals", "World", "Materials" )
local extra_ref = gui.Reference( "Visuals", "World", "Extra" )
local lua_combobox = gui.Combobox( msc_ref, "lua_skyboxppicker", "Skybox picker", unpack(arglist))

local function getSkyboxName(sel)
    return arg_to_name[sel]
end

function SkyBox()
    local skybox_current = client.GetConVar("sv_skyname")
    local skybox_new = lua_combobox:GetValue()
    local skybox_new_name = getSkyboxName(skybox_new)

    if skybox_current ~= skybox_new_name then
        client.SetConVar("sv_skyname", skybox_new_name, true)
    end

    local controller = entities.FindByClass("CEnvTonemapController")[1];

    if controller then
        controller:SetProp("m_bUseCustomAutoExposureMin", 1);
        controller:SetProp("m_bUseCustomAutoExposureMax", 1);

    end
end

callbacks.Register("Draw", "SkyBox", SkyBox)
