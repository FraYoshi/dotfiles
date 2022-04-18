#!/bin/bash -
source ~/bin/rclone/variables/mount-SD.sh
set -a
sharedDrive=remote-only
driveID=0ALZSMOgrV61sUk9PVA
localDir=$localDir/$sharedDrive
cacheDir=$cacheDir/$sharedDrive
set +a
