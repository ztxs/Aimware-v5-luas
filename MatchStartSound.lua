local Enabled = gui.Checkbox(gui.Reference("Visuals", "World", "Extra"), "vis.sounds.pnks", "PNKS! Round Start Sound", false)
Enabled:SetDescription("Plays the PNKS! Match start sound.")
client.AllowListener("round_announce_match_start");
local function EventHook(pEvent)
    if Enabled:GetValue() then
        if pEvent:GetName() == "round_announce_match_start" then
            client.Command("play superyu\\hey_ho_lets_go.mp3", true);
        end
    end
end
callbacks.Register("FireGameEvent", EventHook);