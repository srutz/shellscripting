#!/bin/bash
TMP=$(mktemp)
dialog --title "Calendar" --calendar "Choose a date:" 0 0 2>"$TMP"
date=$(cat "$TMP")
dialog --title "Date Selected" --msgbox "You selected:\n$date" 6 40
clear
