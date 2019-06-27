#!/bin/bash

hdiutil create -o /tmp/mojave.cdr -size 6g -layout SPUD -fs HFS+J
hdiutil attach /tmp/mojave.cdr.dmg -noverify -mountpoint /Volumes/install_mojave
sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/install_mojave
mv /tmp/mojave.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ Mojave
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/mojave.iso
mv ~/Desktop/mojave.iso.cdr ~/Desktop/mojave.iso
rm ~/Desktop/InstallSystem.dmg

# This shell assums that you have Mojave downloaded and available in the Applications folder.
# If not, you can download it for free from the Apple App Store.

# Once run, this will create an ISO on your desktop.