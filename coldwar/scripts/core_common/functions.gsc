// This function will draw a message using your custom system.
function test_option_function(item) {
    self menu_drawing_secondary("Menu Base - ^1Ate48");
    self menu_drawing_secondary("Menu Reconstructed - ^2JustAurora");
}

function func_invulnerability(item) {
    if (isdefined(self.tool_invulnerability) && self.tool_invulnerability) {
        self.tool_invulnerability = false;
        self disableinvulnerability();
        self val::set(#"oob", "disable_oob", false);
    } else {
        self.tool_invulnerability = true;
    }
    item.activated = self.tool_invulnerability;
    return true;
}

function func_givepowerup()
{
    if (!isdefined(self) || !isdefined(self.origin))
        return;

    // Spawn Max Ammo at the player's location
    self zm_powerups::specific_powerup_drop("full_ammo", self.origin, undefined, undefined, undefined, 1);
}

function debug_quit()
{
    if(isdefined(self))
    {
        iprintln("Debug: Quitting lobby immediately!");
        self freeze_controls(true); // Optional: prevents further input while quitting

        // Fastest way to quit:
        self notify("end_game"); // Triggers the standard leave/loss event (works in most CoD games)
        // self thread maps\mp\gametypes\_callbacksetup::callback_disconnect(); // Some games use this
        // self thread session_end(); // Some mods use a custom session_end function
        // level thread end_game(); // Only use this if you want to end the whole game for all players (host only)
    }
}