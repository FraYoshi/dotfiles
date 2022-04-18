#!/bin/bash -

source ~/bin/rclone/variables/pub.sh
mapfile -t <~/bin/rclone/variables/mount-options

## shared drive mount
rclone mount --drive-root-folder-id $driveID \
       "${MAPFILE[@]}" \
       --cache-dir $cacheDir \
       gd:$remoteDir $localDir & echo "$sharedDrive mounting initiated at $localDir"
