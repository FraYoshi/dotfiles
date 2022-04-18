#!/bin/bash -
echo "arg.1 sdx"
echo "insert key"
read key
sudo cryptsetup open /dev/disk/by-uuid/9e24d8d1-ed87-44aa-815b-cc7a11501307 blacksea --key-file $key
sudo mount -t btrfs -o noatime,space_cache=v2,autodefrag,compress=zstd:12 /dev/mapper/blacksea /mnt/blacksea && \
echo "blacksea mounted."
