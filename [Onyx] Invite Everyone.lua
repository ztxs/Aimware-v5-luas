--[Onyx] Invite Everyone by OurmineOGTv#6846
--With this LUA you can invite everyone.. If you get him profile link go to -> (ex) steamid.io and copy numbers in "steamID64" line.

--
local OnyxReference = gui.Reference("MISC")
local OnyxTab = gui.Tab(OnyxReference, "onyx.lobby", "[Onyx] Invite Everyone")
local OnyxGroupbox = gui.Groupbox(OnyxTab, "Select What You Want", 15, 15, 160)

--
local OnyxGroupbox2 = gui.Groupbox(OnyxTab, "[Onyx] Invite Everyone", 190, 15, 430)
local OnyxStatus = gui.Text(OnyxGroupbox2, "")

--
local OnyxGroupbox3 = gui.Groupbox(OnyxTab, "TextBox", 15, 175, 160, 100 )
local OnyxInviteCode = gui.Editbox(OnyxGroupbox3, OnyxInviteCode, "Invite Code")
local OnyxSteamId64 = gui.Editbox(OnyxGroupbox3, OnyxSteamId64, "SteamID 64")

--
OnyxInviteCode:SetDescription("Paste friend code.")
OnyxSteamId64:SetDescription("Paste user SteamID64.")

--
local function InviteWithCode()
    local InviteCode = OnyxInviteCode:GetValue();
    if InviteCode == nil or InviteCode == "" then
        OnyxStatus:SetText("Failed! Empty Invite Code Input")
    else
        panorama.RunScript([[
            var xuid = FriendsListAPI.GetXuidFromFriendCode("]]..InviteCode..[["); 
            var name = FriendsListAPI.GetFriendName(xuid); 
            if (LobbyAPI.IsSessionActive() == false) { 
                LobbyAPI.CreateSession(); 
            } 
            FriendsListAPI.ActionInviteFriend(xuid, ''); 
            $.Msg(`Invited \"${name}\" to the lobby..`);
        ]])
        OnyxStatus:SetText("Done! Invited Code: "..OnyxInviteCode:GetValue())
    end
end
local OnyxLobbyInviteViaCode = gui.Button(OnyxGroupbox, "Invite Via Code", InviteWithCode)

--
local function InviteWithSteamId()
    local SteamID64 = OnyxSteamId64:GetValue();
    if SteamID64 == nil or SteamID64 == "" then
        OnyxStatus:SetText("Failed! Empty Invite by SteamID64 Input")
    else
        panorama.RunScript([[

            var xuid = "]]..SteamID64..[[";
            var name = FriendsListAPI.GetFriendName(xuid); 
            if (LobbyAPI.IsSessionActive() == false) { 
                LobbyAPI.CreateSession(); 
            } 
            FriendsListAPI.ActionInviteFriend(xuid, ''); 
            $.Msg(`Invited \"${name}\" to the lobby..`);

        ]])
        OnyxStatus:SetText("Done! Invited SteamID64: "..OnyxSteamId64:GetValue())
    end
end
local OnyxLobbyInviteViaSteamID = gui.Button(OnyxGroupbox, "Invite Via SteamID64", InviteWithSteamId)
