#!/bin/bash -

source ~/bin/rclone/variables/bar.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
