#!/bin/bash -
echo "arg.1 sdX"
echo "insert key"
read key
sudo cryptsetup open /dev/$1 --key-file $key jay &&
sudo mount -t btrfs -o noatime,space_cache=v2,autodefrag,compress=zstd:12 /dev/mapper/jay /mnt/jay
