--[[
	Title: PartyManager
	Author: w1nter#4947
	Version: 1.0
]]--

-- GUI references and localization of party table.
local party = {}
local group = gui.Groupbox(gui.Reference("Misc", "General"), "Party Manager", 16, 472, 296, 325)
local input = gui.Editbox(group, friendCode, "Friend Code")

-- Button to grab input from editbox and insert it into the party table.
gui.Button(group, "Add to Party", function()
	table.insert(party, input:GetValue())
	panorama.RunScript([[
		var xuid = FriendsListAPI.GetXuidFromFriendCode("]]..input:GetValue()..[[");
		var name = FriendsListAPI.GetFriendName(xuid);
		$.Msg(`Added \"${name}\" to the party.`);
	]])
end)

-- Button tp print all added friend codes to game console.
gui.Button(group, "Print Members", function()
	for k, v in pairs(party) do
		panorama.RunScript([[
			var xuid = FriendsListAPI.GetXuidFromFriendCode("]]..party[k]..[[");
			var name = FriendsListAPI.GetFriendName(xuid);
			$.Msg(`${name}: ]]..party[k]..[[`);
		]])
	end
end)

-- Button to invite all added friend codes to game lobby.
gui.Button(group, "Invite Members", function()
	for k, v in pairs(party) do
		panorama.RunScript([[
			var xuid = FriendsListAPI.GetXuidFromFriendCode("]]..party[k]..[[");
			var name = FriendsListAPI.GetFriendName(xuid);
			if(LobbyAPI.IsSessionActive() == false) {
				LobbyAPI.CreateSession();
			}
			FriendsListAPI.ActionInviteFriend(xuid, '');
			$.Msg(`Invited \"${name}\" to the lobby.`);
		]])
	end
end)