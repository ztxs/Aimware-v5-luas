local guiRef1 = gui.Reference( "Ragebot", "Accuracy", "Movement" )
--local guiRef2 = gui.Reference( "Ragebot", "Anti-Aim", "Advanced" )
local Checkbox = gui.Checkbox( guiRef1, "fakewalk", "Fakewalk", false )
Checkbox:SetDescription("Use Fakewalk instead of Slowwalk");
local 
fakewalkkey = gui.Keybox(guiRef1, "fakewalkkey", "Fakewalkkey", 0)

fakewalkkey:SetDescription("Start Fakewalking when holding down this Key");
local function createMoveHook(cmd)

    if gui.GetValue("rbot.accuracy.movement.fakewalk") then
        if input.IsButtonDown( "a" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "d" ) then
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.sidemove = 0
            cmd.sendpacket = true
            cmd.sidemove = 0
            cmd.sendpacket = false
            cmd.sidemove = -55
        end
        if input.IsButtonDown( "d" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "a" ) then
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.sidemove = 0
            cmd.sendpacket = true
            cmd.sidemove = 0
            cmd.sendpacket = false
            cmd.sidemove = 55
        end
        if input.IsButtonDown( "s" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "w" ) then
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.forwardmove = 0
            cmd.sendpacket = true
            cmd.forwardmove = 0
            cmd.sendpacket = false
            cmd.forwardmove = -55
        end
        if input.IsButtonDown( "w" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "s" ) then
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.forwardmove = 0
            cmd.sendpacket = true
            cmd.forwardmove = 0
            cmd.sendpacket = false
            cmd.forwardmove = 55
        end
    end
end

callbacks.Register("CreateMove", createMoveHook)