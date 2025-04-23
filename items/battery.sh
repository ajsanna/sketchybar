#!/bin/bash

#Battery percentage and time remaining
sketchybar --add item battery_item right \
           --set battery_item background.color=$ACCENT_COLOR \
           --set battery_item label.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set battery_item icon.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set battery_item update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery_item system_woke power_source_change
           