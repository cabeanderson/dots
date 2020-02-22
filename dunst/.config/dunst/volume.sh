#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get -c 0 Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get -c 0 Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    bar=$(seq -s "━" $(($volume / 5)) | sed 's/[0-9]//g')
#    bar=$(seq -s "─" $(($volume / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -r 1221  "Volume    $bar"
}

case $1 in
    up)
	# Set the volume on (if it was muted)
	amixer set -c 0 Master on > /dev/null
	amixer set -c 0 Master 5%+ > /dev/null
	send_notification
	;;
    down)
	amixer set -c 0 Master on > /dev/null
	amixer set -c 0 Master 5%- > /dev/null
	send_notification
	;;
    mute)
    	# Toggle mute
	amixer set Master toggle > /dev/null
	if is_mute ; then
	    dunstify -r 1221 "   Mute"
	else
	    send_notification
	fi
	;;
esac
