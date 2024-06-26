#!/bin/bash

# Prompt the user for the file to back up
echo "Which file to back up?"
read -e filename

# Check if the file exists in the current directory
if [[ -f "$filename" ]]; then
  # Create a backup with the .bak extension
  cp "$filename" "${filename}.bak"
  echo "Backup of '$filename' created as '${filename}.bak'"
else
  echo "File '$filename' does not exist in the current directory."
fi
