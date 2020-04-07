local guiSet = gui.SetValue
local guiGet = gui.GetValue
local b_toggle = input.IsButtonDown
local rage_ref_extra = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON");
local chengeDamageText = gui.Text(rage_ref_extra, "--- Changer Damage ---");
local newDamage = gui.Slider(rage_ref_extra, "NewDamage", "Min damage", 0, 1, 100);
local changeKey = gui.Keybox(rage_ref_extra, "ChangeDmgKey", "Change damage key", 0);
local firstTime = 1;
local auto = guiGet("rbot.accuracy.weapon.asniper.mindmg")
local sniper = guiGet("rbot.accuracy.weapon.sniper.mindmg")
local pistol = guiGet("rbot.accuracy.weapon.pistol.mindmg")
local revolver = guiGet("rbot.accuracy.weapon.hpistol.mindmg")
local smg = guiGet("rbot.accuracy.weapon.smg.mindmg")
local rifle = guiGet("rbot.accuracy.weapon.rifle.mindmg")
local shotgun = guiGet("rbot.accuracy.weapon.shotgun.mindmg")
local scout = guiGet("rbot.accuracy.weapon.scout.mindmg")
local lmg = guiGet("rbot.accuracy.weapon.lmg.mindmg")
function changeDmgMain()
    if (changeKey:GetValue() == 0) then
        return -1;
    end
    if (input.IsButtonPressed(changeKey:GetValue())) then
        if (firstTime == 1) then
            auto = guiGet("rbot.accuracy.weapon.asniper.mindmg")
            sniper = guiGet("rbot.accuracy.weapon.sniper.mindmg")
            pistol = guiGet("rbot.accuracy.weapon.pistol.mindmg")
            revolver = guiGet("rbot.accuracy.weapon.hpistol.mindmg")
            smg = guiGet("rbot.accuracy.weapon.smg.mindmg")
            rifle = guiGet("rbot.accuracy.weapon.rifle.mindmg")
            shotgun = guiGet("rbot.accuracy.weapon.shotgun.mindmg")
            scout = guiGet("rbot.accuracy.weapon.scout.mindmg")
    lmg = guiGet("rbot.accuracy.weapon.lmg.mindmg")

            guiSet("rbot.accuracy.weapon.asniper.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.sniper.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.pistol.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.hpistol.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.smg.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.rifle.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.shotgun.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.scout.mindmg", math.floor(newDamage:GetValue()))
            guiSet("rbot.accuracy.weapon.lmg.mindmg", math.floor(newDamage:GetValue()))
            firstTime = 0
        end
    elseif (b_toggle(changeKey:GetValue())) then
        -- do nothing ;)
    elseif (input.IsButtonReleased(changeKey:GetValue())) then
        guiSet("rbot.accuracy.weapon.asniper.mindmg", auto)
        guiSet("rbot.accuracy.weapon.sniper.mindmg", sniper)
        guiSet("rbot.accuracy.weapon.pistol.mindmg", pistol)
        guiSet("rbot.accuracy.weapon.hpistol.mindmg", revolver)
        guiSet("rbot.accuracy.weapon.smg.mindmg", smg)
        guiSet("rbot.accuracy.weapon.rifle.mindmg", rifle)
        guiSet("rbot.accuracy.weapon.shotgun.mindmg", shotgun)
        guiSet("rbot.accuracy.weapon.scout.mindmg", scout)
        guiSet("rbot.accuracy.weapon.lmg.mindmg", lmg)
        firstTime = 1;
    end
end
callbacks.Register("Draw", "changeDmgMain", changeDmgMain);