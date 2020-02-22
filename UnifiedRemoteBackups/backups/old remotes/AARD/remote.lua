local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");
local win = libs.win;

-- Commands

--IR CONTROLS

--@help Turn Projector On
--actions.proj_on = function()
--	dev.irsend("3797 2C340 2C171 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C22 2C21 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C64 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C64 2C22 2C64 2C22 2C65 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C21 2C22 2C22 2C21 2C21 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C65 2C21 2C21 2C22 2C64 2C22 2C1753");
--end

--@help Turn Projector On
--actions.proj_off = function()
--	dev.irsend("37267 2C341 2C171 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C22 2C21 2C64 2C22 2C64 2C22 2C21 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C64 2C22 2C64 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C21 2C22 2C65 2C21 2C21 2C22 2C21 2C22 2C21 2C22 2C64 2C22 2C65 2C22 2C21 2C22 2C64 2C22 2C1753 2C117 2C389");
--end

--MULTIMEDIA CONTROLS

--Detects

--@help Launch Jriver
	actions.launch_jriver = function()
	os.execute("mediacenter24");
end

--@help Play / Pause
actions.pause = function()
    kb.press("space");
end

--@help Stop Playback
actions.stop = function()
--  actions.command(MCC_PREVIOUS, 0);
		kb.stroke("ctrl","s");
end

--@help Jump Back
actions.jumpb = function()
--  actions.command(MCC_PREVIOUS, 0);
		kb.stroke("ctrl","shift", "left");
end

--@help Jump Forward
actions.jumpf = function()
--	 actions.command(MCC_NEXT, 0);
		kb.stroke("ctrl","shift", "right");
end

--@help Previous
actions.previous = function()
--  actions.command(MCC_PREVIOUS, 0);
		kb.stroke("ctrl","l");
end

--@help Next
actions.next = function()
--	 actions.command(MCC_NEXT, 0);
		kb.stroke("ctrl","n");
end

--@help Volume Up
actions.vol_up = function()
--    keyboard.press("volumeup");
    os.execute("amixer set Master 2dB+");

end

--@help Volume Down
actions.vol_down = function()
--    keyboard.press("volumedown");
    os.execute("amixer set Master 2dB-");
end

--@help Mute / Unmute
actions.mute = function()
--    keyboard.press("volumemute");
    os.execute("amixer set Master toggle");
end

--@help Subtitles
actions.subs = function()
    actions.command(MCC_SET_SUBTITLES, -1);
end

--@help Standard View Jriver
actions.sview = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
		kb.stroke("ctrl","1");
end

--@help Theater View Jriver
actions.tview = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
		kb.stroke("ctrl", "4");
end

--@help Fullscreen
actions.fullscreen = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
	kb.stroke("f");
end

--@help Show Playing Now
actions.playing_now = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
		kb.stroke("alt", "2");
end

--@help Show Music
actions.music = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
		kb.stroke("alt", "3");
end

--@help Show Video
actions.video = function()
    --actions.command(MCC_TOGGLE_MODE, 2);
		kb.stroke("alt", "5");
end

--@help Switch Jriver Zones
actions.zone_switch = function()
    --actions.command(MCC_ZONE_SWITCH, nil);
		kb.stroke("ctrl","t");
end

--NAVIGATION CONTROLS

--@help Mouse and Keyboard
actions.input = function()
    dev.switch("Unified.Basic Input");
end

--@help Jriver Search
actions.jsearch = function()
    kb.stroke("ctrl","e")
end

--@help Up Arrow
actions.up = function()
    kb.press("up")
end

--@help Down Arrow
actions.down = function()
    kb.press("down")
end

--@help Left Arrow
actions.left = function()
    kb.press("left")
end

--@help Right Arrow
actions.right = function()
    kb.press("right")
end

--@help Select current
actions.select = function()
    keyboard.stroke("return");
end

--@help Enter Key
actions.enter = function()
    keyboard.stroke("return");
end

--@help Back Nav
actions.back = function()
    keyboard.stroke("alt", "left");
end

--@help Forward Nav
actions.forward = function()
    keyboard.stroke("alt", "right");
end

--@help Last Tab
actions.last_tab = function()
    keyboard.stroke("ctrl", "pgdown");
end

--@help Close Tab
actions.close_tab = function()
    keyboard.stroke("ctrl", "w");
end

--PROGRAM AND POWER CONTROLS

--@help Shutdown
actions.sd = function()
    dev.switch("Unified.Power");
end

--@help Task Manager
actions.cse = function()
	os.execute("st htop");
end

--@help Close Current Window
actions.af4 = function()
    kb.stroke ("leftwin", "q")
end

--@help Snap Left
actions.sleft = function()
    keyboard.stroke("leftshift", "leftwin", "h");
end

--@help Snap Right
actions.sright = function()
    keyboard.stroke("leftshift", "leftwin", "l");
end

--SCREEN SWITCHING

--@help Switch Screen to PC
actions.switchpc = function()
--    keyboard.stroke("leftwin", "1");
	os.execute("xrandr --output DP-1 --auto --output HDMI-0 --off &")
end

--@help Switch Screen to Projector
actions.switchpro = function()
	os.execute("xrandr --output HDMI-0 --auto --output DP-2 --off &")
end

--Home Automation

