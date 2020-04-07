local timer = timer or {}
local timers = {}

function timer.Exists(name)
    for k,v in pairs(timers) do
        if name == v.name then
            return true
        end
    end
    return false
end

function timer.Create(name, delay, repetitions, func)
    if not timer.Exists(name) then
        table.insert(timers, {type = "Create", name = name, delay = delay, repetitions = repetitions, func = func, lastTime = globals.CurTime() + delay, repStartTime = globals.CurTime()})
    end
end

function timer.Simple(name, delay, func)
    if not timer.Exists(name) then
        table.insert(timers, {type = "Simple", name = name, func = func, lastTime = globals.CurTime() + delay, delay = delay})
    end
end


function timer.Spam(name, duration, func)
    if not timer.Exists(name) then
        table.insert(timers, {type = "Spam", name = name, duration = duration, func = func, lastTime = globals.CurTime()})
    end
end

function timer.Remove(name)
    for k,v in pairs(timers or {}) do
        if name == v.name then
            table.remove(timers, k)
            return true
        end
    end
    return false
end



function timer.Pause(name)
    for k, v in pairs(timers) do
        if name == v.name then
            v.pause = true
            return true
        end
    end
    return false
end

function timer.UnPause(name)
    for k, v in pairs(timers) do
        if name == v.name and v.pause then
            v.pause = false
            return true
        end
    end
end

function timer.RepsLeft(name)
    for k,v in pairs(timers) do
        if name == v.name and v.type == "Create" then
            return v.repetitions
        end
    end
    return false
end

function timer.Restart(name)
      for i=1, #timers do
        if name == timers[i].name then
            if timers[i].type == "Simple" then
                timers[i].lastTime = globals.CurTime() + timers[i].delay
            end
        end
    end
end


function timer.Toggle(name)
    for k, v in pairs(timers) do
        if name == v.name then
            if v.pause then
                v.pause = false
            elseif v.pause == false then
                v.pause = true
            end
        end
    end
end

function timer.TimeLeft(name)
    for k, v in pairs(timers) do
        if name == v.name then
            if v.type == "Create" then
                return  v.delay * timer.RepsLeft(name) - (globals.CurTime() - v.repStartTime)
            elseif v.type == "Simple" or v.type == "Spam" then
                return globals.CurTime() - v.lastTime
            end
        end
    end
end


function timer.Adjust(name, delay, repetitions, func)
    for i=1, #timers do
        if name == timers[i].name then
            if timers[i].type == "Create" then
                timers[i] = {type = "Create", name = name, delay = delay, repetitions = repetitions, func = func, lastTime = globals.CurTime() + delay, repStartTime = globals.CurTime()}
            end
        end
    end
end

function timer.Tick()
    for k, v in pairs(timers or {}) do
        if not v.pause then
            -- timer.Create
            if v.type == "Create" then
                if v.repetitions <= 0 then
                    table.remove(timers, k)
                end
                if globals.CurTime() >= v.lastTime then
                    v.lastTime = globals.CurTime() + v.delay
                    v.repStartTime = globals.CurTime()
                    v.func()
                    v.repetitions = v.repetitions - 1
                end
            -- timer.Simple
            elseif v.type == "Simple" then
                if globals.CurTime() >= v.lastTime then
                    v.func()
                    table.remove(timers, k)
                end
            -- timer.Spam
            elseif v.type == "Spam" then
                v.func()
                if globals.CurTime() >= v.lastTime + v.duration then
                    table.remove(timers, k)
                end
            end
        end
    end
end


callbacks.Register( "Draw", "timerTick", timer.Tick)

local EXTRARAGEBOT_TAB = gui.Tab(gui.Reference("Ragebot"), "ExtraRageBot.tab", "Extra ragebot settings")
print("Extra ragebot settings loaded")
-- Groups
local EXTRARAGEBOT_QUICKSHOT_GROUP = gui.Groupbox(gui.Reference("Ragebot", "Extra ragebot settings"), "On shot QuickStop (broken from AW latest update)", 15, 15, 295, 325);
local EXTRARAGEBOT_SLOWWALK_GROUP = gui.Groupbox(gui.Reference("Ragebot", "Extra ragebot settings"), "On shot SlowWalk", 325, 15, 295, 325);
local EXTRARAGEBOT_DELAYSHOT_GROUP = gui.Groupbox(gui.Reference("Ragebot", "Extra ragebot settings"), "Delay shot", 15, 160, 295, 325);
local EXTRARAGEBOT_MINDMG_GROUP = gui.Groupbox(gui.Reference("Ragebot", "Extra ragebot settings"), "Increment min damage on shot (resets back to base min damage after 0.4 seconds of not shooting)", 15, 305, 605, 325);
local EXTRARAGEBOT_HITCHANCE_GROUP = gui.Groupbox(gui.Reference("Ragebot", "Extra ragebot settings"), "Increment hitchance on miss (resets back to base hitchance after 0.4 seconds of not shooting)", 15, 535, 605, 325);

local EXTRARAGEBOT_QUICKSTOP_ENABLED = gui.Checkbox(EXTRARAGEBOT_QUICKSHOT_GROUP, "ExtraRageBot.QuickStop.enabled", "Enabled", false)
local EXTRARAGEBOT_QUICKSTOP_FORCE = gui.Slider(EXTRARAGEBOT_QUICKSHOT_GROUP, "ExtraRageBot.QuickStop.force", "QuickStop force", 5, 0, 30);


local EXTRARAGEBOT_SLOWWALK_ENABLED = gui.Checkbox(EXTRARAGEBOT_SLOWWALK_GROUP, "ExtraRageBot.SlowWalk.enabled", "Enabled", false)
local EXTRARAGEBOT_SLOWWALK_DURATION = gui.Slider(EXTRARAGEBOT_SLOWWALK_GROUP, "ExtraRageBot.SlowWalk.duration", "SlowWalk Duration (in milliseconds, 0.1)", 400, 1, 2000);


-- local EXTRARAGEBOT_FASTSLOWALK = gui.Checkbox(EXTRARAGEBOT_MISC_GROUP, "EXTRARAGEBOT.FastSlowWalk.enabled", "Fast slow walk", false)
-- local EXTRARAGEBOT_AUTODUCK_ENABLED = gui.Checkbox(EXTRARAGEBOT_MISC_GROUP, "EXTRARAGEBOT.AutoWalk.enabled", "Auto duck", false)

local EXTRARAGEBOT_DELAYSHOT_ENABLED = gui.Checkbox(EXTRARAGEBOT_DELAYSHOT_GROUP, "ExtraRageBot.DelayShot.enabled", "Enabled", false)
local EXTRARAGEBOT_DELAYSHOT_DURATION = gui.Slider(EXTRARAGEBOT_DELAYSHOT_GROUP, "ExtraRageBot.DelayShot.duration", "Delay first shot (in microseconds, 0.001)", 25, 1, 100);

local EXTRARAGEBOT_MINDMG_ENABLED = gui.Checkbox(EXTRARAGEBOT_MINDMG_GROUP, "ExtraRageBot.minDMG.enabled", "Enabled", false)
local EXTRARAGEBOT_MINDMG_BASE =  gui.Slider(EXTRARAGEBOT_MINDMG_GROUP, "ExtraRageBot.minDMGBase.value", "Base min damage", 20, 1, 100);
local EXTRARAGEBOT_MINDMG_INCREMNT =  gui.Slider(EXTRARAGEBOT_MINDMG_GROUP, "ExtraRageBot.minDMGIncrement.value", "Increment by", 3, 1, 100);
local EXTRARAGEBOT_MINDMG_AUTO_MINDMG =  gui.Checkbox(EXTRARAGEBOT_MINDMG_GROUP, "ExtraRageBot.minDMG.enabled", "Auto min damage (sets min damage to damage done + increment slider value) resets after 0.4 seconds", false)


local EXTRARAGEBOT_HITCHANCE_ENABLED = gui.Checkbox(EXTRARAGEBOT_HITCHANCE_GROUP, "EXTRARAGEBOT.HitChance.enabled", "Enabled", false)
local EXTRARAGEBOT_HITCHANCE_BASE =  gui.Slider(EXTRARAGEBOT_HITCHANCE_GROUP, "ExtraRageBot.HitChanceBase.value", "Base hitchance", 50, 1, 100);
local EXTRARAGEBOT_HITCHANCE_INCREMNT =  gui.Slider(EXTRARAGEBOT_HITCHANCE_GROUP, "ExtraRageBot.HitChanceIncrement.value", "Increment by", 2, 1, 100);


local weapon_class = ""
function blacklisted()
    local blacklisted_weapons = {
        "CKnife",
        "CMolotovGrenade",
        "CSmokeGrenade",
        "CHEGrenade",
        "CFlashbang",
        "CDecoyGrenade",
        "CIncendiaryGrenade"
    }
    if not entities.GetLocalPlayer() then return true end
    if not entities.GetLocalPlayer():IsAlive() then return true end
    pcall(function() weapon_class = entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon"):GetClass() end)
    for k, blacklisted_weapon in pairs(blacklisted_weapons) do
        if blacklisted_weapon == weapon_class then
            return true
        end
    end
    return false

end

local shouldSlowWalk = false
local shouldQuickStop = false
local shouldDuck = false


function quick_stop(cmd)
    local VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" );
    local VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" );
    local VelocityZ = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[2]" );
    local speed = math.sqrt(VelocityX^2 + VelocityY^2);
    
    local velocity = {x = VelocityX, y = VelocityY, z = VelocityZ}
    local directionX, directionY, directionZ = vector.Angles( {velocity.x,velocity.y,velocity.z} )
    
    viewanglesX, viewanglesY = cmd:GetViewAngles().x, cmd:GetViewAngles().y

    directionY = viewanglesY - directionY
    dirForwardX, dirForwardY, dirForwardZ = vector.AngleForward({directionX, directionY, directionZ})
    
    negated_directionX, negated_directionY, negated_directionZ = vector.Multiply({dirForwardX, dirForwardY, dirForwardZ}, -speed)
    
    cmd.forwardmove = negated_directionX
    cmd.sidemove = negated_directionY
end

function enemies_dead()
    local my_team = entities.GetLocalPlayer():GetTeamNumber()
     local players = entities.FindByClass( "CCSPlayer" );
     for k, player in pairs(players) do
        if player:GetTeamNumber() ~= my_team and player:IsAlive() then
            return false
        end
     end
     return true
end

callbacks.Register("AimbotTarget", function(Target)
    -- if Target then
        -- print("Aimbotting a new target!",  type(Target), Target)
    -- else
        -- print("Aimbotting the old target!")
    -- end
    
    
    shouldQuickStop = true
    timer.Simple("QuickStopForce", EXTRARAGEBOT_QUICKSTOP_FORCE:GetValue() * 0.01, function()
        shouldQuickStop = false
    end)

    shouldSlowWalk = true
    timer.Simple("SlowWalkOFF", EXTRARAGEBOT_SLOWWALK_DURATION:GetValue() * 0.001, function()
        shouldSlowWalk = false
    end)

    
    -- Delay shot
    if EXTRARAGEBOT_DELAYSHOT_ENABLED:GetValue() then
        gui.SetValue("rbot.aim.enable", 0)
        timer.Simple("AimbotON", EXTRARAGEBOT_DELAYSHOT_DURATION:GetValue() * 0.001, function()
            print("Delaying shot")
            gui.SetValue("rbot.aim.enable", 1)
        end)    
    end
    
end)


local weapon_fire = false
local shots = 0


local LastDmg = 0


local missed_count = 0


callbacks.Register("FireGameEvent", function(event)
    local event_name = event:GetName()
    local local_player_index = client.GetLocalPlayerIndex()
    local uid = client.GetPlayerIndexByUserID(event:GetInt( 'userid' ))
    
    -- Turn off AA
--    if event_name == "round_end" then -- and EXTRARAGEBOT_NO_AA:GetValue() and entities.GetLocalPlayer():IsAlive() and enimies_dead() then
--        timer.Simple("AAOFF", 0.1, function()
--            print(enemies_dead())
--            if enemies_dead() then
--                gui.SetValue("rbot.antiaim.base", [[-180.0 "Off"]])
--            end
--        end)
--    end
--    
--    -- Turn on AA
--    if event_name == "round_start" and EXTRARAGEBOT_NO_AA:GetValue() then
--        local freeze_time = tonumber(client.GetConVar("mp_freezetime"))
--        timer.Simple("TurnOnAA", freeze_time - 0.5, function()
--            gui.SetValue("rbot.antiaim.base", [[-180.0 "Desync"]])
--        end)
--    end
    
    
    -- Auto min damage
    if event_name == "player_hurt" and EXTRARAGEBOT_MINDMG_ENABLED:GetValue() and EXTRARAGEBOT_MINDMG_AUTO_MINDMG:GetValue() then
        local victim = entities.GetByUserID(event:GetInt("userid"));
        local attacker = entities.GetByUserID(event:GetInt("attacker"));
        local dmg_done = event:GetInt("dmg_health")
        if attacker:GetName() == entities.GetLocalPlayer():GetName() then
            if dmg_done + EXTRARAGEBOT_HITCHANCE_INCREMNT:GetValue() > EXTRARAGEBOT_MINDMG_BASE:GetValue() then
                gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", dmg_done + EXTRARAGEBOT_HITCHANCE_INCREMNT:GetValue())
            end
            timer.Simple("BackToBaseDMG", 0.4, function()
                gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", EXTRARAGEBOT_MINDMG_BASE:GetValue())
            end)
            
        end
    end
    -- Increment min damage every shot
    if event_name == "weapon_fire" then
        if uid == local_player_index then
            weapon_fire = true
            shots = shots + 1            
            if EXTRARAGEBOT_MINDMG_ENABLED:GetValue() and not EXTRARAGEBOT_MINDMG_AUTO_MINDMG:GetValue() then
                gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", EXTRARAGEBOT_MINDMG_INCREMNT:GetValue() * shots + EXTRARAGEBOT_MINDMG_BASE:GetValue())                
                if timer.Exists("SetBaseDmg") then
                    timer.Restart("SetBaseDmg")
                else
                    timer.Simple("SetBaseDmg", 0.4, function()
                        gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", EXTRARAGEBOT_MINDMG_BASE:GetValue())
                        shots = 0
                    end)
                end
            else
                shots = 0
            end

        end
    end
    
    -- Increment hitchance on miss
    if event_name == "weapon_fire" and EXTRARAGEBOT_HITCHANCE_ENABLED:GetValue() and uid == local_player_index then
        missed = true
        timer.Simple("missed", 0.03, function()
            if missed then
                missed_count = missed_count + 1
                gui.SetValue("rbot.accuracy.weapon.asniper.hitchance", EXTRARAGEBOT_HITCHANCE_INCREMNT:GetValue() * missed_count + EXTRARAGEBOT_HITCHANCE_BASE:GetValue())
                if timer.Exists("SetBaseHitchance") then
                    timer.Restart("SetBaseHitchance")
                else
                    timer.Simple("SetBaseHitchance", 0.4, function()
                        gui.SetValue("rbot.accuracy.weapon.asniper.hitchance", EXTRARAGEBOT_HITCHANCE_BASE:GetValue())
                        missed_count = 0
                    end)
                end
            end
        end)
    elseif event_name == "player_hurt" then
        missed = false
    end
end)

client.AllowListener("round_start")
client.AllowListener("round_end")
client.AllowListener("weapon_fire")
client.AllowListener("player_hurt")

callbacks.Register("CreateMove", function(cmd)
    if blacklisted() then
        shouldSlowWalk = false
        shouldQuickStop = false
        shouldDuck = false
    end

    
    -- On weapon fired
    if weapon_fire then
    
        shouldQuickStop = true
        timer.Simple("QuickStopForce",  EXTRARAGEBOT_QUICKSTOP_FORCE:GetValue() * 0.01, function()
            shouldQuickStop = false
        end)
    
        shouldSlowWalk = true
        if timer.Exists("SlowWalkOFF") then
            timer.Restart("SlowWalkOFF")
        else
            timer.Simple("SlowWalkOFF", EXTRARAGEBOT_SLOWWALK_DURATION:GetValue() * 0.001, function()
                shouldSlowWalk = false
            end)
        end
    
        
        shouldDuck = true
        timer.Simple("DuckOFF", 0.4, function()
            shouldDuck = false
        end)

        weapon_fire = false
    end
    
    
    -- SlowWalk
    if EXTRARAGEBOT_SLOWWALK_ENABLED:GetValue() then        
        if shouldSlowWalk then
            if input.IsButtonDown(65) then -- A
                gui.SetValue("rbot.accuracy.movement.slowkey", 65)
            elseif input.IsButtonDown(68) then -- D
                gui.SetValue("rbot.accuracy.movement.slowkey", 68)
            end
        else
            gui.SetValue("rbot.accuracy.movement.slowkey", 16)
        end
    end
    
    

    if EXTRARAGEBOT_QUICKSTOP_ENABLED:GetValue() then
        if shouldQuickStop then
            quick_stop(cmd)
        end
    end
    
    
    
end)


---------------------------------------------------------------------------------
