#!/bin/bash

# File to store the current state
STATE_FILE="/tmp/workspace_state"

# Check if the state file exists
if [ ! -f "$STATE_FILE" ]; then
  echo "current_workspace" > "$STATE_FILE"
fi

# Read the current state
STATE=$(cat "$STATE_FILE")

case "$1" in
  "swipe_up")
    if [ "$STATE" == "current_workspace" ]; then
      # Switch to workspace overview
      xdotool key super
      echo "workspace_overview" > "$STATE_FILE"
    elif [ "$STATE" == "workspace_overview" ]; then
      # Show applications
      xdotool key super+a
    fi
    ;;
  "swipe_down")
    if [ "$STATE" == "workspace_overview" ]; then
      # Return to current workspace
      xdotool key super
      echo "current_workspace" > "$STATE_FILE"
    elif [ "$STATE" == "current_workspace" ]; then
      # Minimize current window
      xdotool key super+h
    fi
    ;;
  "swipe_left")
    # Move to the right workspace
    xdotool key ctrl+alt+right
    ;;
  "swipe_right")
    # Move to the left workspace
    xdotool key ctrl+alt+left
    ;;
esac

