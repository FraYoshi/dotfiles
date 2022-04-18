#!/bin/bash -
#latency='256/48000'
latency='2048/48000'
#software=(qjackctl)
latency2='2048/48000'
software2=(calfjackhost audacious)

## qjacktl init ##
PIPEWIRE_LATENCY=$latency pw-jack qjackctl &
sleep 1

## loading the mixers ##
PIPEWIRE_LATENCY=$latency pw-jack jack_mixer -c ~/.config/jack_mixer/JACK-mixer-generic.xml &
sleep 2
PIPEWIRE_LATENCY=$latency pw-jack jack_mixer -c ~/.config/jack_mixer/JACK-mixer-generic-mon.xml jack_mixer-mon &
sleep 2
## lower latency ##
#for sw in ${software[@]}; do
#	PIPEWIRE_LATENCY=$latency pw-jack $sw &
#done &

## higher latency ##
for sw in ${software2[@]}; do
	PIPEWIRE_LATENCY=$latency2 pw-jack $sw &
done &
