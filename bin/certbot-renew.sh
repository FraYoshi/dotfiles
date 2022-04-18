#!/bin/sh -
echo "check with dig _acmechallenge.$1 TXT"
certbot certonly \
	--manual \
	--preferred-challenges=dns \
	--email yoshi@fgobbo.com \
	--agree-tos \
	-d "$1" \
	-d "*.$1"
