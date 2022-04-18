#!/bin/sh -
sync && sudo umount /mnt/hotraid/TW2 && \
sudo systemctl stop systemd-cryptsetup@tw225.service && \
sudo systemctl stop systemd-cryptsetup@tw235.service && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
