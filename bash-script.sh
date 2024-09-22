#!/bin/bash

# Read input numbers A and B from the user
read -p "Enter the first number (A): " A
read -p "Enter the second number (B): " B

# Check if B is zero, as division by zero is not allowed
if [ "$B" -eq 0 ]; then
    echo "Division by zero is not allowed. Please enter a non-zero value for B."
    exit 1
fi

# Check if A is divisible by B
if [ $((A % B)) -eq 0 ]; then
    echo "$A is divisible by $B."
else
    echo "$A is not divisible by $B."
fi

# Check if A is not divisible by B
if [ $((A % B)) -ne 0 ]; then
    echo "Also, $A is not divisible by $B."
else
    echo "Also, $A is divisible by $B."
fi
