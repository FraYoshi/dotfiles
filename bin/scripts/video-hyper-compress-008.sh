#!/bin/sh -
# 0.004 for 25fps
# 0.002 for 50 fps or 25fps long records
# 0.001 for 50 fps long records
#scale=256x144
scale=426x240 # the best compromise at crf 40
ffmpeg -an -i $1 -s $scale -c:v libx265 -crf 40 -preset placebo -filter:v "setpts=0.0088888888*PTS" $(basename "$1" | sed 's/\(.*\)\..*/\1/')-ready.mp4
