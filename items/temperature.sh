#!/bin/bash

sketchybar --add item temperature right \
           --set temperature icon="" \
                           icon.padding_left=10 \
                           icon.padding_right=10 \
                           background.color=$ITEM_BG_COLOR \
                           background.corner_radius=5 \
                           background.height=24 \
                           script="$PLUGIN_DIR/temperature.sh" \
           --subscribe temperature system_woke 