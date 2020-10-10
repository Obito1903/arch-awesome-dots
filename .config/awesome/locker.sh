#!/bin/sh

exec xautolock -detectsleep \
    -time 5 -locker "/home/obito1903/.config/awesome/i3lock.sh" \
    -notify 30 \
    -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
