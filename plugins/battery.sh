#!/bin/sh

# Battery percentage and time remaining
battery_info=$(pmset -g batt)

# Extract percentage
percent=$(echo "$battery_info" | grep -Eo '[0-9]+%' | tr -d '%')

# Extract battery state
state=$(echo "$battery_info" | grep -Eo 'charged|charging|discharging')

# Check if "(no estimate)" is present
if echo "$battery_info" | grep -q "(no estimate)"; then
  time_remaining="--:--"
else
  # Try to extract time (e.g. 2:31)
  time_remaining=$(echo "$battery_info" | grep -Eo '[0-9]+:[0-9]+')
  
  # Fallback if not found (just in case)
  if [[ -z "$time_remaining" ]]; then
    time_remaining="--:--"
  fi
fi

# Optional icon logic
if [[ "$state" == "discharging" ]]; then
  icon="🔋"
  icon_color="0xffff5555"
elif [[ "$state" == "charging" ]]; then
  icon="⚡️"
  icon_color="0xff55ff55"
else
  icon="🔌"
  icon_color="0xffaaaaaa"
fi


PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
    9[0-9]|100) ICON="􀛨"
  ;;
  [6-8][0-9]) ICON="􀺸"
  ;;
  [3-5][0-9]) ICON="􀺶"
  ;;
  [1-2][0-9]) ICON="􀛩"
  ;;
  *) ICON="􀛪"
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="􀢋"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}% 󱧥 ~ ${time_remaining}"
