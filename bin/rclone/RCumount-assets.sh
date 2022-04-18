#!/bin/bash -

source ~/bin/rclone/variables/assets.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
