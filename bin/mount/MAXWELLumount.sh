#!/bin/bash -
sync && \
sudo systemctl stop systemd-cryptsetup@maxwell.service && \
sudo umount /dev/mapper/maxwell && \
echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
