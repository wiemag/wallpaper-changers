#!/bin/bash -
#===============================================================================
#
#          FILE: cinnamon-wp-changer.sh
#         USAGE: ./cinnamon-wp-changer.sh
#   DESCRIPTION: The script changes wallpapers every now and then.
#
#       OPTIONS: ---
#  REQUIREMENTS: Cinnamon installed.
#         NOTES: ---
#        AUTHOR: Wiesław Magusiak
#       CREATED: 03.05.2014 14:01
#      REVISION:  ---
#===============================================================================

WP=${HOME}/Obrazy/wp 						# Folder containing wallpapers
WPF=${1-$WP}
[[ -d "$WPF" ]] || exit
while true; do
	gsettings set org.cinnamon.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
	sleep $(($RANDOM % 600 + 300))
done
