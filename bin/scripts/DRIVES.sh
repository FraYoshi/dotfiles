#!/bin/sh -
for file in ~/file-list/*; do
    qdirstat -c $file &
done
