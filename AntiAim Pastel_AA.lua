
local xref = gui.Reference("Ragebot", "Anti-Aim", "Condition")
local title = gui.Text(xref, "#~#~#  Desync Jitter Sliders  #~#~#")	
local slider1 = gui.Slider(xref, "slider1", "Jitter Add Min", 0, -180, 180)
local slider2 = gui.Slider(xref, "slider2", "Jitter Add Max", 0, -180, 180)
local title2 = gui.Text(xref, "For more check youtube.com/pastel420")

function a()
end

function main()

    if gui.GetValue("rbot.antiaim.condition.slider1") == 0 then
        a();
    elseif gui.GetValue("rbot.antiaim.condition.slider1") >= 0 then
        gui.SetValue("rbot.antiaim.base", math.random(gui.GetValue("rbot.antiaim.condition.slider1"), gui.GetValue("rbot.antiaim.condition.slider2")))
    end
end

callbacks.Register("Draw", "main", main)
callbacks.Register("Draw", "a", a)

rotate = 1
mierda = 69
 	
noir = 15
blanc = -15
oranges = 40
p = -40

function code()
    if (rotate == 1) then
        gui.SetValue("rbot.antiaim.base.rotation", noir)
        rotate = 2
    elseif (rotate == 2) then
        gui.SetValue("rbot.antiaim.base.rotation", blanc)
        rotate = 1
        end
end
function pause()
    if (mierda == 69) then
        gui.SetValue("rbot.antiaim.base.lby", oranges)
        mierda = 420
    elseif (mierda == 420) then
        gui.SetValue("rbot.antiaim.base.lby", p)
        mierda = 69
        end
end
callbacks.Register("Draw", pause)
callbacks.Register("Draw", code)



 
local delay = .1
local timer = timer or {}
local timers = {}
 
 
function timer.Create(name, delay, times, func)
 
    table.insert(timers, {["name"] = name, ["delay"] = delay, ["times"] = times, ["func"] = func, ["lastTime"] = globals.RealTime()})
 
end
 
function timer.Remove(name)
 
    for k,v in pairs(timers or {}) do
   
        if (name == v["name"]) then table.remove(timers, k) end
   
    end
 
end
 
function timer.Tick()
 
    for k,v in pairs(timers or {}) do
   
        if (v["times"] <= 0) then table.remove(timers, k) end
       
        if (v["lastTime"] + v["delay"] <= globals.RealTime()) then
            timers[k]["lastTime"] = globals.RealTime()
            timers[k]["times"] = timers[k]["times"] - 111
            v["func"]()
        end
   
    end
 
end
 
callbacks.Register( "Draw", "timerTick", timer.Tick);
 
 
timer.Create("Pastel", 1, 2, function() Pastel1() end)

-- p110000000011101001 resolver 






 -- stand anti aim 


function Pastel1()
timer.Create("Pastel1", delay, .1, function()

	 gui.SetValue( "rbot.antiaim.base.rotation", 30 )
	 gui.SetValue("rbot.antiaim.base.lby", -112) 
    Pastel2()
end)
end
 
 
function Pastel2()
    timer.Create("Pastel2", delay, .1, function()
        
	 gui.SetValue( "rbot.antiaim.base.rotation", -58 )
	 gui.SetValue("rbot.antiaim.base.lby", 180) 
	  
        Pastel3()
    end)
end 

function Pastel3()
timer.Create("Pastel3", delay, .1, function()

	 gui.SetValue( "rbot.antiaim.base.rotation", -10 )
	 gui.SetValue("rbot.antiaim.base.lby", 112) 
     
    Pastel4()
end)
end
 
 
function Pastel4()
    timer.Create("Pastel4", delay, .1, function()
        
	 gui.SetValue( "rbot.antiaim.base.rotation", -20 )
	 gui.SetValue("rbot.antiaim.base.lby", 180) 
	  
        Pastel5()
    end)
end 

function Pastel5()
timer.Create("Pastel5", delay, .1, function()

	 gui.SetValue( "rbot.antiaim.base.rotation", 58 )
	 gui.SetValue("rbot.antiaim.base.lby", -21) 
   
    Pastel6()
end)
end
 
 
function Pastel6()
    timer.Create("Pastel6", delay, .1, function()
        
	 gui.SetValue( "rbot.antiaim.base.rotation", 45 )
	 gui.SetValue("rbot.antiaim.base.lby", -112) 
	 
        Pastel1()
    end)
end 



-----  jitter fake lag paste -----



local ref = gui.Reference("Misc", "Enhancement")

-- BOXES
local main_box = gui.Groupbox(ref, " JitterFakelag by youtube.com/pastel420",328, 321, 296, 400);


--sliders
local limit = gui.Slider(main_box, "limit", "Limit", 0, 0, 30);
local freq = gui.Slider(main_box, "frequency", "Frequency", 0, 1, 100);
local center = gui.Slider(main_box, "center", "Center", 0, 2, 30);


--vars

local function jitter_fakelag()
	maths = (gui.GetValue("misc.limit") * math.cos((globals.RealTime()) / (gui.GetValue("misc.frequency")*(0.01)))+ gui.GetValue("misc.center"));
	gui.SetValue("misc.fakelag.factor", maths)
end


callbacks.Register("Draw", jitter_fakelag);


 
 
 
















