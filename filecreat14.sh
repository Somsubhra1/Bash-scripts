#!/bin/sh

#Purpose: To list the files created or updated within fourteen days from current date.

#USAGE: sh filecreat14.sh (no arguments required)

find-atime-14-mtime -14 | sort-u

#end of script
