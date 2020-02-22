#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/Xresources

xsetroot -cursor_name left_ptr &

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# start some nice programs

exec herbstluftwm --locked
#exec bspwm
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
#exec awesome
