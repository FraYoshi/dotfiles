#!/bin/bash
umount /mnt/bay-35 && \
cryptsetup close bay-35
echo "bay-35 un-mounted."
