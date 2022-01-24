#!/usr/bin/env bash
DIR="~/.config/conky"

conky -c $DIR/conkybatteryrc.conf
conky -c $DIR/conky_ascii_cat_rc.conf
conky -c $DIR/conky_Time_Weather_rc.conf
conky -c $DIR/conky_Memory_rc.conf
conky -c $DIR/conky_file_systems_rc.conf
conky -c $DIR/conky_Network_rc.conf
