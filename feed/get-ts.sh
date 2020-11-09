#!/bin/sh

mkdir -p ts
cd ts
mkdir -p skinshd
cd skinshd
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-HD/
mv -f *.ipk ../
cd ..
mkdir -p skinsfhd
cd skinsfhd
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Skins-FHD/
mv -f *.ipk ../
cd ..
mkdir -p skins
cd skins
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/TS-Skins/
mv -f *.ipk ../
cd ..
mv -f *.ipk ../
cd ..
rm -rf ts
