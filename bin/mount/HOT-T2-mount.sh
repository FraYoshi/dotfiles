#!/bin/sh -
sudo systemctl start systemd-cryptsetup@t225.service
sudo systemctl start systemd-cryptsetup@t235.service
sudo mount /dev/mapper/t235
echo "end of hotraid mount"
