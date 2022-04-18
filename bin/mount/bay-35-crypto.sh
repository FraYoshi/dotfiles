#!/bin/bash -
echo "arg.1 sdx"
echo "insert key"
read key
cryptsetup open /dev/disk/by-path/pci-0000:01:00.1-ata-3 bay-35 --key-file $key
mount -t btrfs -o autodefrag,noatime,space_cache,compress=zstd:12 /dev/mapper/bay-35 /mnt/bay-35 && \
echo "bay-35 mounted."
