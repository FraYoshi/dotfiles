#!/bin/bash -

source ~/bin/rclone/variables/archive.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
