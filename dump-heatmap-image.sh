#!/bin/sh

lockfile="$(basename $0).lock"
if [ -f $lockfile ]; then
    echo "Another process is running"
    exit 1
fi
touch $lockfile

phantomjs a.js && mv heatmap.png "heatmap_$(date +'%Y%m%d_%H:%M:%S').png"

rm -f $lockfile
