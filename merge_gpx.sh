#!/bin/bash

cd ./GPX
ff_all="all_tracks.gpx"
rm -f $ff_all
ff=""
for f in *.gpx
do 
    ff="$ff -f $f -x simplify,count=500"
done
gpsbabel -i gpx $ff -o gpx -F "$ff_all"
