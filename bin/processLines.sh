#!/bin/bash

# Check if the input file is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <text_file> <script_to_call>"
  exit 1
fi

# Assign input arguments to variables
text_file="$1"
script_to_call="$2"

# Check if the text file exists
if [ ! -f "$text_file" ]; then
  echo "Error: Text file '$text_file' not found."
  exit 1
fi

# Check if the script to call exists and is executable
if [ ! -x "$script_to_call" ]; then
  echo "Error: Script '$script_to_call' not found or not executable."
  exit 1
fi

# Read the file line by line and pass each line to the script
while IFS= read -r line; do
  # echo "Passing parameter: '$line' to $script_to_call"
  ./"$script_to_call" "$line"
done < "$text_file"

