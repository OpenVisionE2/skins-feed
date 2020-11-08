#!/bin/sh

mkdir -p ts
cd ts
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-HD/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-FHD/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/TS-Skins/
rename 'y/A-Z/a-z/' *.ipk
mv -f *.ipk ../
cd ..
ls -vr *.ipk | awk -F- '$1 == name{system ("rm \""$0"\"")}{name=$1}'
