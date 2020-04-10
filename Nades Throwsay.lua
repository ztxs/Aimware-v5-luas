local all_says = {
    hegrenade = {
        'Catch retard!',
    },

    flashbang = {
        'Look a bird!',
    },

    molotov = {
        'BURN BABY BURN!!!',
    },

    smokegrenade = {
        'I am a ninja',
    },

    incgrenade = {
        'BURN BABY BURN!!!',
    }
}

local function throw_say(e)
    if e:GetName() ~= 'grenade_thrown' then
        return
    end

    if client.GetPlayerIndexByUserID(e:GetInt('userid')) ~= client.GetLocalPlayerIndex() then
        return
    end

    local says = all_says[e:GetString('weapon')]
    client.ChatSay( says[math.random(#says)] )
end

client.AllowListener('grenade_thrown')
callbacks.Register('FireGameEvent', throw_say)