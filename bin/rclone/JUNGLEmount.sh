#!/bin/bash -
# echo -e "inserire folder google"
# read folder
## Jungle mount
rclone mount --drive-root-folder-id 0ALuGQlcAKq2WUk9PVA \
       --vfs-read-chunk-size 5M --vfs-read-chunk-size-limit 20M --vfs-cache-mode full \
       --dir-cache-time 24h0m0s --cache-dir /home/frayoshi/.cache/rclone/jungle-cache \
       gd: /mnt/digital-jungle & echo "mounting initiated"
# encfs /mnt/digital-jungle /n/home/media/jungle-mount
read -r -s -p "input password: " pass
echo "$pass" | encfs -S /mnt/digital-jungle /n/home/media/jungle-mount
