--[Onyx] Invite Spam LUA for AIMWARE V5

panorama.RunScript([[
    let collectedSteamIDS = [];
    collectedSteamIDS.push("123");
]])

local OnyxReference = gui.Reference("Misc", "Enhancement")
local OnyxInviteGroupbox = gui.Groupbox( OnyxReference, "[Onyx] Invite Spam", 330, 315, 295 ) 

local refresh = false
local function refresh_nearbies()
    panorama.RunScript([[
        PartyBrowserAPI.Refresh();
        var lobbies = PartyBrowserAPI.GetResultsCount();
        for (var lobbyid = 0; lobbyid < lobbies; lobbyid++) {
            var xuid = PartyBrowserAPI.GetXuidByIndex(lobbyid);
            if (!collectedSteamIDS.includes(xuid)) {
                if (collectedSteamIDS.includes('123')) {
                    collectedSteamIDS.splice(collectedSteamIDS.indexOf('123'), 1);
                }
                collectedSteamIDS.push(xuid);
                $.Msg(`Adding ${xuid} to the collection..`);
            }
        }
        $.Msg(`Mass invite collection: ${collectedSteamIDS.length}`);
    ]]) 
end
refresh_nearbies()

gui.Button(OnyxInviteGroupbox, "Refresh nearbies", function()
    panorama.RunScript([[
        PartyBrowserAPI.Refresh();
        var lobbies = PartyBrowserAPI.GetResultsCount();
        for (var lobbyid = 0; lobbyid < lobbies; lobbyid++) {
            var xuid = PartyBrowserAPI.GetXuidByIndex(lobbyid);
            if (!collectedSteamIDS.includes(xuid)) {
                if (collectedSteamIDS.includes('123')) {
                    collectedSteamIDS.splice(collectedSteamIDS.indexOf('123'), 1);
                }
                collectedSteamIDS.push(xuid);
                $.Msg(`Adding ${xuid} to the collection..`);
            }
        }
        $.Msg(`Mass invite collection: ${collectedSteamIDS.length}`);
    ]]) 
end)

gui.Button(OnyxInviteGroupbox, "Mass invite nearbies", function()
    panorama.RunScript([[
        collectedSteamIDS.forEach(xuid => {
            FriendsListAPI.ActionInviteFriend(xuid, "");
        });
    ]])
end)

gui.Button(OnyxInviteGroupbox, "Print invite collection", function()
    panorama.RunScript([[
        $.Msg(collectedSteamIDS);
    ]])
end)

gui.Button(OnyxInviteGroupbox, "Invite all friends", function()
    panorama.RunScript([[
        var friends = FriendsListAPI.GetCount();
        for (var id = 0; id < friends; id++) {
            var xuid = FriendsListAPI.GetXuidByIndex(id);
            FriendsListAPI.ActionInviteFriend(xuid, "");
        }
    ]]) 
end)
