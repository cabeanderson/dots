#!/bin/bash
# -------------------------------------------------------
# Dunst display for system info
# -------------------------------------------------------

# --------------- getting displayable info --------------

function show_tags {
	herbstclient tag_status
}

function get_date {
	date +"%A, %b %d, %l:%M %P"
}

function show_mpd {
	mpc current
}

function cpu_mon {
#	cat /sys/class/thermal/thermal_zone*/temp | sed 's/\(.\)..$/.\1°C/' | head -1
	sensors | grep Package | awk '{print $4}' | cut -c 2-7
}


#function hd_rused {
#	df -h | grep /dev/sda5 | cut -c 18-20
#}
#function hd_hused {
#	df -h | grep /dev/sda6 | cut -c 18-20
#}
function hd_rpercent {
	df -h | grep /dev/sda5 | cut -c 35-38
#	df -h | grep /dev/sda5
}
function hd_hpercent {
	df -h | grep /dev/sda6 | cut -c 35-38
#	df -h | grep /dev/sda6
}

# --------------- file locations ------------------------
# --------------- script functions ----------------------

function send_notification {
	date=`get_date`
	tag=`show_tags`
	song=`show_mpd`
	cpu=`cpu_mon`
	hddroot=`hd_rused`
	hddhome=`hd_hused`
	hddrpercent=`hd_rpercent`
	hddhpercent=`hd_hpercent`
	dunstify -r 1222 "$(echo -e "$date\n$tag\n\n$cpu\n\nRoot           $hddrpercent Free\nHome         $hddhpercent Free")"
}

send_notification
