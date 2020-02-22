local kb = libs.keyboard;
local keyboard = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local fs = libs.fs;
local script = libs.script;
local dev = require("device");

--@help Switch to PC
actions.switchpc = function()
    kb.stroke("leftwindows", "num1");
end

--@help Switch to Projector
actions.switchprojector = function()
    kb.stroke("leftwindows", "num2");
end

--@help Launch Jriver
actions.jlaunch = function()
    os.start("C:\\Program Files (x86)\\J River\\Media Center 22\\Media Center 22.exe");
end