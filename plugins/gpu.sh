#!/bin/bash

# Get GPU usage using powermetrics
GPU_USAGE=$(sudo powermetrics -s gpu_power -n 1 | grep "GPU active residency" | awk '{print $4}' | sed 's/%//')

# If we didn't get a value, set it to 0
if [ -z "$GPU_USAGE" ]; then
    GPU_USAGE="0"
fi

# Update sketchybar
sketchybar --set gpu label="$GPU_USAGE%" 