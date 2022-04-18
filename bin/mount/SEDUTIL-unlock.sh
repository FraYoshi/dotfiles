#!/bin/sh -
echo "insert password: "
read -r -s pass
echo "1st argument is sdX"
sudo sedutil-cli --disableLockingRange 0 $pass /dev/$1
sudo sedutil-cli --setmbrdone on $pass /dev/$1
echo "end of script. test result:"
wait 1 && \
echo "$(lsblk /dev/$1)"
