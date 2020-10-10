-------------------------------
--  "obito" awesome theme    --
--    By Obito1903           --
-------------------------------

local themes_path = "/home/obito1903/.config/awesome/themes/"
local rnotification = require("ruled.notification")
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
theme.wallpaper = themes_path .. "nerv/nerv.jpg"
-- }}}

-- {{{ Styles
theme.font      = "UbuntuMono Nerd Font"


-- {{{ Colors
theme.fg_normal  = "#cccccc"
theme.fg_focus   = "#ffffff"
theme.fg_urgent  = "#fe4450"
theme.bg_normal  = "#000000"
theme.bg_focus   = "#101010"
theme.bg_urgent  = "#F4022C"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(2)
theme.border_width  = 0
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "obito/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "obito/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "obito/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "obito/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "obito/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "obito/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "obito/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "obito/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "obito/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "obito/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "obito/layouts/dwindle.png"
theme.layout_max        = themes_path .. "obito/layouts/max.png"
theme.layout_fullscreen = themes_path .. "obito/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "obito/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "obito/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "obito/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "obito/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "obito/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "obito/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "obito/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "obito/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "obito/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "obito/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "obito/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "obito/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "obito/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "obito/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "obito/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "obito/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "obito/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "obito/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "obito/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "obito/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "obito/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "obito/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "obito/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "obito/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
    rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)

theme.notification_bg = '#151515'
theme.notification_border_width	= 0
-- theme.notification_border_color = '#151515'

return theme
