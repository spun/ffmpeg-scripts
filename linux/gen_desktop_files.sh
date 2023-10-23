#!/bin/bash

# Templates directory
templates_dir="./templates"

# Loop through .desktop files
for file in "$templates_dir"/*.desktop; do
  if [ -f "$file" ]; then
    # Get the .desktop filename
    base_name=$(basename "$file")

    # Copy the file to the current directory
    cp "$file" "./$base_name"

    # Append current directory as the Path value
     echo "Path=$PWD/" >> "./$base_name"
  fi
done
