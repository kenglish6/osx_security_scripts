#!/bin/bash

# Disables Bluetooth sharing for the current logged-in user on the current host

hardwareUUID=$(/usr/sbin/system_profiler SPHardwareDataType | grep "Hardware
UUID" | awk -F ": " '{print $2}' | xargs)

currentUser=`ls -l /dev/console | cut -d " " -f4`

/usr/libexec/PlistBuddy -c "Delete :PrefKeyServicesEnabled"  /Users/$currentUser/Library/Preferences/ByHost/com.apple.Bluetooth.$hardwareUUID.plist
/usr/libexec/PlistBuddy -c "Add :PrefKeyServicesEnabled bool false"  /Users/$currentUser/Library/Preferences/ByHost/com.apple.Bluetooth.$hardwareUUID.plist