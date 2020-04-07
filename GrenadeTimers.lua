-- Grenade timers by Nyanpasu! (- Luiz)

local updatetick = 0;
local grenades = {};

local function EventHook(Event)
-- Clean table on round start
if Event:GetName() == "round_start" then
grenades = {};
end
-- Remove expired grenades from Table
if Event:GetName() == "hegrenade_detonate" or Event:GetName() == "flashbang_detonate" 
or Event:GetName() == "inferno_expire" or Event:GetName() == "inferno_extinguish" then
updatetick = globals.TickCount();
for index,value in pairs(grenades) do
if value[1] == Event:GetInt("entityid") then
table.remove(grenades, index);
end
end
end

end

local function ESPHook(Builder)
-- Smoke Grenades
if espentities.FindByClass() == "CSmokeGrenadeProjectile" 
and espEntity():GetProp("m_nSmokeEffectTickBegin") ~= 0 then
delta = (globals.TickCount() - espEntity():GetProp("m_nSmokeEffectTickBegin")) * globals.TickInterval();
espBuilder:AddBarBottom( 1 - (delta/17.5) )
-- Flash and HE Grenades
elseif espEntity():GetClass() == "CBaseCSGrenadeProjectile" then
local found = false;
for index,value in pairs(grenades) do
if value[1] == espEntity():GetIndex() then
DeltaT = (globals.TickCount() - grenades[index][2]) * globals.TickInterval();
espBuilder:AddBarBottom( 1 - (DeltaT/1.65) )
found = true;
break;
end
end
if found == false and globals.TickCount() > updatetick then
local gMatrix = {espEntity():GetIndex(), globals.TickCount()};
table.insert(grenades, gMatrix);
end
end

end

local function DrawingHook()
for indexF,valueF in pairs(entities.FindByClass("CInferno")) do
local found = false;
for indexT,valueT in pairs(grenades) do
if valueT[1] == valueF:GetIndex() then
x, y = client.WorldToScreen( valueF:GetAbsOrigin() )
local mollysize = 25;
if x ~= nil and y ~= nil then
draw.Color(0, 0, 0, 255);
draw.RoundedRectFill( x - mollysize, y, x + mollysize, y + 4 );
draw.Color(227, 227, 227, 255);
local math = (((globals.TickCount() - valueT[2]) * ((-1) - 1))
/ ( (valueT[2] + 7 / globals.TickInterval()) - valueT[2])) + 1
draw.RoundedRectFill( x - mollysize, y, x + mollysize * math, y + 4 )
draw.Color(255, 255, 255, 255);
draw.RoundedRect( x - mollysize, y, x + mollysize, y + 4)
local w,h = draw.GetTextSize( "MOLLY" )
draw.Text(x - w/2, y - h * 1.25 , "MOLLY");
draw.TextShadow(x - w/2, y - h * 1.25 , "MOLLY");
end
found = true;
break;
end
end

if found == false and globals.TickCount() > updatetick then
local gMatrix = {valueF:GetIndex(), globals.TickCount()};
table.insert(grenades, gMatrix);
end
end
end

-- Grenade timers by Nyanpasu! (- Luiz)

client.AllowListener("round_start");
client.AllowListener("inferno_expire");
client.AllowListener("inferno_extinguish");
client.AllowListener("molotov_detonate");
client.AllowListener("hegrenade_detonate");
client.AllowListener("flashbang_detonate");

callbacks.Register( "FireGameEvent", "EventHook", EventHook);
callbacks.Register( "Draw", "DrawingHook", DrawingHook );
callbacks.Register( "DrawESP", "ESPHook", ESPHook );