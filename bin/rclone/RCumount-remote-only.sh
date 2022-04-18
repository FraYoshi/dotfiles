#!/bin/bash -

source ~/bin/rclone/variables/remote-only.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
