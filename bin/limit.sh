#!/bin/sh -
echo "1 is percentage | 2 is pid"
sudo cpulimit -l $1 -vi -p $2
