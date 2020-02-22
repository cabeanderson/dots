#!/bin/bash

# Launch MPD with VIS
hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}

#hc use Full

launch_vis() {
	hc spawn st vis
#	hc rule --fullscreen=on
#	hc rule --focus=on
#	hc fullscreen
}

launch_mpd() {
	hc spawn st ncmpcpp
#	hc rule --fullscreen=on
}

make_fullscreen() {
#	hc rule --fullscreen=off
}

launch_vis
launch_mpd
make_fullscreen

#hc use Media
#hc spawn st vis
#make_fullscreen
#hc spawn st ncmpcpp
#make_fullscreen


