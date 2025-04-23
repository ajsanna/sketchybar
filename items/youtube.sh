#!/bin/bash

# Youtube Button for opening Youtube in Chrome
sketchybar --add item youtube left \
           --set youtube icon="" \
                       icon.color=$ACCENT_COLOR \
                       icon.padding_left=10 \
                       icon.padding_right=0 \
                       background.color=$ITEM_BG_COLOR \
                       background.corner_radius=5 \
                       background.height=30 \
                       click_script="open -a 'Google Chrome' 'https://youtube.com'" 