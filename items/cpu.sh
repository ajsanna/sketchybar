#!/bin/bash

sketchybar --add item cpu right \
           --set cpu background.color=$SYSTEM_MONITORING_COLOR  \
           --set cpu label.color=$SYSTEM_STATS \
           --set cpu icon.color=$SYSTEM_STATS \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      script="$PLUGIN_DIR/cpu.sh"