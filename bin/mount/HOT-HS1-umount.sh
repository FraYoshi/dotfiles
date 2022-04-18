#!/bin/sh -
sync && sudo umount /mnt/hotraid/HS1 && \
sudo systemctl stop systemd-cryptsetup@hs125.service && \
sudo systemctl stop systemd-cryptsetup@hs135.service && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
