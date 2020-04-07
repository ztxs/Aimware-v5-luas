local Kill_String = {
[1] = "1 shot dog",
[2] = "you went and got 1tap$",
[3] = "1tap$ HAHAHAHAHHAHA",
[4] = "nyach omk",
[5] = "ks omk",
[6] = "nyach omk 1tap",
[7] = "ks omk 1tap",
[8] = "you do not have a brain HAHAHAHAHAH",
[9] = " 111",
[10] = "suck + sit dog",
[11] = "Hooker 1tap",
[12] = "Innit? 1tap",
[13] = "Remember who you are dog ",
[14] = "cocksucker; shitass; turd 1tap bot",
[15] = "owned noob",
[16] = "stupid dog died quickly",
[17] = "you did not have the brain to do something g_g 1tap",
[18] = "you lucky you died from the legend h v h",
[19] = "Oops you are bot"
}

local Death_String = {
[1] = "If I ever surrender, it'll happen only in mercy to the winner ",
[2] = "Fall seven times and stand up eight" ,
[3] = "stupid fools are always lucky",
[4] = "You killed me 1 time and I kill you 40 Map",
[5] = "as usual a dull dog kills in body",
[6] = "the brains are not enough to put hitbox on the head? bot",
[7] = "1v620",
[8] = "haha dumb dog first time killed me for a year",
[9] = "yes you are right to fools lucky",
[10] = "normal day of a stupid dog with body"
};


function CHAT_KillSay( Event )

if ( Event:GetName() == 'player_death' ) then

   local ME = client.GetLocalPlayerIndex();

   local INT_UID = Event:GetInt( 'userid' );
   local INT_ATTACKER = Event:GetInt( 'attacker' );

   local NAME_Victim = client.GetPlayerNameByUserID( INT_UID );
   local INDEX_Victim = client.GetPlayerIndexByUserID( INT_UID );

   local NAME_Attacker = client.GetPlayerNameByUserID( INT_ATTACKER );
   local INDEX_Attacker = client.GetPlayerIndexByUserID( INT_ATTACKER );

   if ( INDEX_Attacker == ME and INDEX_Victim ~= ME ) then

       random = math.random (1, 19)
       client.ChatSay( ' ' .. tostring( Kill_String[random]));

   elseif ( INDEX_Victim == ME and INDEX_Attacker ~= ME ) then

      random = math.random (1, 10)
       client.ChatSay( ' ' .. tostring( Death_String[random]));

   end

end

end

client.AllowListener( 'player_death' );

callbacks.Register( 'FireGameEvent', 'AWKS', CHAT_KillSay );