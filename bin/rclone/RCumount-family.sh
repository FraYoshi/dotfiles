#!/bin/bash -

source ~/bin/rclone/variables/family.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
