#!/bin/bash -

source ~/bin/rclone/variables/life-shots.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
