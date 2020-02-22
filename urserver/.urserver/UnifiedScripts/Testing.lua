local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");


--MULTIMEDIA CONTROLS

--@help Launch Jriver
actions.switch_jriver = function()
    local hwnd = win.window("Media Center 22.exe");
    win.switchtowait("Media Center 22.exe");
end

--@help Play / Pause
actions.pause = function()

end

--@help Next
actions.next = function()

end

--@help Previous
actions.previous = function()

end

--@help Volume Up
actions.vol_up = function()

end

--@help Volume Down
actions.vol_down = function()

end

--@help Mute / Unmute
actions.mute = function()

end

--@help Subtitles
actions.subs = function()

end

--@help Fullscreen
actions.fullscreen = function()

end

--@help Switch Jriver Zones
actions.zone_switch = function()

end

--NAVIGATION CONTROLS

--@help Mouse and Keyboard
actions.input = function()

end

--@help Up Arrow
actions.up = function()

end

--@help Down Arrow
actions.down = function()

end

--@help Left Arrow
actions.left = function()

end

--@help Right Arrow
actions.right = function()

end

--@help Select current
actions.select = function()

end

--@help Enter Key
actions.enter = function()

end

--@help Back Nav
actions.back = function()

end

--@help Forward Nav
actions.forward = function()

end

--@help New Tab
actions.csn = function()

end



--PROGRAM AND POWER CONTROLS

--@help Shutdown
actions.sd = function()

end

--@help Task Manager
actions.cse = function()

end

--@help Close Current Window
actions.af4 = function()
    kb.stroke ("alt","f4")
end

--@help Snap Left
actions.sleft = function()

end

--@help Snap Right
actions.sright = function()

end

--SCREEN SWITCHING

--@help Switch Screen to PC
actions.switchpc = function()

end

--@help Switch Screen to Projector
actions.switchpro = function()

end
