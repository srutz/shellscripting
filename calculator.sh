#!/bin/bash

# Simple Calculator Script

# Function to display the menu
show_menu() {
    echo "Simple Calculator"
    echo "------------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "------------------"
    echo -n "Enter your choice [1-5]: "
}

# Function to read the user's numbers
read_numbers() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
}

# Main loop
while true; do
    show_menu
    read choice
    
    case $choice in
        1)  # Addition
            read_numbers
            result=$(echo "$num1 + $num2" | bc)
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)  # Subtraction
            read_numbers
            result=$(echo "$num1 - $num2" | bc)
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)  # Multiplication
            read_numbers
            result=$(echo "$num1 * $num2" | bc)
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)  # Division
            read_numbers
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Result: $num1 / $num2 = $result"
            fi
            ;;
        5)  # Exit
            echo "Exiting calculator..."
            exit 0
            ;;
        *)
            echo "Invalid choice, please select a valid option."
            ;;
    esac
    echo
done


