#!/bin/bash -

source ~/bin/rclone/variables/ima.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
