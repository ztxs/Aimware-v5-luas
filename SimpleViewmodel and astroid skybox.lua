callbacks.Register("FireGameEvent", function(event)

    if event:GetName() == "round_start" then
        client.SetConVar("viewmodel_fov", 75, true)
        client.SetConVar("viewmodel_offset_z", -2, true)
        client.SetConVar("viewmodel_offset_x", 4, true)
        client.SetConVar("fov_cs_debug", 107, true)
        client.SetConVar("sv_skyname", "space_13", true);
    end

end)
