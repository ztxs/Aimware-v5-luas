callbacks.Register("Draw", function()
	if entities.GetLocalPlayer() then
local hc = gui.GetValue("rbot.accuracy.weapon.asniper.hitchance")    
local mindmg = gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")   
local button_held = input.IsButtonDown
local fakewalkkey = gui.GetValue("rbot.accuracy.movement.fakewalkkey")
    
		draw.SetFont(draw.CreateFont("Tahoma", 20, 700))

    if (gui.GetValue("rbot.hitscan.mode.asniper.baimlethal") == true) then
        draw.Color(0,128,0,255)
		draw.TextShadow(16, 786, "Baim")
	else
        draw.Color(128,0,0,255)
		draw.TextShadow(16, 786, "Baim")
    end

    if (gui.GetValue("misc.fakelag.enable") == true) then
        draw.Color(0,128,0,255)
        draw.TextShadow(16, 806, "FakeLag")
	else
        draw.Color(128,0,0,255)
		draw.TextShadow(16, 806, "Fakelag")
    end

    if (gui.GetValue("rbot.master") == true) and (gui.GetValue("rbot.aim.key") == 0) then
        draw.Color(0,128,0,255)
        draw.TextShadow(16, 826, "AutoFire")
	else
        draw.Color(128,0,0,255)
		draw.TextShadow(16, 826, "AutoFire")
    end

	if (gui.GetValue("rbot.accuracy.weapon.asniper.hitchance") ~= nil) then  
        draw.Color(0,128,0,255)
		draw.TextShadow(16, 846, "HC % is")
        draw.Color(0,0,128,255)
		draw.TextShadow(88, 846, ''..hc)
	end
	
	if (gui.GetValue("rbot.accuracy.weapon.asniper.mindmg") ~= nil) then  
        draw.Color(0,128,0,255)
		draw.TextShadow(16, 866, "MinDMG" )
	    draw.Color(0,0,128,255)
		draw.TextShadow(88, 866, ''..mindmg )
	end

	if button_held(fakewalkkey) == true then --input.IsButtonDown( fakewalkkey ) == true then
        draw.Color(0,128,0,255)
		draw.TextShadow(16, 886, "Fakewalking" )
	else
	    draw.Color(128,0,0,255)
		draw.TextShadow(16, 886, "Fakewalking" )
	end
end

end)
