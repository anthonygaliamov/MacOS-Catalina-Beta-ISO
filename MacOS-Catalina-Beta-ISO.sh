#!/bin/bash

hdiutil create -o /tmp/catalina-beta.cdr -size 7g -layout SPUD -fs HFS+J
hdiutil attach /tmp/catalina-beta.cdr.dmg -noverify -mountpoint /Volumes/install_catalina-beta
echo -e "\nPlease enter your password below to create the install media. \nType (Y) and press return when asked to erase the volume. \n"
sudo /Applications/Install\ macOS\ Catalina\ Beta.app/Contents/Resources/createinstallmedia --volume /Volumes/install_catalina-beta
mv /tmp/catalina-beta.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ Catalina\ Beta
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/catalina-beta.iso
mv ~/Desktop/catalina-beta.iso.cdr ~/Desktop/catalina-beta.iso
rm ~/Desktop/InstallSystem.dmg

# This shell assums that you have Catalina-Beta downloaded and available in the Applications folder.

# Once run, this will create an ISO on your desktop.