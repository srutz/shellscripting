#!/bin/bash

#!/bin/bash
(
    for ((i = 0 ; i <= 100 ; i+=2)); do
        echo $i
        sleep 0.1
    done
) | dialog --gauge "Bitte warten Sie" 6 60 0
clear

