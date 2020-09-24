local naughty = require("naughty")
local beautiful = require("beautiful")
local gears = require("gears")

naughty.connect_signal("request::display_error", function(message, startup)
    naughty.notification {
        urgency = "critical",
        title = "Oops, an error happened" ..
            (startup and " during startup!" or "!"),
        message = message
    }
end)

screen.connect_signal("request::wallpaper",
                      function(s) gears.wallpaper.maximized(wall, s, true) end)

beautiful.init("themes/" .. theme .. "/theme.lua")