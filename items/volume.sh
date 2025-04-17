#!/bin/bash

sketchybar --add item volume right \
            --set volume background.color=$ACCENT_COLOR \
           --set volume label.color=$BAR_COLOR \
           --set volume icon.color=$BAR_COLOR \
           --set volume script="$PLUGIN_DIR/volume.sh" \
           --subscribe volume volume_change \