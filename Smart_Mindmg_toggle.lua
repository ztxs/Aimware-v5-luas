local gui_set = gui.SetValue;
local gui_get = gui.GetValue;
local rifk7_font = draw.CreateFont("Verdana", 12, 700)
local normal = draw.CreateFont("Arial")
local currentAccuracy = "NORMAL";
local currentWeapon = "empty";
local currentAutoMinDamage = nil;
local currentAutoHitChance = nil;
local currentScoutMinDamage = nil;
local currentScoutMinHitChance = nil;
local currentSniperMinDamage = nil;
local sharedConfig = gui_get("rbot.accuracy.weapon.shared");
local SetupAutoRef = nil;
local SetupScoutRef = nil;
local SetupSniperRef = nil;
local DamageToggGroupBox = nil;
local ScoutNormalHitChance = nil;
local ScoutNormalMinDamage = nil;
local ScoutLowHitChance = nil;
local ScoutLowMinDamage = nil;
local AutoNormalHitChance = nil;
local AutoNormalMinDamage = nil;
local AutoLowHitChance = nil;
local AutoLowMinDamage = nil;
local SniperNormalMinDamage = nil;
local SniperLowMinDamage = nil;

local SetupRef = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON");
local SetupConfigGroupBox_Text = gui.Text(SetupRef, "Toggle Damage Settings", "Toggle Damage")
local DamageMode = gui.Combobox(SetupRef, "lua_damage_mode", "Damage Mode", "Toggle", "Movement");
local DamageToggKeyBind = gui.Keybox(SetupRef, "lua_damageToggleKey", "Toggle Key", 88);
local DamageInAirRadio = gui.Checkbox(SetupRef, "lua_inair_mode", "Scout Low Accuracy In Air", 1);


-- check for shared config setup
if(sharedConfig == false) then

     SetupAutoRef = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON", "Auto Sniper");
    SetupScoutRef = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON", "Scout");
     SetupSniperRef = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON", "Sniper");

   
    DamageToggGroupBox = gui.Text(SetupAutoRef, "Damage Toggle");
    ScoutDamageToggGroupBox = gui.Text(SetupScoutRef, "Damage Toggle");
    SniperDamageToggGroupBox = gui.Text(SetupSniperRef, "Damage Toggle");
    currentAutoMinDamage = math.floor(gui_get("rbot.accuracy.weapon.asniper.mindmg") + 0.5);
    currentAutoHitChance = math.floor(gui_get("rbot.accuracy.weapon.asniper.hitchance") + 0.5);
    currentScoutMinDamage = math.floor(gui_get("rbot.accuracy.weapon.scout.mindmg") + 0.5);
    currentScoutHitChance = math.floor(gui_get("rbot.accuracy.weapon.scout.hitchance") + 0.5);
    currentSniperMinDamage = math.floor(gui_get("rbot.accuracy.weapon.sniper.mindmg") + 0.5);
 
	
	-- auto setup
	AutoSettingsText1 = gui.Text(SetupAutoRef, "")
    AutoSettingsText = gui.Text(SetupAutoRef, "#~#~#  AutoDMGToggle  #~#~#")
	NormalHitChance = gui.Slider(SetupAutoRef, "lua_normalHitChance", "Normal Hit Chance", currentAutoHitChance, 0, 100);
	NormalMinDamage = gui.Slider(SetupAutoRef, "lua_normalMinDamage", "Normal Damage", currentAutoMinDamage, 0, 100);
	LowHitChance = gui.Slider(SetupAutoRef, "lua_lowHitChance", "Low Hit Chance", 45, 0, 100);
	LowMinDamage = gui.Slider(SetupAutoRef, "lua_lowMinDamage", "Low Damage", 15, 0, 100);


	-- scout setup
	

    ScoutSettingsText = gui.Text(SetupScoutRef, "#~#~#  ScoutDMGToggle  #~#~#")
	ScoutNormalHitChance = gui.Slider(SetupScoutRef, "lua_scoutNormalHitChance", "Normal Hit Chance", currentScoutHitChance, 0, 100);
    ScoutNormalMinDamage = gui.Slider(SetupScoutRef, "lua_scoutNormalMinDamage", "Normal Damage", currentScoutMinDamage, 0, 100);
    ScoutLowHitChance = gui.Slider(SetupScoutRef, "lua_scoutLowHitChance", "Low Hit Chance", 60, 0, 100);
    ScoutLowMinDamage = gui.Slider(SetupScoutRef, "lua_scoutLowMinDamage", "Low Damage", 30, 0, 100);




-- AWP Sniper setup
    
	SniperSettingsText = gui.Text(SetupSniperRef, "#~#~#  SniperDMGToggle  #~#~#")
	SniperNormalMinDamage = gui.Slider(SetupSniperRef, "lua_SniperNormalMinDamage", "Normal Damage", currentSniperMinDamage, 0, 100);
	SniperLowMinDamage = gui.Slider(SetupSniperRef, "lua_SniperLowMinDamage", "Low Damage", 50, 0, 100);



else
    SetupSharedRef = gui.Reference("RAGEBOT", "ACCURACY", "WEAPON", "Shared");
    SharedSettingsText1 = gui.Text(SetupSharedRef, "")
    SharedSettingsText = gui.Text(SetupSharedRef, "#~#~#  SharedDMGToggle  #~#~#")
	DamageToggGroupBox = gui.Text(SetupSharedRef, "Damage Toggle", 0, 400, 213, 245);
    currentSharedMinDamage = math.floor(gui_get("rbot.accuracy.weapon.shared.mindmg") + 0.5);
    currentSharedHitChance = math.floor(gui_get("rbot.accuracy.weapon.shared.hitchance") + 0.5);
end
local function equipListener( Event ) 

    if ( Event:GetName() ~= "item_equip" ) then
        return;
    end
	
	      local LocalPlayer = entities.GetLocalPlayer();

        if (LocalPlayer) then
            local UserID = Event:GetInt("userid");
            local Item = Event:GetString("item");
            
        if (LocalPlayer:GetIndex() == client.GetPlayerIndexByUserID(UserID)) then
        if (Item  == "scar20" or Item  == "g3sg1") then
            currentWeapon = "AUTO";
        elseif (Item  == "ssg08") then
            currentWeapon = "SCOUT";
        elseif (Item  == "awp") then
            currentWeapon = "SNIPER";
        else
            currentWeapon = "empty";
        end

    end

end

local function reduceMain()

    currentMode = DamageMode:GetValue();

    if(currentWeapon == "SCOUT") then

        if (input.IsButtonPressed(DamageToggKeyBind:GetValue()) and currentWeapon ~= "empty") then

            local currentAccuracy = getAccuracy();

            if (currentAccuracy == "NORMAL") then
                setAccuracy("LOW");
            elseif (currentAccuracy == "LOW") then
                setAccuracy("NORMAL");
            else
                setAccuracy("NORMAL");
            end

        end

    else

        if(currentMode == 1) then

            currentPlayerStatus = getPlayerStatus();
            inAirMode = DamageInAirRadio:GetValue();

            if(currentWeapon == "SCOUT" and currentPlayerStatus == "InAir" or inAirMode == true) then
                setAccuracy("LOW");
            elseif(currentPlayerStatus == "Moving" and currentWeapon == "AUTO") then
                setAccuracy("LOW");
            elseif(currentPlayerStatus == "Standing" and currentWeapon == "AUTO") then
                setAccuracy("NORMAL");
            elseif(currentPlayerStatus == "Moving" and currentWeapon == "SNIPER") then
                setAccuracy("LOW");
            elseif(currentPlayerStatus == "Standing" and currentWeapon == "SNIPER") then
                setAccuracy("NORMAL");
            else
                setAccuracy("NORMAL");
            end

        elseif(currentMode == 0) then

            if (input.IsButtonPressed(DamageToggKeyBind:GetValue()) and currentWeapon ~= "empty") then

                local currentAccuracy = getAccuracy();

                if (currentAccuracy == "NORMAL") then
                    setAccuracy("LOW");
                elseif (currentAccuracy == "LOW") then
                    setAccuracy("NORMAL");
                else
                    setAccuracy("NORMAL");
                end

            end

        end

    end


end

function getAccuracy()
    return currentAccuracy;
end

function setAccuracy(newMode)

    if (sharedConfig == false) then

        if(newMode == "NORMAL") then
            gui_set("rbot.accuracy.weapon.asniper.hitchance", math.floor(NormalHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.asniper.mindmg", math.floor(NormalMinDamage:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.scout.hitchance", math.floor(ScoutNormalHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.scout.mindmg", math.floor(ScoutNormalMinDamage:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.sniper.mindmg", math.floor(SniperNormalMinDamage:GetValue() + 0.5));
            currentAccuracy = "NORMAL";
        elseif(newMode == "LOW") then
            gui_set("rbot.accuracy.weapon.asniper.hitchance", math.floor(LowHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.asniper.hitchance", math.floor(LowMinDamage:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.scout.hitchance", math.floor(ScoutLowHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.scout.mindmg", math.floor(ScoutLowMinDamage:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.sniper.mindmg", math.floor(SniperLowMinDamage:GetValue() + 0.5));
            currentAccuracy = "LOW";
        end

    else

        if(newMode == "NORMAL") then
            gui_set("rbot.accuracy.weapon.shared.hitchance", math.floor(NormalHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.shared.mindmg", math.floor(NormalMinDamage:GetValue() + 0.5));
            currentAccuracy = "NORMAL";
        elseif(newMode == "LOW") then
            gui_set("rbot.accuracy.weapon.shared.hitchance", math.floor(LowHitChance:GetValue() + 0.5));
            gui_set("rbot.accuracy.weapon.shared.mindmg", math.floor(LowMinDamage:GetValue() + 0.5));
            currentAccuracy = "LOW";
        end

    end

end

local function drawMode()
draw.SetFont(rifk7_font)
    if(currentAccuracy == "NORMAL" and currentWeapon ~= "empty") then
        if(currentWeapon == "AUTO") then
            draw.Color(66,244,78,255);
            draw.Text(10,650, "Accuracy: NORMAL");
            draw.TextShadow(10,650, "Accuracy: NORMAL");
			draw.Text(10, 665, "Hit Chance:  " .. math.floor(NormalHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(NormalHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(NormalMinDamage:GetValue() + 0.5));
            draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(NormalMinDamage:GetValue() + 0.5));
        elseif(currentWeapon == "SNIPER") then
            draw.Color(66,244,78,255);
			draw.Text(10,650, "Accuracy: NORMAL");
            draw.TextShadow(10,650, "Accuracy: NORMAL");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(SniperNormalMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(SniperNormalMinDamage:GetValue() + 0.5));
		elseif(currentWeapon == "SCOUT") then
            if(sharedConfig == false) then
            draw.Color(66,244,78,255);
            draw.Text(10,650, "Accuracy: NORMAL");
            draw.TextShadow(10,650, "Accuracy: NORMAL");
			draw.Text(10, 665, "Hit Chance:  " .. math.floor(ScoutNormalHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(ScoutNormalHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(ScoutNormalMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(ScoutNormalMinDamage:GetValue() + 0.5));
            else
            draw.Color(66,244,78,255);
			draw.Text(10,650, "Accuracy: NORMAL");
            draw.TextShadow(10,650, "Accuracy: NORMAL");
            draw.Text(10, 665, "Hit Chance:  " .. math.floor(NormalHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(NormalHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(NormalMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(NormalMinDamage:GetValue() + 0.5));
            end
		end
    
	elseif(currentAccuracy == "LOW" and currentWeapon ~= "empty") then
        if(currentWeapon == "AUTO") then
            draw.Color(223,244,66,255);
            draw.Text(10,650, "Accuracy: LOW");
            draw.TextShadow(10,650, "Accuracy: LOW");
			draw.Text(10, 665, "Hit Chance:  " .. math.floor(LowHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(LowHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(LowMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(LowMinDamage:GetValue() + 0.5));
        elseif(currentWeapon == "SNIPER") then
            draw.Color(66,244,78,255);
			draw.Text(10,650, "Accuracy: LOW");
            draw.TextShadow(10,650, "Accuracy: LOW");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(SniperLowMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(SniperLowMinDamage:GetValue() + 0.5));
        elseif(currentWeapon == "SCOUT") then
            if(sharedConfig == false) then
            draw.Color(223,244,66,255);
            draw.Text(10,650, "Accuracy: LOW");
            draw.TextShadow(10,650, "Accuracy: LOW");
			draw.Text(10, 665, "Hit Chance:  " .. math.floor(ScoutLowHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(ScoutLowHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(ScoutLowMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(ScoutLowMinDamage:GetValue() + 0.5));
            else
            draw.Color(223,244,66,255);
            draw.Text(10,650, "Accuracy: LOW");
            draw.TextShadow(10,650, "Accuracy: LOW");
			draw.Text(10, 665, "Hit Chance:  " .. math.floor(LowHitChance:GetValue() + 0.5) .. "%");
            draw.TextShadow(10, 665, "Hit Chance:  " .. math.floor(LowHitChance:GetValue() + 0.5) .. "%");
			draw.Text(10, 680, "Min Damage:  " .. math.floor(LowMinDamage:GetValue() + 0.5));
			draw.TextShadow(10, 680, "Min Damage:  " .. math.floor(LowMinDamage:GetValue() + 0.5));
			end
        end
    else
			draw.Color(244,66,66,255);
			draw.Text(10,665, "No Toggable Gun in use");
			draw.TextShadow(10,665, "No Toggable Gun in use");
    end

end

local function getPlayerStatus()

    if entities.GetLocalPlayer() ~= nil then

        local localPlayer = entities.GetLocalPlayer();
        local localPlayerFlags = localPlayer:GetProp("m_fFlags");

        local xVel = localPlayer:GetPropFloat("localdata", "m_vecVelocity[0]");
        local yVel = localPlayer:GetPropFloat("localdata", "m_vecVelocity[1]");

        local playerVelocity = math.sqrt(xVel^2 + yVel^2);

        if (localPlayerFlags == 256 or localPlayerFlags == 262) then
            return "InAir";
        end

        if (playerVelocity == 0 and (localPlayerFlags == 257 or localPlayerFlags == 261 or localPlayerFlags == 263)) then
            return "Standing";
        end

        if (playerVelocity > 0 and (localPlayerFlags == 257 or localPlayerFlags == 261 or localPlayerFlags == 263)) then
            return "Moving";
        end

    end

end
end

client.AllowListener("item_equip");

callbacks.Register("FireGameEvent", "equipListener", equipListener);

callbacks.Register("Draw", "Check Movement", getPlayerStatus);
callbacks.Register("Draw", "reduceMain", reduceMain);
callbacks.Register("Draw", "setAccuracy", setAccuracy);
callbacks.Register("Draw", "getAccuracy", getAccuracy);
callbacks.Register("Draw", "drawMode", drawMode);


----------############################################
---------############################################
---------############################################
---------############################################






