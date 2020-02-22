#!/bin/sh

# Script: gta5fix.sh
#
# Information:
# You may need to change 'wmicPath' to match your Steam's GTA 5 Proton prefix path.

wmicPath="$HOME/.steam/steam/steamapps/compatdata/271590/pfx/drive_c/windows/system32/wbem"

mv "$wmicPath"/wmic.exe "$wmicPath"/wmic.exe_bak
steam steam://rungameid/271590 &

while :; do
    sleep 1

    if pidof GTA5.exe; then
        sleep 2
        mv "$wmicPath"/wmic.exe_bak "$wmicPath"/wmic.exe
        exit
    fi
done
