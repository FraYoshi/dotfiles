#!/bin/bash -

source ~/bin/rclone/variables/luny-service.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
