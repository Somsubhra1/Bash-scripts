#!/bin/sh

#Purpose: To list the files created or upated within 14 days from the current date

find -atime -14 -mtime -14 | sort -u

#Syntax: find -atime -n -mtime -n  | sort -u

#n is the certain number of days from the current date
