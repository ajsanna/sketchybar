#!/bin/bash

# Mail Button for opening Mail in Chrome
sketchybar --add item mail left \
           --set mail icon=" MAIL" \
                       icon.color=$PRODUCTIVE_APP_TEXT_COLOR \
                       icon.padding_left=10 \
                       icon.padding_right=0 \
                       background.color=$PRODUCTIVE_APP_BGCOLOR \
                       background.corner_radius=5 \
                       background.height=24 \
                       click_script="open -a 'Google Chrome' 'https://outlook.office365.com/mail/'" 