#!/bin/bash -
#echo "arg.1 dev/sdX"
#echo "insert key"
#read key
#cryptsetup open $1 --key-file $key azure &&
sudo mount -t btrfs -o noatime,space_cache=v2,autodefrag,compress=zstd:12 /dev/disk/by-label/vertoshi /mnt/vertoshi
echo -e '!WARNING!\ndevice not encrypted!'
