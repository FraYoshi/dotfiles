#!/bin/bash -
#list the active sinks
pacmd list-sinks | grep -e 'index:' -e device.string -e 'name:'
pacmd set-default-sink "jack_out"
#list the active sources
pacmd list-sources | grep -e 'index:' -e device.string -e 'name:'
pacmd set-default-source "jack_in"
## create a sink for galva music visualizer
## info https://unix.stackexchange.com/questions/174379/how-can-i-create-a-virtual-output-in-pulseaudio
# add a sink
pacmd load-module module-null-sink sink_name=MySink
pacmd update-sink-proplist MySink device.description=MySink
# create loopback
pacmd load-module module-loopback sink=MySink
