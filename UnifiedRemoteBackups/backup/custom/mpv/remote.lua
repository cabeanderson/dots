local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");
local win = libs.win;

-- Commands

--MPD Controls

--@help Play / Pause
actions.pause = function()
    os.execute("mpc toggle");
end

--@help Stop Playback
actions.stop = function()
    os.execute("mpc stop");
end

--@help Jump Back
actions.jumpb = function()
     os.execute("mpc seek -00:00:15");
end

--@help Jump Forward
actions.jumpf = function()
     os.execute("mpc seek +00:00:15");
end

--@help Previous
actions.previous = function()
     os.execute("mpc prev");
end

--@help Next
actions.next = function()
     os.execute("mpc next");
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

--@help Fullscreen
actions.fullscreen = function()
	kb.stroke("win", "f");
end

--@help Show Music
actions.music = function()
	os.execute("st ncmpcpp &");
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

--@help Select current
actions.select = function()
    keyboard.stroke("return");
end

--@help Enter Key
actions.enter = function()
    keyboard.stroke("return");
end

--@help Escape Key
actions.esc = function()
    keyboard.stroke("escape");
end

--@help Back Nav
actions.back = function()
    keyboard.stroke("alt", "left");
end

--@help Forward Nav
actions.forward = function()
    keyboard.stroke("alt", "right");
end

--PROGRAM AND POWER CONTROLS

--@help Shutdown
actions.sd = function()
--    dev.switch("Unified.Power");
      dev.switch("Cabe.LinuxPower");
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
actions.webbrowse = function()
--    keyboard.stroke ("lwin", "w")
	os.execute("firefox &")
end

--@help File Browser
actions.filebrowse = function()
--    keyboard.stroke ("lwin", "w")
	os.execute("thunar &")
end

--@help Rofi Menu
actions.rmenu = function()
    keyboard.stroke ("lwin", "space")
--	os.execute("rofi -show -font 'roboto 18' &")
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
	os.execute("xrandr --output DisplayPort-1 --auto --output HDMI-A-1 --off &")
end

--@help Switch Screen to Projector
actions.switchpro = function()
	os.execute("xrandr --output HDMI-A-1 --auto --output DisplayPort-1 --off &")
end

--Home Automation

