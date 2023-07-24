#!/bin/bash

# Function to set the text color and background color using ANSI escape codes
function set_color() {
    local text_color=$1
    local bg_color=$2
    echo -ne "\033[0;${bg_color}m"
}

# Size of the chessboard
BOARD_SIZE=8

# Loop through each row of the chessboard
for row in $(seq 1 $BOARD_SIZE); do
    # Decide the starting color of the row (either black or white)
    if [ $((row % 2)) -eq 0 ]; then
        start_color=0
    else
        start_color=7
    fi

    # Loop through each column of the chessboard
    for col in $(seq 1 $BOARD_SIZE); do
        # Calculate the color for the current square (either black or white)
        color=$(( (col + start_color) % 2 ))

        # Print the square using the set_color function
        if [ $color -eq 0 ]; then
            set_color 30 47 # Black text on white background
        else
            set_color 37 40 # White text on black background
        fi

        echo -n "   " # Printing 3 spaces for each square
    done

    # Reset the text and background colors to default after each row
    set_color 0 0
    echo "" # Move to the next line after each row
done

# Reset the text and background colors to default after printing the chessboard
set_color 0 0
echo ""

