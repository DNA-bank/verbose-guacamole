#!/bin/bash
# Gen - A simple bash script generator
# Usage: bash gen.sh or cat input.txt | bash gen.sh

# Read from stdin if available, otherwise prompt
if [ -t 0 ]; then
    echo "Gen - Bash Script Generator"
    echo "Enter your commands (Ctrl+D to finish):"
fi

# Process input
while IFS= read -r line; do
    # Echo the line being processed
    echo "$line"
done
