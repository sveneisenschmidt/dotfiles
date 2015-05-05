#!/bin/bash

STATUS=$(defaults read com.apple.dock expose-animation-duration 2> /dev/null)
STATUS=${STATUS:=1}

if [ $STATUS -eq 0 ]; then
    echo "Animationen bereits deaktiviert"
else
    defaults write com.apple.dock expose-animation-duration -float 0
    killall Dock
    echo "Animationen deaktiviert"
fi
