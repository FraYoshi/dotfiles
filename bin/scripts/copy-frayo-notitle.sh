#!/bin/bash -

# loading artist's variables
. ~/frayoshi-vars.sh

# False for public domain
terms="True"
year=
license="All Rights Reserved"
licenseLonger="$license"
contributors=""

## arguments list ##
# 1. file to add metadata to;
# 2. title of the opera;
# 3. (optional) description of the opera;

# colorizations
RED='\033[0;31m'
NC='\033[0m' # No Color

# metadata assignment
exiftool -overwrite_original -P \
	 -xmp:Marked="$terms" \
	 -xmp:UsageTerms="$licenseLonger" \
	 -xmp:Owner="$artist" \
	 -XMP-dc:Rights="$licenseLonger" \
	 -XMP-dc:Creator="$creator" \
	 -XMP-dc:Contributor="$contributors" \
	 -xmp:LicensorEmail="$artistEmail" \
	 -xmp:LicensorURL="$artistURL" \
	 -xmp:CopyrightOwnerID="$artistISNI" \
	 "$1"

# references https://wiki.creativecommons.org/wiki/Marking_Works_Technical
# XMP tags: https://exiftool.org/TagNames/XMP.html
