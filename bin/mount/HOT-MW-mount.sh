#!/bin/sh -
sudo systemctl start systemd-cryptsetup@mw25.service
sudo systemctl start systemd-cryptsetup@mw35.service
sudo mount /dev/mapper/mw35
echo "end of hotraid mount"
