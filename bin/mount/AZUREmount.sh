#!/bin/bash -
sudo systemctl start systemd-cryptsetup@azure.service
sudo mount /dev/mapper/azure
echo 'end of azure mount process'
