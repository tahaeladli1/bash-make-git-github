#!/bin/bash

# Guessing Game - Guess the number of files in the current directory

# Function to get the number of files in the current directory
count_files() {
    local file_count=$(ls -1 | wc -l)
    echo $file_count
}

# Function to validate user input
is_number() {
    if [[ $1 =~ ^[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Function to play the guessing game
play_game() {
    local correct_number=$(count_files)
    local guess=-1
    
    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while [[ $guess -ne $correct_number ]]; do
        read -p "Enter your guess: " guess
        
        if ! is_number "$guess"; then
            echo "Please enter a valid number."
            continue
        fi
        
        if [[ $guess -lt $correct_number ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $correct_number ]]; then
            echo "Your guess is too high."
        fi
    done
    
    echo "Congratulations! You guessed correctly!"
    echo "The number of files in the current directory is: $correct_number"
}

# Main execution
play_game
