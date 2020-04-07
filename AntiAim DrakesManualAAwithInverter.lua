local ref = gui.Tab(gui.Reference("Ragebot"), "manual_aa.settings", "DrakeAA")


-- BOXES
local slider_box = gui.Groupbox(ref, "Sliders", 375, 20, 220, 400);
local g_box = gui.Groupbox(ref, "Manual keys", 45, 20, 220, 400);




--KEYS AND SLIDERS
local left_key = gui.Keybox(g_box, "left_aa", "Left AA Key", 0);

local right_key = gui.Keybox(g_box, "right_aa", "Right AA Key", 0);

local back_key = gui.Keybox(g_box, "back_aa", "Back AA Key", 0);

local invert_key = gui.Keybox(g_box, "invert_aa", "Inverter key", 0);


local right_offset = gui.Slider(slider_box, "r_offset", "Right Offset", 0, -180, 180);
local r_rot = gui.Slider(slider_box, "right_rotation", "Right base rotation", 0, -58, 58);
local r_lby = gui.Slider(slider_box, "right_lby", "Right base lby", 0, -180, 180);
gui.Text(slider_box, "")
--
local left_offset = gui.Slider(slider_box, "l_offset", "Left Offset", 0, -180, 180);
local l_rot = gui.Slider(slider_box, "left_rotation", "Left base rotation", 0, -58, 58);
local l_lby = gui.Slider(slider_box, "left_lby", "Left base lby", 0, -180, 180);
gui.Text(slider_box, "")
--
local back_offset = gui.Slider(slider_box, "b_offset", "Back Offset", 180, -180, 180);
local b_rot = gui.Slider(slider_box, "back_rotation", "Back base rotation", 0, -58, 58);
local b_lby = gui.Slider(slider_box, "back_lby", "Back base lby", 0, -180, 180);












--VARS
local inverted = 0;





local function anti_aim_func()
	left_int = gui.GetValue("rbot.manual_aa.settings.left_aa");
	right_int = gui.GetValue("rbot.manual_aa.settings.right_aa");
	back_int = gui.GetValue("rbot.manual_aa.settings.back_aa");
	invert_int = gui.GetValue("rbot.manual_aa.settings.invert_aa");
	--
	r_rot_int = gui.GetValue("rbot.manual_aa.settings.right_rotation");
	r_lby_int = gui.GetValue("rbot.manual_aa.settings.right_lby");
	--
	l_rot_int = gui.GetValue("rbot.manual_aa.settings.left_rotation");
	l_lby_int = gui.GetValue("rbot.manual_aa.settings.left_lby");
	--
	b_rot_int = gui.GetValue("rbot.manual_aa.settings.back_rotation");
	b_lby_int = gui.GetValue("rbot.manual_aa.settings.back_lby");
	--
	r_off_int = gui.GetValue("rbot.manual_aa.settings.r_offset");
	l_off_int = gui.GetValue("rbot.manual_aa.settings.l_offset");
	b_off_int = gui.GetValue("rbot.manual_aa.settings.b_offset");
	
	if left_int ~= 0 and right_int ~= 0 and back_int ~= 0 and invert_int ~= 0 then
	
		if input.IsButtonPressed(right_int) then
			gui.SetValue("rbot.antiaim.base", r_off_int);
			gui.SetValue("rbot.antiaim.base.rotation", r_rot_int);
			gui.SetValue("rbot.antiaim.base.lby", r_lby_int);
		end		
		
		if input.IsButtonPressed(left_int) then
			gui.SetValue("rbot.antiaim.base", l_off_int);
			gui.SetValue("rbot.antiaim.base.rotation", l_rot_int);
			gui.SetValue("rbot.antiaim.base.lby", l_lby_int);
		end
		
		if input.IsButtonPressed(back_int) then
			gui.SetValue("rbot.antiaim.base", b_off_int); 
			gui.SetValue("rbot.antiaim.base.rotation", b_rot_int);
			gui.SetValue("rbot.antiaim.base.lby", b_lby_int);
		end

		if input.IsButtonPressed(invert_int) then
			if inverted == 0 then
				local to_invert_r = gui.GetValue("rbot.antiaim.base.rotation") * (-1);
				local to_invert_l = gui.GetValue("rbot.antiaim.base.lby")* (-1);
				gui.SetValue("rbot.antiaim.base.rotation", to_invert_r);
				gui.SetValue("rbot.antiaim.base.lby", to_invert_l);
				inverted = 1;
			elseif inverted == 1 then 
				local to_invert_r = gui.GetValue("rbot.antiaim.base.rotation") * (-1);
				local to_invert_l = gui.GetValue("rbot.antiaim.base.lby")* (-1);
				gui.SetValue("rbot.antiaim.base.rotation", to_invert_r);
				gui.SetValue("rbot.antiaim.base.lby", to_invert_l);
				inverted = 0;
			end	
		end
		
		
		
		
			
	else
	
		return
		
	end
end
callbacks.Register("Draw", "anti_aim_func",anti_aim_func);
Scroll to TopScroll to Bottom
