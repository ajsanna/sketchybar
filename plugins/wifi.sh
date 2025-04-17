#!/bin/bash

# Get WiFi information using system_profiler
WIFI_INFO=$(system_profiler SPAirPortDataType)

# Extract the signal strength in dBm
SIGNAL=$(echo "$WIFI_INFO" | grep "Signal / Noise" | head -n 1 | awk -F"/" '{print $1}' | awk '{print $NF}')

if [ -n "$SIGNAL" ]; then
    # Convert dBm to percentage
    # Signal strength usually ranges from -100 dBm (0%) to -50 dBm (100%)
    SIGNAL=${SIGNAL%dBm}  # Remove 'dBm' suffix
    PERCENTAGE=$(( 2 * (100 + SIGNAL) ))
    
    # Ensure percentage stays within 0-100 range
    if [ $PERCENTAGE -lt 0 ]; then
        PERCENTAGE=0
    elif [ $PERCENTAGE -gt 100 ]; then
        PERCENTAGE=100
    fi
    
    sketchybar --set $NAME label="$PERCENTAGE%"
else
    # Check if WiFi is enabled
    if echo "$WIFI_INFO" | grep -q "Status: Connected"; then
        sketchybar --set $NAME label="No Signal"
    else
        sketchybar --set $NAME label="Off"
    fi
fi 