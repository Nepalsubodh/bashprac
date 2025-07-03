#!/bin/bash

# Check if a filename was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

# Count and display the number of lines
line_count=$(wc -l < "$filename")
echo "The file '$filename' has $line_count lines."


#this is from chatgpt
