#!/bin/bash

read -p "Enter the name of a directory: " directory_name

if [ ! -d "$directory_name" ]; then
    echo "Error: Directory '$directory_name' does not exist."
else
	echo "Directory $directory_name exists"
fi
