#!/bin/bash

# Calendar app displaying date, time, and day of the week
sketchybar --add item calendar right \
            --set calendar background.color=$ACCENT_COLOR \
           --set calendar label.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set calendar icon.color=$PRODUCTIVE_APP_TEXT_COLOR \
           --set calendar icon=􀧞  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh"