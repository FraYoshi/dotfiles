#!/bin/bash -

source ~/bin/rclone/variables/allegati.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
