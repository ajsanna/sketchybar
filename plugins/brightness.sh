#!/bin/bash

# Get current brightness percentage
BRIGHTNESS=$(pmset -g power | grep "display-brightness" | awk '{print int($2 * 100)}')

# If we couldn't get the value, set a default
if [ -z "$BRIGHTNESS" ]; then
    BRIGHTNESS=50
fi

# Update sketchybar
sketchybar --set brightness label="$BRIGHTNESS%" 