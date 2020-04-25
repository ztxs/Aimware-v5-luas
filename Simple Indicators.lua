local y_offset = gui.Slider(gui.Reference("Visuals","Local","Helper"), "simple.indicators.y.ind.offset", "Simple Indicators Y Offset", -70, -450, 450)
local screenX, screenY = getScreenSize()
local half_screenY = screenY / 2


callbacks.Register("Draw", function()
	
	if entities.GetLocalPlayer() then

local hc = gui.GetValue("rbot.accuracy.weapon.asniper.hitchance")    
local mindmg = gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")   
local fakewalkkey = gui.GetValue("rbot.accuracy.movement.fakewalkkey")
local button_held = input.IsButtonDown
    
		draw.SetFont(draw.CreateFont("Tahoma", 20, 700))

    if (gui.GetValue("misc.fakelag.enable") == true) then
        draw.Color(0,128,0,255)
        draw.TextShadow(16, half_screenY+35+y_offset:GetValue(), "Fakelag")
	else
        draw.Color(128,0,0,255)
		draw.TextShadow(16, half_screenY+35+y_offset:GetValue(), "Fakelag")
    end

    if (gui.GetValue("rbot.master") == true) and (gui.GetValue("rbot.aim.key") == 0) then
        draw.Color(0,128,0,255)
        draw.TextShadow(16, half_screenY+55+y_offset:GetValue(), "AutoFire")
	else
        draw.Color(128,0,0,255)
		draw.TextShadow(16, half_screenY+55+y_offset:GetValue(), "AutoFire")
    end

	if (gui.GetValue("rbot.accuracy.weapon.asniper.hitchance") ~= nil) then  
        draw.Color(0,128,0,255)
		draw.TextShadow(16, half_screenY+75+y_offset:GetValue(), "HC % is")
        draw.Color(0,0,128,255)
		draw.TextShadow(88, half_screenY+75+y_offset:GetValue(), ''..hc)
	else
		draw.Color(0,0,128,255)
		draw.TextShadow(16, half_screenY+95+y_offset:GetValue(), "No Toggleble Gun")	
	end
	
	if (gui.GetValue("rbot.accuracy.weapon.asniper.mindmg") ~= nil) then  
        draw.Color(0,128,0,255)
		draw.TextShadow(16, half_screenY+95+y_offset:GetValue(), "MinDMG" )
	    draw.Color(0,0,128,255)
		draw.TextShadow(88, half_screenY+95+y_offset:GetValue(), ''..mindmg )
	else
		draw.Color(0,0,128,255)
		draw.TextShadow(16, half_screenY+95+y_offset:GetValue(), "No Toggleble Gun")
	end

	if button_held(fakewalkkey) == true then
		
		draw.Color(0,128,0,255)
		draw.TextShadow(16, half_screenY+115+y_offset:GetValue(), "Fakewalking" )
	else
	    draw.Color(128,0,0,255)
		draw.TextShadow(16, half_screenY+115+y_offset:GetValue(), "Fakewalking" )
	end
end

end)
