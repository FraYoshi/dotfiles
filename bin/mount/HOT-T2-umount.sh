#!/bin/sh -
sync && sudo umount /mnt/hotraid/T2 && \
sudo systemctl stop systemd-cryptsetup@t225.service && \
sudo systemctl stop systemd-cryptsetup@t235.service && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
