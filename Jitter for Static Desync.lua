local ragebot_add = gui.Reference("Ragebot", "Anti-Aim", "Condition");
local slider1 = gui.Slider(ragebot_add, "slider1", "Jitter Add Min", 0, 0, 180)
local slider2 = gui.Slider(ragebot_add, "slider2", "Jitter Add Max", 0, 0, 180)


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