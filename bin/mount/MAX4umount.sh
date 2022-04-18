#!/bin/bash -
sync && \
sudo systemctl stop systemd-cryptsetup@MAX4.service && \
sudo umount /dev/mapper/MAX4 && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
