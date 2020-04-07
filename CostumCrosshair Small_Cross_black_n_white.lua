local MYCRAPVIS = gui.Reference('VISUALS', 'Other', "Extra")
local visualgroup = gui.Groupbox(MYCRAPVIS, "Swastikkka Crosshair Settings")
local basicbitch_crosshair = gui.Checkbox( visualgroup, "msc_basicbitch", "My Crosshair", 0)
function basicbitchxhair()
        if entities.GetLocalPlayer() == nil then end;
    if basicbitch_crosshair:GetValue() then
        local screencenter2X, screencenter2Y = draw.GetScreenSize() --getting the full screensize
        screencenter2X = screencenter2X / 2; screencenter2Y = screencenter2Y / 2 --dividing the screensize by 2 will place it perfectly in the center no matter what resolution
        draw.Color( 255, 255, 255, 255)
        draw.RoundedRect(screencenter2X+1 , screencenter2Y+1 , screencenter2X-1, screencenter2Y-1)
        draw.Color( 0, 0,0, 255)
        draw.RoundedRect(screencenter2X , screencenter2Y , screencenter2X, screencenter2Y)
end
end
callbacks.Register( "Draw", basicbitchxhair)
