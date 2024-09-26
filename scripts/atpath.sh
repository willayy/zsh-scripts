#!/bin/zsh

# MARK: OBSERVE
# Needs: to be place in PATH variable to be executed from anywhere.
# Needs: "chmod +x atpath.sh" to make it executable.

# Function to add a string (directory) to the PATH
add_to_path() {

    local dir="$1"

    # Check if the directory is already in PATH
    if [[ ":$PATH:" != *":$dir:"* ]]; then

        export PATH="$dir:$PATH"

        echo "Directory '$dir' added to PATH."

    else

        echo "Directory '$dir' is already in PATH."

    fi
}

# Check if a directory was provided as an argument
if [ -z "$1" ]; then

    echo "Usage: atpath.sh <directory>"

else

    add_to_path "$1"

fi