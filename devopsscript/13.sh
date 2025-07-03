#!/bin/bash

# Ask the user to enter a directory path
read -p "Enter directory path: " dir

# Check if the directory exists
if [ ! -d "$dir" ]; then
    echo "This is not a valid directory."
    exit 1
fi
file_count=$(ls -l "$dir" | grep "^-" | wc -l)
dir_count=$(ls -l "$dir" | grep "^d" | wc -l)
echo "Number of files: $file_count"
echo "Number of subdirectories: $dir_count"
