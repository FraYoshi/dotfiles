#!/bin/bash -

source ~/bin/rclone/variables/transito.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
