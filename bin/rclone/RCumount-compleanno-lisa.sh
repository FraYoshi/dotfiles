#!/bin/bash -

source ~/bin/rclone/variables/compleanno-lisa.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
