#!/bin/bash

dialog --title "Yes/No Box" --yesno "Do you like Bash scripting?" 7 60

response=$?
case $response in
   0) 
	   dialog --title "Response" --msgbox "You love Bash scripting!" 6 40
	   ;;
   1) 
	   dialog --title "Response" --msgbox "You do not love Bash scripting." 6 40
	   ;;
   255) 
	   dialog --title "Response" --msgbox "No response. Exiting." 6 40
	   ;;
esac
clear

