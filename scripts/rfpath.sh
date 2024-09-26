#!/bin/zsh

# MARK: OBSERVE
# Needs: to be place in PATH variable to be executed from anywhere.
# Needs: "chmod +x rfpath.sh" to make it executable.

#!/bin/zsh

# Function to remove a directory from the PATH
remove_from_path() {

    local dir="$1"

    # Remove the directory from PATH
    PATH=$(tr ':' '\n' | grep -v "^$dir$" | tr '\n' ':' | sed 's/:$//')
    
    # Check if the directory was removed
    if [[ ":$PATH:" == *":$dir:"* ]]; then

        echo "Failed to remove directory '$dir' from PATH."

    else

        echo "Directory '$dir' removed from PATH."

    fi

}

# Check if a directory was provided as an argument
if [ -z "$1" ]; then

    echo "Usage: rfpath.sh <directory>"

else

    remove_from_path "$1"

fi
