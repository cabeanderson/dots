#!/bin/bash

res=$(echo "suspend|reboot|shutdown|logout" | rofi -show -dmenu -sep "|" -p Power -theme power -font "roboto 24")

if [ "$res" = "suspend" ]; then
    sudo s2ram
fi
if [ "$res" = "reboot" ] ; then
    sudo reboot
fi
if [ "$res" = "shutdown" ]; then
    sudo poweroff
fi
if [ "$res" = "logout" ] ; then
    herbstclient quit
fi
exit 0
