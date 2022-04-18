#!/bin/bash -

source ~/bin/rclone/variables/unpub.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
