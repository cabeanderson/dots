local keyboard = require("keyboard");

local _password ="4587";

--@help Unlock
actions.unlock = function ()
keyboard.press("return");
os.sleep(800);
keyboard.text(_password);
end














