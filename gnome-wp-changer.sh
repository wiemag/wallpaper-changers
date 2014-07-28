#!/bin/bash -
#===============================================================================
#
#          FILE: gnome-wp-changer.sh
#         USAGE: ./gnome-wp-changer.sh
#   DESCRIPTION: The script changes wallpapers every now and then.
#
#       OPTIONS: ---
#  REQUIREMENTS: Gnome environment installed.
#         NOTES: ---
#        AUTHOR: Wiesław Magusiak
#       CREATED: 43.05.2014 09:01
#      REVISION:  ---
#===============================================================================

WP=${HOME}/Obrazy/wp 						# Folder containing wallpapers
WPF=${1-$WP}
[[ -d "$WPF" ]] || exit
while true; do
	gsettings set org.gnome.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
	sleep $(($RANDOM % 600 + 300))
done
