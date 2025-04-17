#!/bin/bash

sketchybar --add item battery right \
           --set battery background.color=$ACCENT_COLOR \
           --set battery label.color=$BAR_COLOR \
           --set battery icon.color=$BAR_COLOR \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change
           