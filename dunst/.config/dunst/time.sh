#!/bin/bash

function get_date {
	date +"%A, %b %d, %l:%M %P"
}

function show_mpd {
	mpc current
}

#function hd_space {
#}
function cpu_mon {
	paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/' | grep acpitz
#	sensors | grep temp1
}
function send_notification {
	date=`get_date`
	song=`show_mpd`
	cpu=`cpu_mon`
	dunstify -r 1222 "$date<br>$song<br>$cpu"
}

send_notification
