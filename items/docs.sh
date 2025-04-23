#!/bin/bash

# Docs Button for opening Docs in Chrome
sketchybar --add item docs left \
           --set docs icon=" DOCS" \
                       icon.color=$PRODUCTIVE_APP_TEXT_COLOR \
                       icon.padding_left=10 \
                       icon.padding_right=0 \
                       background.color=$PRODUCTIVE_APP_BGCOLOR \
                       background.corner_radius=5 \
                       background.height=24 \
                       click_script="open -a 'Google Chrome' 'https://docs.google.com/'" 