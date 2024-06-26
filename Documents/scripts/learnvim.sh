#!/bin/bash

# Define the source and destination directories
SOURCE_DIR=~/Documents/learn\ vim/templates/
DEST_DIR=/tmp/

# Copy the template to the destination directory
cp -r "$SOURCE_DIR" "$DEST_DIR"

# Get the name of the copied template (assuming there's only one template)
TEMPLATE_NAME=$(basename "$SOURCE_DIR")

# Change to the destination directory
cd "$DEST_DIR"

# Edit the copied template with Neovim
nvim "$TEMPLATE_NAME"
