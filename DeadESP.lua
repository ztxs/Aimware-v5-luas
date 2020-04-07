-- DeadESP
local w,h = 0,0
local rage_ref_extra = gui.Reference("VISUALS");
local deadesp_tab = gui.Tab(rage_ref_extra, "deadesp.tab", "DeadESP")
local deadesp_group = gui.Groupbox(deadesp_tab, "Deadesp")
local deadespwallhack = gui.Keybox(deadesp_group, "wallhackkey", "DeadESP Wallhackkey", false); 		-- Set wallhack-key and hold the key to enable enemy.occluded chams aka Wallhack
local DeadESPchamstggl = gui.Combobox(deadesp_group, 'lua_deadesptgglchams_combobox', 'DeadESP TgglChams', 'Off', 'Flat', 'Color', 'Metallic', 'Glow' )	-- Change Wallhack ChamsMode onthefly
local DeadESPchams_while_spec = gui.Combobox(deadesp_group, 'lua_deadespchams_while_spec_combobox', 'DeadESPChams while Spectating', 'Off', 'Flat', 'Color', 'Metallic', 'Glow' )	-- Change Wallhack ChamsMode onthefly


local function ESP_Always_OnDead( ) 

w, h = draw.GetScreenSize()




 if entities.GetLocalPlayer() == NULL or entities.GetLocalPlayer() == nil then
 return
			

	else if (deadespwallhack:GetValue() ~= 0) then		
		 if entities.GetLocalPlayer():IsAlive() == true and input.IsButtonDown(deadespwallhack:GetValue()) then
				gui.SetValue("esp.chams.enemy.occluded", DeadESPchamstggl:GetValue())

			draw.Color(128,0,0,255)
			draw.Text(15, 460, "Visuals On")
	
elseif entities.GetLocalPlayer():IsAlive() == true then
            
			gui.SetValue("esp.overlay.enemy.name", false)
            gui.SetValue("esp.chams.enemy.occluded", false)
			gui.SetValue("esp.chams.enemy.overlay", false)
            gui.SetValue("esp.overlay.enemy.scoped", false)
            gui.SetValue("esp.overlay.enemy.reloading", false)
            gui.SetValue("esp.overlay.enemy.health.healthnum", false)
            gui.SetValue("esp.overlay.enemy.health.healthbar", false)
            gui.SetValue("esp.overlay.enemy.weapon", false)
            gui.SetValue("esp.overlay.enemy.box", false)
            gui.SetValue("esp.overlay.enemy.hasdefuser", false)
            gui.SetValue("esp.overlay.enemy.hasc4", false)
			gui.SetValue("esp.overlay.weapon.ammo", false)
            gui.SetValue("esp.overlay.enemy.barrel", false)
			

					
	
	elseif entities.GetLocalPlayer():IsAlive() == false then

            gui.SetValue("esp.overlay.enemy.name", true)
            gui.SetValue("esp.chams.enemy.occluded", DeadESPchams_while_spec:GetValue())
			gui.SetValue("esp.chams.enemy.overlay", "1")
            gui.SetValue("esp.overlay.enemy.scoped", true)
            gui.SetValue("esp.overlay.enemy.reloading", true)
            gui.SetValue("esp.overlay.enemy.health.healthnum", true)
            gui.SetValue("esp.overlay.enemy.health.healthbar", true)
			gui.SetValue("esp.overlay.enemy.weapon", true)
            gui.SetValue("esp.overlay.enemy.box", true)
            gui.SetValue("esp.overlay.enemy.hasdefuser", true)
            gui.SetValue("esp.overlay.enemy.hasc4", true)
            gui.SetValue("esp.overlay.enemy.barrel", "1")



end
end			
end
end

callbacks.Register( "Draw", "espalwaysondead", ESP_Always_OnDead );

-- End DeadESP
