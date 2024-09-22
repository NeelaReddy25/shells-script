#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1
    # 1 is not a prime number
    if [ "$num" -le 1 ]; then
        echo "$num is not a prime number."
        return
    fi

    # Check for factors from 2 to the square root of the number
    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not a prime number."
            exit 1
        fi
    done

    # If no factors are found, it's prime
    echo "$num is a prime number."
}

# Read number from user input
read -p "Enter a number: " number

# Call the is_prime function with the user's input
is_prime $number
