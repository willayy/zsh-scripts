#!/bin/zsh

# Check if a directory was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: rfpath.sh <directory>"
    return 1
fi

# Check if directory exists in PATH
if [[ ! ":$PATH:" == *":$1:"* ]]; then
    echo "Directory '$1' is not in PATH."
    return 1
fi

local dir="$1"

# Remove the directory from .zshrc file
sed -i '' '/\nexport PATH="\'$dir':$PATH"/d' ~/.zshrc

# Remove the directory from PATH in the current shell
export PATH=$(echo $PATH | sed -e "s#:$dir:##g")


echo "Directory '$dir' is removed from PATH and .zshrc."
return 0


