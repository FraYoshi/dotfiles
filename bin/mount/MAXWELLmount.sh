#!/bin/bash -
sudo systemctl start systemd-cryptsetup@maxwell.service
sudo mount /dev/mapper/maxwell
echo 'end of MAX4 mount process'
