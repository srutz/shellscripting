#!/bin/bash
TMP=$(mktemp)
dialog --checklist "Select options:" 15 40 5 \
1 "Option 1" off \
2 "Option 2" on \
3 "Option 3" off \
4 "Option 4" on \
5 "Option 5" off 2>"$TMP"

CHOICES=$(cat "$TMP")
dialog --title "You selected" --msgbox "$CHOICES" 6 40

clear

