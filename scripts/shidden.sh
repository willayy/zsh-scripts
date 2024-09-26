#!/bin/zsh

# MARK: OBSERVE
# Needs: to be place in PATH variable to be executed from anywhere.
# Needs: "chmod +x shidden.sh" to make it executable.

# Check if an argument is provided
if [ -z "$1" ]; then

    echo "Usage: shidden.sh [true|false]"

fi

# Check if the argument is either "true" or "false"
if [ "$1" = "true" ]; then

    defaults write com.apple.Finder AppleShowAllFiles true

    echo "Hidden files are now visible."

elif [ "$1" = "false" ]; then

    defaults write com.apple.Finder AppleShowAllFiles false

    echo "Hidden files are now hidden."

else

    echo "Invalid argument. Use 'true' to show hidden files or 'false' to hide them."

fi

# Restart Finder to apply the changes
killall Finder