#!/bin/bash -

mapfile -t <$HOME/bin/rclone/variables/mount-options

while read drive; do
    source $HOME/bin/rclone/variables/mount-SD.sh
    source $HOME/bin/rclone/variables/${drive[@]}.sh
    rclone mount --drive-root-folder-id=$driveID \
	   ${MAPFILE[@]} \
	   --cache-dir=$cacheDir \
	   gd:$remoteDir $localDir & echo "$sharedDrive mounting initiated at $localDir"
done < ~/bin/rclone/variables/drives-list

#    echo "options: ${MAPFILE[@]}"
#    echo "ID: $driveID"
#    echo "cache: $cacheDir"
#    echo "drive name: $sharedDrive"
#    echo "remote: $remoteDir"
#    echo "local: $localDir"
