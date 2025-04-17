#!/bin/bash

# Get CPU temperature (in Celsius)
TEMP=$(osx-cpu-temp | tr -d '°C' | xargs printf "%.1f")
# Debug output
echo "Raw temperature output: $TEMP" > /tmp/temp_debug.log

# Set color based on temperature
if [ -n "$TEMP" ] && [ "$TEMP" != "0" ]; then
    if (( $(echo "$TEMP > 80" | bc -l) )); then
        COLOR="0xffe74c3c"  # Red for very hot
    elif (( $(echo "$TEMP > 70" | bc -l) )); then
        COLOR="0xfff39c12"  # Orange for hot
    elif (( $(echo "$TEMP > 60" | bc -l) )); then
        COLOR="0xfff1c40f"  # Yellow for warm
    else
        COLOR="0xff2ecc71"  # Green for normal
    fi

    # Update sketchybar with temperature and color
    sketchybar --set temperature \
        label="${TEMP}C" \
        label.color=$COLOR \
        icon.color=$COLOR
else
    # If we couldn't get the temperature, show a default value
    sketchybar --set temperature \
        label="N/A" \
        label.color="0xff95a5a6" \
        icon.color="0xff95a5a6"
fi 