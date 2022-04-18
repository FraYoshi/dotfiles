#!/bin/sh -
sudo systemctl start systemd-cryptsetup@mt325.service
sudo systemctl start systemd-cryptsetup@mt325x.service
sudo systemctl start systemd-cryptsetup@mt335.service
sudo mount /dev/mapper/mt335
echo "end of hotraid mount"
