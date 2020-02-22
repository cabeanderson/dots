local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");

--@help Focus VLC application
actions.switch_vlc = function()
    local hwnd = win.window("vlc.exe");
    win.switchtowait("vlc.exe");
end

--@help Focus Netflix site
actions.switch_netflix = function()
    local hwnd = win.find(nil, "Netflix - Internet Explorer");
    if (hwnd == 0) then return; end
    win.switchtowait(hwnd);
end

--@help TV Audio
actions.tv_audio = function()
    kb.stroke("alt", "oem_period");
    cd = script.batch("nircmd.exe setsysvolume 65535");
end

--@help Realtek Loudness Equalization On
    actions.loudness_eq_on = function()
    cd = script.batch("nircmd.exe setsysvolume 65535");
end

--@help Realtek Loudness Equalization Off
actions.loudness_eq_off = function()
    cd = script.batch("regedit.exe /s C:/Users/NATHAN/Documents/# FIXES/Batch Files/Realtek - Loudness Equalization/Loudness Equalization - Off.reg");
end

--@help PC Audio
actions.pc_audio = function()
    kb.stroke("alt", "oem_comma");
    end

--@help alt+F4
actions.altf4 = function()
    kb.stroke("alt", "F4");
end
-------------------------------------------------------------------------------------------------
--@help start utorrent
actions.startutorrent = function()
    os.open("C:/Users/NATHAN/AppData/Roaming/uTorrent/uTorrent.exe");
    os.sleep (1500);
    kb.stroke("win", "left");
    win.switchto("utorrent.exe");
end

--@help utorrent snap
actions.utorrent_snap = function()
    hwnd = win.find("SysListView322", nil);
    win.switchto(hwnd);
    kb.stroke("end");
end

--@help utorrent begin
actions.utorrent_begin = function()
    kb.stroke("shift", "F10");
    kb.stroke("s");
end

--@help start netflix
actions.startnetflix = function()
    hwnd = win.find(nil, "Netflix - Internet Explorer");
    if (hwnd == 0) then os.open("http://www.netflix.com/browse");
    end
    win.switchto(hwnd);
end

--@help move mouse netflix
actions.movemouseflix = function()
    x,y = ms.position();
    if (x == 1909) then ms.moveto(1910,1035);
    else ms.moveto(1909,1035);
    end
end

--@help start internet explorer
actions.internetexplorer = function()
    os.start("iexplore.exe");
end

--@help Alt+D
actions.altd = function()
    kb.stroke("alt", "d");
end

--@help Ctrl+H
actions.ctrlh = function()
    kb.stroke("ctrl", "h");
    kb.stroke("home");
end
-------------------------------------------------------------------------------------------------
--@help open torrents
actions.opentorrents = function()
    hwnd = win.find(nil, "Torrents");
    if (hwnd == 0) then os.open("C:/Users/NATHAN/Documents/Torrents");
    end
    win.switchto(hwnd);
end

--@help open tvshows
actions.opentvshows = function()
    hwnd = win.find(nil, "TV Shows");
    if (hwnd == 0) then os.open("D:/TV Shows");
    end
    win.switchto(hwnd);
end

--@help open movies
actions.openmovies = function()
    hwnd = win.find(nil, "Movies");
    if (hwnd == 0) then os.open("D:/Movies");
    end
    win.switchto(hwnd);
end
-------------------------------------------------------------------------------------------------
--@help esc
actions.esc = function()
    kb.stroke("escape");
end

--@help left
actions.left = function()
    kb.stroke("left");
end

--@help right
actions.right = function()
    kb.stroke("right");
end

--@help up
actions.up = function()
    kb.stroke("up");
end

--@help down
actions.down = function()
    kb.stroke("down");
end

--@help home
actions.home = function()
    kb.stroke("home");
end

--@help end
actions.endkey = function()
    kb.stroke("end");
end
-------------------------------------------------------------------------------------------------
--@help enterkey
actions.enterkey = function()
    kb.stroke("enter");
end

--@help backspace
actions.backspace = function()
    kb.stroke("backspace");
end

--@help move mouse vlc
actions.movemousevlc = function()
    ms.moveto(1920,1035);
    kb.stroke("t");
    os.sleep (500);
    kb.stroke("t");
    os.sleep (500);
end

--@help context
actions.context = function()
    kb.stroke("shift", "F10");
end

--@help toggle vlc subtitles
actions.vlcsubs = function()
    kb.stroke("shift", "v");
end

--@help refresh
actions.refresh = function()
    kb.stroke("F5");
end

--@help Focus VLC application
actions.switch = function()
        local hwnd = win.window("vlc.exe");
        if (hwnd == 0) then actions.launch(); end
        win.switchtowait("vlc.exe");
end

--@help vlc super play toggle
    actions.vlc_super_play_toggle = function()
    actions.switch_vlc();
    keyboard.stroke("space");
    kb.stroke("alt", "oem_period");
end

--@help Toggle netflix super play toggle
actions.netflix_super_play_toggle = function()
    keyboard.stroke("return");
    kb.stroke("alt", "oem_period");
    x,y = ms.position();
    if (x == 1909) then ms.moveto(1910,1035);
    else ms.moveto(1909,1035);
    end
end

--@help pgup
actions.pgup = function()
    kb.stroke("pgup");
end

--@help pgdown
actions.pgdown = function()
    kb.stroke("pgdown");
end

--@help shift
actions.shift = function()
    kb.stroke("shift");
end

--@help pgdown
actions.pgdown = function()
    kb.stroke("pgdown");
end

--@help vlc restart media
actions.vlc_restart_media = function()
    kb.stroke("s");
    kb.stroke("space");
end

--@help vlc jump backward
actions.vlc_jump_backward = function()
    kb.stroke("ctrl", "alt", "left");
end

--@help vlc jump forward
actions.vlc_jump_forward = function()
    keyboard.stroke("ctrl", "alt", "right");
end

actions.alttab = function()
        kb.down("alt");
        kb.press("tab");
end

--@help netflix next episode
actions.netflix_next_episode = function()
    ms.moveto(1847,957);
    ms.click();
    os.sleep (3000);
    ms.moveto(1910,1035);
end

--@help Enter Key
actions.enter_key = function()
    kb.stroke("enter");
    kb.stroke("alt", "oem_period");
    cd = script.batch("nircmd.exe setsysvolume 65535");
end

--@help netflix credits
actions.netflix_credits = function()
    ms.moveto(300,300);
    ms.click();
end
