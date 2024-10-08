#!/bin/bash

# Function to back up a file
backup_file() {
  local file=$1
  if [[ -f "$file" ]]; then
    cp "$file" "${file}.bak"
    echo "Backup of '$file' created as '${file}.bak'"
  else
    echo "File '$file' does not exist in the current directory."
  fi
}

# Check if arguments are provided
if [[ $# -gt 0 ]]; then
  for file in "$@"; do
    backup_file "$file"
  done
else
  # Prompt the user for the file to back up
  echo "Which file to back up?"
  read -e filename
  backup_file "$filename"
fi
