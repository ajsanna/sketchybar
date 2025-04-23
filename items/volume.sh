#!/bin/bash

# Volume app displaying current volume level
sketchybar --add item volume right \
            --set volume background.color=$ACCENT_COLOR \
           --set volume label.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set volume icon.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set volume script="$PLUGIN_DIR/volume.sh" \
           --subscribe volume volume_change \