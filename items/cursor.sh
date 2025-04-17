#!/bin/bash

# Cursor item
sketchybar --add item cursor left \
           --set cursor icon="" \
                       icon.color=$ACCENT_COLOR \
                       icon.padding_left=10 \
                       icon.padding_right=10 \
                       background.color=$ITEM_BG_COLOR \
                       background.corner_radius=5 \
                       background.height=24 \
                       click_script="$PLUGIN_DIR/cursor.sh" 