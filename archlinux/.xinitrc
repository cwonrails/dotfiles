#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Use GTK widgets in place of QT
# export QT_STYLE_OVERRIDE=GTK+

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# make Caps Lock an additional CTRL key
setxkbmap -option ctrl:nocaps

# enable use of xset to manipulate keyboard LEDs
# xkbcomp "$DISPLAY" /tmp/xkbconf
# sed 's/\!allowExplicit/allowExplicit/' </tmp/xkbconf >/tmp/xkbconfnew
# xkbcomp /tmp/xkbconfnew "$DISPLAY"
# rm -f '/tmp/xkbconf' '/tmp/xkbconfnew'

# keyboard shortcuts for bspwm
# sxhkd -f 100 &


# screen temperature adjustment
# adjust the coordinates for your location.
# redshift -r -l 35.22:-80.84 &

# desktop wallpaper
# sh ~/.fehbg &

# hide x11 cursor
# unclutter &

# urxvt daemon
# urxvtd -q -f -o &

# window manager
# exec bspwm

exec i3
# exec cinnamon-session
