#!/bin/bash

# Detects if IR Receiver is present on system bus, and if detected, disables the receiver

IRPortDetect=`system_profiler SPUSBDataType | egrep "IR Receiver" -c`
if [ "$IRPortDetect" = "0" ]
then
echo "No IR port detected"
exit 0
else
echo "IR port detected - disabling"
defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false
fi