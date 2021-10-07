#!/bin/sh
echo "le path que vous voulez est: "
read path
cd $path
find -type f -exec md5sum {} + |sort| uniq -w32 -dD | awk '{print $2}'
