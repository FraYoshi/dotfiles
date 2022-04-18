#!/bin/sh -
sudo systemctl start systemd-cryptsetup@hs125.service
sudo systemctl start systemd-cryptsetup@hs135.service
sudo mount /dev/mapper/hs135
echo "end of hotraid mount"
