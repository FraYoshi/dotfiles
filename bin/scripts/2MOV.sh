#!/bin/sh -
ffmpeg -i "$1" -c copy "${1%.*}.mov" && \
touch -r "$1" "${1%.*}.mov"
