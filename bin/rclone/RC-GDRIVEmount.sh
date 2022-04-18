#!/bin/bash -
# echo -e "inserire folder google"
# read folder
## Jungle mount
rclone mount \
       --vfs-read-chunk-size 5M --vfs-read-chunk-size-limit 20M --vfs-cache-mode full \
       --dir-cache-time 24h0m0s --cache-dir /home/frayoshi/.cache/rclone/GDrive \
       GD: /home/CLOUD/GDrive & echo "mounting initiated"
