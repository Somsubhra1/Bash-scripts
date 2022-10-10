#!/bin/bash

# Create a new file with the current date and time
# in the format YYYY-MM-DD_HH-MM-SS
# and open it in vim

# Get the current date and time
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create a new file with the current date and time
touch $DATE

# Open the file in vim
vim $DATE
