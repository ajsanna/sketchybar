#!/bin/bash

# Messages Button for opening Messages in Chrome
sketchybar --add item messages left \
           --set messages icon="" \
                       icon.color=$ACCENT_COLOR \
                       icon.padding_left=10 \
                       icon.padding_right=0 \
                       background.color=$ITEM_BG_COLOR \
                       background.corner_radius=5 \
                       background.height=30 \
                       click_script="open -a 'Messages'" 