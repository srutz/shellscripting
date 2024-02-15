#!/bin/bash
TMP=$(mktemp)
dialog --title "Input Box" --inputbox "What is your name?" 8 40 2>"$TMP"
NAME=$(cat "$TMP")
clear
echo your name is $NAME

