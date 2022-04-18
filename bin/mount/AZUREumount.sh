#!/bin/bash -
sync && sudo umount /mnt/azure && \
    sudo systemctl stop systemd-cryptsetup@azure.service && \
    echo "unmounting completed check ls output:"
echo " "
ls /dev/mapper/
