#!/bin/bash

# This script will install VS Code on your system, set it as the default editor

# Install VS Code
sudo apt install code

# Set VS Code as the default editor
xdg-mime default code.desktop text/plain

# Install VS Code extensions
# C/C++
code --install-extension ms-vscode.cpptools

# C#
code --install-extension ms-dotnettools.csharp

# Python
code --install-extension ms-python.python

# Java
code --install-extension vscjava.vscode-java-pack

# install code runner
code --install-extension formulahendry.code-runner
