#!/bin/bash
#start pi spi
pwds=/boot/config.txt
sudo sed -i 's/dtparam=spi=off//g' $pwds
sudo sed -i 's/dtparam=spi=on//g' $pwds
sudo sed -i '$a dtparam=spi=on' $pwds
#reboot后生效
CurDir=$PWD"/face-detected.desktop"
ExecDir=$PWD"/face-detected.sh"
IconDir=$PWD"/Pyte_Data/icon.png"
sudo sed -i "4c Exec=$ExecDir" $CurDir
sudo sed -i "5c Icon=$IconDir" $CurDir
sudo cp $CurDir /usr/share/applications/face-detected.desktop
cp $CurDir /home/pi/Desktop/face-detected.desktop