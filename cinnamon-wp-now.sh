#!/bin/bash -
#===============================================================================
#
#          FILE: cinnamon-wp-changer.sh
#         USAGE: ./cinnamon-wp-changer.sh
#   DESCRIPTION: The script changes wallpapers every now and then.
#
#        AUTHOR: Wiesław Magusiak
#       CREATED: 04.05.2014 14:01
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
WP=${HOME}/Obrazy/wp 						# Folder containing wallpapers
WPF=${1-$WP}
[[ -d "$WPF" ]] || exit
gsettings set org.cinnamon.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
