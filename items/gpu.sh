#!/bin/bash

sketchybar --add item wifi right \
           --set wifi icon="" \
                    icon.color=$SYSTEM_STATS \
                    label.color=$SYSTEM_STATS \
                    icon.padding_left=10 \
                    icon.padding_right=10 \
                    background.color=$SYSTEM_MONITORING_COLOR \
                    background.corner_radius=5 \
                    background.height=24 \
                    script="$PLUGIN_DIR/wifi.sh" \
           --subscribe wifi system_woke 