#!/bin/bash

# Used to setup global git alias commands with bash
# Usage:
# sh git-alias.sh <original-command> <short-form>
# Example:
# sh git-alias.sh rebase rb

git config --global alias.$2 $1

echo "You can now use \"git $2\" instead of \"git $1\""