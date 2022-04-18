#!/bin/bash -
sudo systemctl start systemd-cryptsetup@MAX4.service
sudo mount /dev/mapper/MAX4
echo 'end of MAX4 mount process'
