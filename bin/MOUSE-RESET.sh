#!/bin/sh
my_mouse_id=$(xinput | grep "Logitech M705" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 8 9 10

## ergo mouse
my_ergomouse_id=$(xinput | grep -F "MOSART Semi. 2.4G Wireless Mouse" | grep -Fiv "control" | sed 's/
^.*id=\([0-9]*\)[ \t].*$/\1/')
[ $my_ergomouse_id ] && xinput set-button-map $my_ergomouse_id 1 2 3 4 5 6 7 2 2 10
