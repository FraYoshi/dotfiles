#!/bin/bash -

while read drive; do
    source $HOME/bin/rclone/variables/mount-SD.sh
    source $HOME/bin/rclone/variables/$drive.sh
    fusermount -u $localDir & echo "$sharedDrive un-mounting initiated"
done < ~/bin/rclone/variables/drives-list

#    echo "options: ${MAPFILE[@]}"
#    echo "ID: $driveID"
#    echo "cache: $cacheDir"
#    echo "drive name: $sharedDrive"
#    echo "remote: $remoteDir"
#    echo "local: $localDir"
