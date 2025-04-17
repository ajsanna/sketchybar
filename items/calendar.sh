#!/bin/bash

sketchybar --add item calendar right \
            --set calendar background.color=$ACCENT_COLOR \
           --set calendar label.color=$BAR_COLOR \
           --set calendar icon.color=$BAR_COLOR \
           --set calendar icon=􀧞  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh"