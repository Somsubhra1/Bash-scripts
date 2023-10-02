#!/bin/bash

# Script Name: bundle


# SYNOPSIS #
#   bundle [-s src_folder] [-d dest_folder] [-w]

# DESCRIPTION
#   bundle is a Bash script that monitors a source folder for changes and performs
#   synchronization tasks based on file types. It can compile SCSS and Pug files, and rsync
#   all other files to a destination folder. This script offers flexibility through command-line
#   options to customize source and destination folders, and to enable watch mode for continuous
#   monitoring.

# OPTIONS
#   -s, --src src_folder
#       Specify the source folder to monitor. The default is "src."
#
#   -d, --dest dest_folder
#       Specify the destination folder for synchronization. The default is "dist."
#
#   -w, --watch
#       Enable watch mode, which continuously monitors the source folder for changes. When a change
#       occurs, the script automatically compiles SCSS and Pug files and rsyncs other files to
#       the destination folder.

# USAGE
#   To use the script with default settings and enable watch mode:
#   $ bundle -w
#
#   To specify custom source and destination folders:
#   $ bundle -s custom_src_folder -d custom_dest_folder -w
#
#   To perform a one-time compilation and rsync without watch mode:
#   $ bundle-s custom_src_folder -d custom_dest_folder

# AUTHOR
#   Amish Kumar Singh

# DATE
#   Created: Sunday 10 September 2023 12:50:14 PM UTC
#   Last Modified: Sunday 10 September 2023 12:50:14 PM UTC


# Default source and destination folders
src_folder="src"
dest_folder="dist"
watch_mode=false

# Check for optional command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -s|--src)
            src_folder="$2"
            shift 2
            ;;
        -d|--dest)
            dest_folder="$2"
            shift 2
            ;;
        -w|--watch)
            watch_mode=true
            shift
            ;;
        *)
            echo "Usage: $0 [-s|--src src_folder] [-d|--dest dest_folder] [-w|--watch]"
            exit 1
            ;;
    esac
done

# Function to compile SCSS files
compile_sass() {
    echo "Compiling SCSS..."
    sass "$src_folder":"$dest_folder"
}

# Function to compile Pug files
compile_pug() {
    echo "Compiling Pug..."
    pug "$src_folder" -o "$dest_folder"
}

# Function to rsync other files
rsync_files() {
    echo "Rsyncing other files..."
    rsync -av --exclude='*.scss' --exclude='*.pug' "$src_folder/" "$dest_folder"
}

# Function to watch for changes
watch_changes() {
    while true; do
        inotifywait -r -e modify,create "$src_folder" | while read -r directory events filename; do
            if [[ "$filename" == *.scss ]]; then
                compile_sass
            elif [[ "$filename" == *.pug ]]; then
                compile_pug
            else
                rsync_files
            fi
        done
    done
}

# Initial compiling source into distributable format
compile_sass
compile_pug
rsync_files

# If watch mode is enabled, watch for changes; otherwise, perform actions once
if [ "$watch_mode" = true ]; then
    watch_changes
fi
