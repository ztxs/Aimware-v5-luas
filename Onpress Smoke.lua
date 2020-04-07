local color_white = {255, 255, 255}
local CurTime = globals.CurTime
local ref_other = gui.Reference("Misc", "Movement", "Other")
local smoke_key = gui.Keybox(ref_other, "lua_selfsmoke_bind", "Self-smoke bind", 0)
smoke_key:SetDescription("Throw a smoke on ground by key")
draw.AddFontResource("Roboto")
client.AllowListener("item_equip")

local font = draw.CreateFont("Roboto", 32 * (client.GetConVar("hud_scaling") or 1), 500)
local notify_time, notify_text, notify_color, notify_start
local smokenade = "weapon_smokegrenade"
local throwing_smoke = false

print("\n\tAIMWARE Smoke on bind")
print("\tAuthor: AppleJeb")
print("\tThread: https://aimware.net/forum/thread-128866.html")

local function hasSmoke(ply) -- Someone halp me do this better way
    local ply, index, smoke = ply or entities.GetLocalPlayer(), 0
    local weapon, weaponId, weaponEntIndex = ply:GetPropEntity("m_hMyWeapons", index), ply:GetPropInt("m_hMyWeapons", index), -1
    while weaponId > 0 do
        if weapon:GetName() == smokenade then
            smoke = weapon
            weaponEntIndex = weapon:GetIndex()
            break
        end

        index = index + 1
        weapon = ply:GetPropEntity("m_hMyWeapons", index)
        weaponId = ply:GetPropInt("m_hMyWeapons", index)
    end

    return smoke, weaponEntIndex
end

local function notify(text, color, snd)
    notify_text, notify_color, notify_start = text, color or color_white, CurTime()
    notify_time = notify_start + 3

    if snd then client.Command("play " .. snd, true) end
end

local function throwSmoke()
    if not hasSmoke() then notify("NO SMOKE NADES", {200,0,0}, "buttons/button10") return end
    throwing_smoke = true
    notify("THROWING SMOKE...", {54,200,54}, "buttons/button24")
end

local throw_time
local smoke_delay = 1
callbacks.Register("CreateMove", function(cmd)
    if throwing_smoke then
        local ply = entities.GetLocalPlayer()
        local weapon, weaponId = hasSmoke()
        if not weapon then throwing_smoke = false return end
        local is_smoke = ply:GetWeaponID() == 45 -- 45 is Smokes defindex

        if is_smoke then
            cmd.viewangles.pitch = 89
            if not throw_time or CurTime() >= throw_time then
                cmd.buttons = bit.tobit(cmd.buttons + bit.lshift(1, 11))
                throwing_smoke = false
            end
        else
            throw_time = CurTime() + smoke_delay
            cmd.weaponselect = weaponId
        end

    end
end)

callbacks.Register("FireGameEvent", function(ev)
    local ply = entities.GetLocalPlayer()
    local ev_name = ev:GetName()
    if ply and ev_name == "item_equip" and client.GetPlayerIndexByUserID(ev:GetInt("userid")) == client.GetLocalPlayerIndex() and ev:GetString("item") == "smokegrenade" then
        throw_time = CurTime() + smoke_delay
    end
end)

callbacks.Register("Draw", function()
    local ply, key = entities.GetLocalPlayer(), smoke_key:GetValue()
    if not ply then return end

    if key ~= 0 and input.IsButtonPressed(key) and not throwing_smoke then
        throwSmoke()
    end

    if notify_time and notify_time >= CurTime() then
        draw.SetFont(font)
        notify_text = notify_text or ""
        local tw = draw.GetTextSize(notify_text)
        local scrW, scrH = draw.GetScreenSize()
        local seq_alpha = math.min( math.min(CurTime() - notify_start, 0.2) / 0.2, math.min(notify_time - CurTime(), 0.1) / 0.1 )
        local x, y = scrW * 0.5, scrH * 0.6
        local tx, ty = x - tw * 0.5, y + (1 - seq_alpha) * 50

        notify_color[4] = seq_alpha * 255

        draw.Color(0,0,0,notify_color[4])
        draw.TextShadow(tx, ty, notify_text)
        draw.Color(unpack(notify_color))
        draw.Text(tx, ty, notify_text)
    elseif notify_time and notify_time < CurTime() then
        notify_time = nil
    end
end)