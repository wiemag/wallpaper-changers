#!/bin/bash -
#===============================================================================
#          FILE: wp-changer.sh
#         USAGE: ./wp-changer.sh
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#        AUTHOR: Wiesław Magusiak (wm/wiemag)
#       CREATED: 06.05.2014 09:39
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

WP=/usr/local/share/wp 						# Folder containing wallpapers
WPF=${1-$WP}
[[ -d "$WPF" ]] || exit

if [[ -n $(/usr/bin/ps aux|/usr/bin/awk '/ cinnamon-session/ && !/awk/ {print $0}') ]]; then
	DE="cinn"
	gsettings set org.cinnamon.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
elif [[ -n $(ps aux|awk '/ gnome-session/ && !/awk/ {print $0}') ]]; then
	DE="gnom"
	gsettings set org.gnome.desktop.background picture-uri file://$(ls ${WPF}/*jpg ${WPF}/*png 2>/dev/null|shuf -n1)
elif [[ -n $(ps aux|awk '/\/usr\/bin\/openbox/ && !/awk/ {print $0}') ]]; then
	DE="open"
	feh -z --bg-scale ${WPF} 2>/dev/null &
else
	DE="unknown"
fi

#sleep $(($RANDOM % 600 + 300))



