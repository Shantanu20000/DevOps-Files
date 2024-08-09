#!/bin/bash

arithmetic_operations() {
    local a=$1
    local b=$2

    addition=$(echo "$a + $b" | bc)
    subtraction=$(echo "$a - $b" | bc)
    multiplication=$(echo "$a * $b" | bc)

    if [ "$b" -ne 0 ]; then
        division=$(echo "scale=2; $a / $b" | bc)
    else
        division="undefined (division by zero)"
    fi

    echo "Addition: $a + $b = $addition"
    echo "Subtraction: $a - $b = $subtraction"
    echo "Multiplication: $a * $b = $multiplication"
    echo "Division: $a / $b = $division"
}

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Check if inputs are numeric
if ! [[ "$num1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values."
    exit 1
fi

# Perform operations
arithmetic_operations "$num1" "$num2"
