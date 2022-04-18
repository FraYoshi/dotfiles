#!/bin/sh -
sudo systemctl start systemd-cryptsetup@tw225.service
sudo systemctl start systemd-cryptsetup@tw235.service
sudo mount /dev/mapper/tw235
echo "end of hotraid mount"
