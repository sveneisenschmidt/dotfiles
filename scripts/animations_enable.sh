#!/bin/bash

STATUS=$(defaults read com.apple.dock expose-animation-duration 2> /dev/null)
STATUS=${STATUS:=1}

if [ $STATUS -eq 0 ]; then
    defaults delete com.apple.dock expose-animation-duration
    killall Dock
    echo "Animationen aktiviert"
else
    echo "Animationen bereits aktiviert"
fi
