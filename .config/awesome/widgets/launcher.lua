local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

-- Default terminal
local terminal = "termite"
-- Default editor
local editor = os.getenv("EDITOR") or "code" or "vim"
-- Default term editor
local editor_cmd = terminal .. " -e " .. "vim"


local MenuFolderAwesome = {
    { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "manual", terminal .. " -e man awesome" },
    { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end }
}

-- MenuFolderEditor = {
--     {"VS Code", "code"},
-- }

-- List of object in the launcher
local MenuAppLauncher = awful.menu({
    items = {
        {"awesome", MenuFolderAwesome, beautiful.awesome_icon},
        {"Open terminal", terminal}
    }
})

-- Launcher icon
local w_launcher = awful.widget.launcher({
    image = beautiful.awesome_icon,
    menu = MenuAppLauncher
})

return w_launcher