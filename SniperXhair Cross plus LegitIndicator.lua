-- SniperCrosshair

local VIS_MAIN_REF = gui.Reference( "VISUALS", "LOCAL", "Helper" );
local AWSniperCrosshair = gui.Checkbox( VIS_MAIN_REF, "lua_snipercrosshair", "Sniper Crosshair", 1 );
	
local function on_sniper(Event)    

	if AWSniperCrosshair:GetValue() then
if (Event:GetName() ~= 'item_equip') then return; end
if (client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(Event:GetInt('userid'))) then
    if Event:GetString('item') == "awp" or Event:GetString('item') == "ssg08" or Event:GetString('item') == "scar20" or Event:GetString('item') == "g3sg1" then
            drawCrosshair = true
    else										--if Event:GetString('item') ~= "awp" and Event:GetString('item') ~= "ssg08" and Event:GetString('item') ~= "scar20" and Event:GetString('item') ~= "g3sg1" then
            drawCrosshair = false
       end end end end


local function ifCrosshair()
local screenCenterX, screenY = draw.GetScreenSize(); scX = screenCenterX / 2; scY = screenY / 2;
	if drawCrosshair == true then
		
	if (gui.GetValue("lbot.master") == true) then
		draw.Color(0, 255, 0, 255)
        draw.Line(scX, scY - 8, scX, scY + 8);  --line down
        draw.Line(scX - 8, scY, scX + 8, scY); --line across
	else										--if (gui.GetValue("lbot_enable") == false) then
		draw.Color(255, 0, 0, 255)
        draw.Line(scX, scY - 8, scX, scY + 8);  --line down
        draw.Line(scX - 8, scY, scX + 8, scY); --line across
	end
	elseif drawCrosshair == false then
--HERE--
return
end end

client.AllowListener('item_equip');
callbacks.Register("FireGameEvent", "if on sniper", on_sniper); 
callbacks.Register("Draw", "sniper crosshairs", ifCrosshair);

-- End SniperCrosshair
