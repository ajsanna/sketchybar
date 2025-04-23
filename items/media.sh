#!/bin/bash

# Media app displaying current song, artist, and album
sketchybar --add item media center \
           --set media label.color=$PRODUCTIVE_APP_BGCOLOR \
                       label.max_chars=20 \
                       icon.padding_left=0 \
                       scroll_texts=on \
                       icon=󰓇             \
                       icon.color=$PRODUCTIVE_APP_BGCOLOR   \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change