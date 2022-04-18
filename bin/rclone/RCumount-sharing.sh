#!/bin/bash -

source ~/bin/rclone/variables/sharing.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
