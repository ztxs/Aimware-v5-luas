local MYCRAPVIS = gui.Reference('VISUALS', 'Other', "Extra")
local swastikkka_crosshair_settings = gui.Text(MYCRAPVIS, "Swastikkka Crosshair Settings")
local swastikkka_crosshair = gui.Checkbox( MYCRAPVIS, "msc_swastikkka", "Swastihair", 0)
local swastikkka_crosshairslidesize = gui.Slider(MYCRAPVIS, "msc_swasisize", "SwastiSize", 15.0, 1, 100.0)
local swastikkka_crosshairsliderspeed = gui.Slider(MYCRAPVIS, "msc_swasispeed", "SwastiSpeed", 1.0, -10.0, 10.0)
local degree = 0

local function rainbowxhair()
    if swastikkka_crosshair:GetValue() then
    local r = math.floor(math.sin(globals.RealTime() * swastikkka_crosshairsliderspeed:GetValue()) * 127 + 128)
    local g = math.floor(math.sin(globals.RealTime() * swastikkka_crosshairsliderspeed:GetValue() + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.RealTime() * swastikkka_crosshairsliderspeed:GetValue() + 4) * 127 + 128)
  
    local cX, cY = draw.GetScreenSize()
  
    cX = cX / 2
    cY = cY / 2
  
    draw.Color(r, g, b)
    for i=0, 3 do
        local x1, y1, x2, y2
      
        x1 = swastikkka_crosshairslidesize:GetValue()*math.sin(math.rad(degree+(i*90)))
        y1 = swastikkka_crosshairslidesize:GetValue()*math.cos(math.rad(degree+(i*90)))
      
        x2 = swastikkka_crosshairslidesize:GetValue()*math.sin(math.rad(degree+270+(i*90)))
        y2 = swastikkka_crosshairslidesize:GetValue()*math.cos(math.rad(degree+270+(i*90)))

        draw.Line(cX, cY, cX+x1, cY-y1)
        draw.Line(cX+x1, cY-y1, cX+x1-x2, cY-y1+y2)
    end
  
    degree = degree+swastikkka_crosshairsliderspeed:GetValue()*100*globals.FrameTime()
    if degree >= 360 then
        degree = 0
    end
    end
end
callbacks.Register( "Draw", rainbowxhair)