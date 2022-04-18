#!/usr/bin/bash
my_mouse_id=$(xinput | grep "Logitech M705" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 2 2 10
