#!/bin/bash -

source ~/bin/rclone/variables/mamma.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
