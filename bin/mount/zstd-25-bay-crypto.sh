#!/bin/bash -
echo "arg.1 sdx"
echo "insert key"
read key
#sudo cryptsetup open /dev/disk/by-path/pci-0000:02:00.1-ata-8 25-bay --key-file $key &&
sudo cryptsetup open /dev/$1 25-bay --key-file $key &&
sudo mount -t btrfs -o noatime,space_cache=v2,autodefrag,compress=zstd:12 /dev/mapper/25-bay /mnt/25-bay &&
echo "zstd 25-bay mounted."
