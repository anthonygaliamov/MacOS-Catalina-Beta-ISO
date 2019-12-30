#!/bin/bash

hdiutil create -o /tmp/catalina.cdr -size 9g -layout SPUD -fs HFS+J
hdiutil attach /tmp/catalina.cdr.dmg -noverify -mountpoint /Volumes/install_catalina
echo -e "\nPlease enter your password below to create the install media. \nType (Y) and press return when asked to erase the volume. \n"
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/install_catalina
mv /tmp/catalina.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ Catalina
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/catalina.iso
mv ~/Desktop/catalina.iso.cdr ~/Desktop/catalina.iso
rm ~/Desktop/InstallSystem.dmg

# This shell assums that you have Catalina downloaded and available in the Applications folder.

# Once run, this will create an ISO on your desktop.
