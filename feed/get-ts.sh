#!/bin/sh

mkdir -p ts
cd ts
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-HD/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-FHD/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/TS-Skins/
mv -f *.ipk ../
cd ..
rm -rf ts
