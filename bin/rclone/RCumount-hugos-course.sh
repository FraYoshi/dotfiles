#!/bin/bash -

source ~/bin/rclone/variables/hugos-course.sh
fusermount -u $localDir
echo "shared drive $sharedDrive is beign unmounted"
