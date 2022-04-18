#!/bin/bash -

mapfile -t <~/bin/rclone/variables/mount-options
export mount=/home/CLOUD/GDrive

rclone mount \
       "${MAPFILE[@]}" \
       --cache-dir /home/frayoshi/.cache/rclone/GDrive \
       GD: $mount & echo "mounted initiated on $mount"
