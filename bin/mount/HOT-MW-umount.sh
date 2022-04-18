#!/bin/sh -
sync && sudo umount /mnt/hotraid/MW && \
sudo systemctl stop systemd-cryptsetup@mw25.service && \
sudo systemctl stop systemd-cryptsetup@mw35.service && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
