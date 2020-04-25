callbacks.Register("Draw", function()
    local local_player = entities.GetLocalPlayer()
    if (local_player == nil) then return end
    if (not local_player:IsAlive()) then return end
    local weapon = entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon")
    if(weapon == nil) then return end
    if (weapon:GetWeaponType() == 5) then
        local w, h = draw.GetScreenSize()
        draw.Color(127, 255, 0, 150)
        draw.FilledCircle(w/2, h/2, 1)
    end
end)
