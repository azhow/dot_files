#!/bin/bash

TERMINAL_CLASS="com.mitchellh.ghostty"   # or "Alacritty", "kitty", etc.
TERMINAL_CMD="ghostty"     # or your terminal launch command

if swaymsg -t get_tree | grep -q "\"app_id\": \"$TERMINAL_CLASS\""; then
    swaymsg "[app_id=\"$TERMINAL_CLASS\"] focus"
else
    exec "$TERMINAL_CMD"
fi
