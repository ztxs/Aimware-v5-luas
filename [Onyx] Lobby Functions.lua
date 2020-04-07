--[Onyx] Profile Changer for AIMWARE V5
--Powered by Onyx-Programming by OurmineOGTv
--Stable Version: Nan
--Dev Version: 1.0
--Last Update: 01/03/2020

--[Onyx] AutoUpdate
local OnyxScriptFileName = GetScriptName();
local OnyxScriptFileAddr = "https://raw.githubusercontent.com/Onyx-Programming/OnyxLobbyFunctions/master/%5BOnyx%5D%20Lobby%20Functions.lua";
local OnyxScriptVersionAddr = "https://raw.githubusercontent.com/Onyx-Programming/OnyxLobbyFunctions/master/version.txt";
local OnyxScriptVersion = "1.0.1";

local OnyxCheckDone = false;
local OnyxUpdateDownloaded = false;
local OnyxUpdateAvailable = false;

--[Onyx] AutoUpdate GUI
local OnyxAutoUpdateReference = gui.Reference("SETTINGS")
local OnyxAutoUpdateNewTab = gui.Tab(OnyxAutoUpdateReference, "onyx.auto.update.tab", "[Onyx] AutoUpdate")
local OnyxAutoUpdateGroupbox = gui.Groupbox(OnyxAutoUpdateNewTab, "[Onyx] Lobby Meme.lua", 15, 15, 400, 100)
gui.Text(OnyxAutoUpdateGroupbox, "[Onyx] Your Script Version: " .. OnyxScriptVersion)
local OnyxAutoUpdaterText = gui.Text(OnyxAutoUpdateGroupbox, "")

--[Onyx] Main AutoUpdater function
local function OnyxAutoUpdater()
	if (OnyxUpdateAvailable and not OnyxUpdateDownloaded) then
		OnyxAutoUpdaterText:SetText("[Onyx] Update is getting downloaded.")
		print("[Onyx] Update is getting downloaded.")
		local OnyxNewVersionContent = https.Get(OnyxScriptFileAddr);
		local OnyxOldScript = file.Open(OnyxScriptFileName, "w");
		OnyxOldScript:Write(OnyxNewVersionContent);
		OnyxOldScript:Close();
		OnyxUpdateAvailable = false;
		OnyxUpdateDownloaded = true;
	end

	if (OnyxUpdateDownloaded) then 
		OnyxAutoUpdaterText:SetText("[Onyx] Update available, please reload the script.")
		print("[Onyx] Update available, please reload the script.")
		return;
	end
	
	if (not OnyxCheckDone) then
		OnyxCheckDone = true;
		local OnyxVersion = http.Get(OnyxScriptVersionAddr);
		if (OnyxVersion ~= OnyxScriptVersion) then 
			OnyxUpdateAvailable = true;
		end
		OnyxAutoUpdaterText:SetText("[Onyx] Your LUA is up to date. Current Version: v" .. OnyxScriptVersion)
		print("[Onyx] You LUA is up to date. Current Version: v" .. OnyxScriptVersion)
	end
end
--[Onyx] AutoUpdater Callback
callbacks.Register("Draw", OnyxAutoUpdater)	--Uncomment this line!
