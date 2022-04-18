#!/bin/sh -
sync && sudo umount /mnt/hotraid/MT3 && \
sudo systemctl stop systemd-cryptsetup@mt325.service && \
sudo systemctl stop systemd-cryptsetup@mt325x.service && \
sudo systemctl stop systemd-cryptsetup@mt335.service && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
