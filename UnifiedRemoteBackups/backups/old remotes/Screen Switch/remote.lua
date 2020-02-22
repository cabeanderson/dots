local kb = libs.keyboard;
local win = libs.win;
local ms = libs.mouse;
local script = libs.script;
local dev = require("device");
local timer = libs.timer
local tid;

-- Documentation
-- http://www.unifiedremote.com/api

-- Script Library
-- http://www.unifiedremote.com/api/libs/script


--@help switch screen
actions.switchpc = function ()
	kb.stroke("num3");
	os.start("%windir%/System32/DisplaySwitch.exe");
end
