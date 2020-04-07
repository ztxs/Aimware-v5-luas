--Moving and Standing hitchance--
--Version 0.1.0------------------
---------------------------------
-------Script by konupall--------
---------------------------------
--Future Goals:------------------
--Add other weapons--------------
--Add more features--------------
---------------------------------

local kui = gui.Groupbox( gui.Reference( "Ragebot", "Accuracy", "Weapon"), "Moving and standing hitchance")
local hcslider2 = gui.Slider( kui, "rbot.accuracy.weapon.asniper.hitchance", "Standing hitchance", 0, 0, 100 )
local hcslider1 = gui.Slider( kui, "rbot.accuracy.weapon.asniper.hitchance", "Moving hitchance", 0, 0, 100 )

local function movstandhc()
    velocity = math.sqrt(localPlayer:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + localPlayer:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
    if velocity > 5 then
        gui.SetValue( "rbot.accuracy.weapon.asniper.hitchance", minValue )
    else
        gui.SetValue( "rbot.accuracy.weapon.asniper.hitchance", maxValue )
    end
end

local function sethc()
    minValue = hcslider1:GetValue()
    maxValue = hcslider2:GetValue()
end


local function retard()
    localPlayer = entities.GetLocalPlayer()
    if localPlayer then
        sethc()
        movstandhc()
    end
end

callbacks.Register( "Draw", retard )