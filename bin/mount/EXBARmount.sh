#!/bin/bash -
sudo mount -t btrfs -o noatime,space_cache=v2,autodefrag,compress=zstd:12 /dev/disk/by-label/ex-bar /mnt/exbar
echo -e '!WARNING!\ndevice not encrypted!'
