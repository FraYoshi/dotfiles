#!/bin/bash -

source ~/bin/rclone/variables/tests.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
