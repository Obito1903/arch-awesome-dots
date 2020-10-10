#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#262335cc'  # default
T='#ffffffee'  # text

i3lock \
--insidevercolor=$B   \
--ringvercolor='#8BD450ff'     \
\
--insidewrongcolor=$B \
--ringwrongcolor='#F2002Aff'   \
\
--insidecolor=$B      \
--ringcolor='#1D1A2F77'        \
--linecolor='#1D1A2F00'        \
--separatorcolor='#1D1A2Fff'   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor='#3F6D4Eff'       \
--bshlcolor='#e6770bff'        \
\
--screen 1            \
--blur 8              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
#--keylayout 2         \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
