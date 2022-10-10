# Removes all .exe files(or any other specific file format) from the current directory and all its sub-directories.
 find . -name "*.exe" -exec rm '{}' \;
 