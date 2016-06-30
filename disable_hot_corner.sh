#!/bin/bash

# Detect if any hot corner values are set to Disable Screen Saver - integer value "6"
# If yes, change to default value


bl_corner=`defaults read com.apple.dock wvous-bl-corner`
tl_corner=`defaults read com.apple.dock wvous-tl-corner`
tr_corner=`defaults read com.apple.dock wvous-tr-corner`
br_corner=`defaults read com.apple.dock wvous-br-corner`

if [ "$bl_corner" = "6" ]
then
echo "Disabling hot corner"
defaults write com.apple.dock wvous-bl-corner 1
fi

if [ "$tl_corner" = "6" ]
then
echo "Disabling hot corner"
defaults write com.apple.dock wvous-tl-corner 1
fi

if [ "$tr_corner" = "6" ]
then
echo "Disabling hot corner"
defaults write com.apple.dock wvous-tr-corner 1
fi

if [ "$br_corner" = "6" ]
then
echo "Disabling hot corner"
defaults write com.apple.dock wvous-br-corner 1
fi