#!/bin/bash -

source ~/bin/rclone/variables/luny-service.sh
mapfile -t <~/bin/rclone/variables/mount-options

## shared drive mount
rclone mount --drive-root-folder-id $driveID \
       "${MAPFILE[@]}" \
       --cache-dir $cacheDir \
       gd:$remoteDir $localDir & echo "$sharedDrive mounting initiated at $localDir"