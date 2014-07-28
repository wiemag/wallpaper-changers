#!/bin/bash -
#===============================================================================
#
#          FILE: gnome-wp-now.sh
#         USAGE: ./gnome-wp-now.sh
#   DESCRIPTION: The script changes the current wallpaper into a random one.
#
#        AUTHOR: Wiesław Magusiak
#       CREATED: 04.05.2014 14:01
#      REVISION:  ---
#===============================================================================

WP=${HOME}/Obrazy/wp 						# Folder containing wallpapers
WPF=${1-$WP}
[[ -d "$WPF" ]] || exit
gsettings set org.gnome.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
