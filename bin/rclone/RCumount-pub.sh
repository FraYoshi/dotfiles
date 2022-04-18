#!/bin/bash -

source ~/bin/rclone/variables/pub.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
