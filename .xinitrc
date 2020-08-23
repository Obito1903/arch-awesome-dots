#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xset +fp /home/raj/.local/share/fonts
xset fp rehash
xsetroot -cursor_name left_ptr
setxkbmap fr
exec /usr/lib/kdeconnectd &
exec picom --experimental-backends &
exec awesome
