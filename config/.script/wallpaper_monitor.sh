#!/bin/bash

# choisi le fond d'écran en fonction du nombre d'écrans

NBMONITOR=$(xrandr | grep -i " connected" | wc -l)

if [ $NBMONITOR == 2 ] 

	then feh -z --bg-scale --no-xinerama "$HOME/Images/Wallpaper_two_monitors/"

	else 

feh -z --bg-fill "$HOME/Images/Wallpaper_one_monitor"
fi
