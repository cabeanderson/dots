local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");
local win = libs.win;

-- Commands


--MULTIMEDIA CONTROLS

--Detects

--@help Play / Pause
actions.mpdpause = function()
	os.execute("mpc toggle");
end

--@help Stop Playback
actions.mpdstop = function()
	os.execute("mpc stop");
end

--@help Jump Back
actions.jumpb = function()
	os.execute("mpc seek - <00:00:30>");
end

--@help Jump Forward
actions.jumpf = function()
	os.execute("mpc seek + <00:00:30>");
end

--@help Previous
actions.mpdprev = function()
	os.execute("mpc prev");
end

--@help Next
actions.mpdnext = function()
	os.execute("mpc next");
end

--@help Page Down
actions.pgdown = function()
	kb.stroke("pagedown");
end

--@help Page Up
actions.pgup = function()
	kb.stroke("pageup");
end

--@help Volume Up
actions.vol_up = function()
--    os.execute("amixer set Master 2dB+");
    os.execute("/home/cabe/.config/dunst/volume.sh up &");
end

--@help Volume Down
actions.vol_down = function()
--    os.execute("amixer set Master 2dB-");
    os.execute("/home/cabe/.config/dunst/volume.sh down &");
end

--@help Mute / Unmute
actions.mute = function()
    os.execute("/home/cabe/.config/dunst/volume.sh mute &");
--    os.execute("amixer set Master toggle");
end

--@help Subtitles
actions.subs = function()
--    actions.command(MCC_SET_SUBTITLES, -1);
	kb.stroke("v");
end

--@help Fullscreen
actions.fullscreen = function()
--	kb.stroke("leftwin", "f");
	os.execute("herbstclient fullscreen toggle");
end

--@help Show Music
actions.music = function()
	os.execute("st ncmpcpp &");
end

--@help Show Video
actions.video = function()
	os.execute("kawaii-player &");
end

--NAVIGATION CONTROLS

--@help Mouse and Keyboard
actions.input = function()
    dev.switch("Relmtech.Basic Input");
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

--@help Focus Window Up
	actions.fup = function()
	os.execute("herbstclient focus up");
end

--@help Focus window down
	actions.fdown = function()
	os.execute("herbstclient focus down");
end

--@help Focus window left
	actions.fleft = function()
	os.execute("herbstclient focus left");
end

--@help Focus window right
	actions.fright = function()
	os.execute("herbstclient focus right");
end

--@help Enter Key
actions.enter = function()
    keyboard.stroke("return");
end

--@help Escape Key
actions.esc = function()
    keyboard.stroke("escape");
end

--@help Space Key
actions.space = function()
    kb.press("space");
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
--    dev.switch("Unified.Power");
      dev.switch("Cabe.LinuxPower");
end

--@help Sleep
actions.sleep = function()
        os.execute("sudo s2ram");
end

--@help Monitor on
actions.monitoron = function()
	script.shell("xset dpms force on");
end
--@help Monitor off
actions.monitoroff = function()
	script.shell("xset dpms force off");
end

--@help Task Manager
actions.cse = function()
	os.execute("st htop &");
end

--@help Close Current Window
actions.close = function()
    keyboard.stroke ("lwin", "q")
end

--@help Web Browser
actions.webbrowser = function()
--    keyboard.stroke ("lwin", "w")
	os.execute("firefox &")
end

--@help File Browser
actions.filebrowser = function()
	os.execute("st nnn /home/cabe/ &")
end

--@help Video Browser
actions.vidbrowser = function()
	os.execute("st nnn /home/cabe/server/video &")
end

--@help Rofi Menu
actions.rmenu = function()
--    keyboard.stroke ("lwin", "space")
	os.execute("rofi -show drun -theme /home/cabe/.config/rofi/sidetab.rasi -font 'roboto 18' &")
end

--@help Open Window Menu
actions.appswitch = function()
	os.execute("rofi -show window 'roboto 18' &");
end

--@help Next Desktop
actions.nextdesk = function()
	os.execute("herbstclient use_index +1");
end

--SCREEN SWITCHING

--@help Switch Screen to PC
actions.switchpc = function()
	os.execute("/home/cabe/bin/monitor_switch_herb mon")
end

--@help Switch Screen to Projector
actions.switchpro = function()
	os.execute("/home/cabe/bin/monitor_switch_herb pro")
end

--Home Automation

--Mouse Controls

--IR CONTROLS

--@help Turn Projector On
actions.projon = function()
	dev.irsend("UIR.FREQ.37037.SEQ.338.170.21.21.22.21.21.21.22.21.22.20.22.21.22.21.22.20.22.21.22.21.21.21.22.21.22.63.22.63.22.21.22.21.21.64.22.63.22.63.22.64.22.20.22.21.22.63.22.21.22.20.22.21.22.21.22.20.22.64.21.64.22.20.22.64.21.1733.339.170.21.21.22.20.22.21.22.21.22.20.22.21.22.21.21.21.22.21.22.20.22.21.22.21.22.63.22.63.22.21.22.20.22.64.22.63.22.63.22.63.22.21.22.21.22.63.22.21.22.20.22.21.22.20.22.21.22.63.22.64.22.20.22.63.22.1732");
end

--@help Turn Projector Off
actions.projoff = function()
	dev.irsend("UIR.FREQ.37974.SEQ.340.171.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.21.22.64.22.65.21.21.22.21.22.21.22.64.22.65.22.64.22.21.22.21.22.65.22.21.22.64.22.21.22.21.22.21.22.64.22.64.22.22.21.64.22.1754");
end

--@help Turn Projector to ECOBlank
actions.projblank = function()
	dev.irsend("UIR.FREQ.37974.SEQ.340.171.22.21.22.21.22.21.22.22.21.21.22.21.22.21.22.21.22.21.22.22.21.21.22.21.22.64.22.65.22.21.22.21.22.64.22.65.22.64.22.21.22.21.22.22.21.21.22.21.22.21.22.21.22.21.22.64.22.64.22.64.22.64.22.64.22.1754")
end

