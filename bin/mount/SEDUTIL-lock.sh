#!/bin/sh -
echo "insert password: "
read -r -s pass
echo "1st argument is sdX"
sudo sedutil-cli --setmbrdone off $pass /dev/$1
sudo sedutil-cli --enableLockingRange 0 $pass /dev/$1
echo "end of script. test result:"
wait 1 && \
echo "$(lsblk /dev/$1)"

# more info: https://www.dell.com/support/kbdoc/it-it/000132842/encrypting-your-ubuntu-operating-system-using-a-sed-hard-drive
