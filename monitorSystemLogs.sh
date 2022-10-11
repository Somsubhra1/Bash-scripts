
#!/bin/bash

# Generates a log file in current directory
# from the tail end of ./systemLogs.txt.

# Note: ./systemLogs.txt must be world readable
# if this script invoked by an ordinary user.
#         #root chmod 644 ./systemLogs.txt

LINES=5

# Time and machine name
( date; uname -a ) >>logfile
echo --------------------------------------------------------------------- >>logfile
tail -$LINES ./systemLogs.txt >>logfile
echo >>logfile
echo >>logfile

exit 0
