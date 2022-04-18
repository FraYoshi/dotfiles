#!/bin/bash -
echo "arg.1 sdx"
echo "insert key"
read key
sudo cryptsetup open /dev/disk/by-uuid/bb100a39-801f-4632-970a-9836063270f9 MAX4 --key-file $key &&
sudo mount -t btrfs -o compress=zstd:12,space_cache=v2,noatime,autodefrag,subvol=snaps /dev/mapper/MAX4 /mnt/snaps/MAX4
echo -e 'MAX4 snaps dec-mounted'
