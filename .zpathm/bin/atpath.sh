#!/bin/zsh

# Ensure that directory is provided
if [ -z "$1" ]; then
    echo "Usage: source atpath.sh <directory>"
    return 1
fi

# Check if first letter is a slash
if [ "${1:0:1}" != "/" ]; then
    echo "Directory name '$1' must start with a / when added to PATH."
    return 1
fi

# Check if the directory exists, ignore the / at the beginning of the directory
if [ ! -d "${1:1}" ]; then
    echo "Directory '$1' does not exist."
    return 1
fi

local dir="$1"

# Check if the directory is already in PATH
if [[ ":$PATH:" != *":$dir:"* ]]; then
    echo "\nexport PATH=\"$dir:\$PATH\"" >> ~/.zshrc
    export PATH="$dir:$PATH"
    echo "Directory '$dir' added to PATH and the .zshrc file"
    return 0
else
    echo "Directory '$dir' is already in PATH."
    return 0
fi