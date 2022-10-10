#!/bin/bash

# Create a script to download and install the latest version of the tor browser and open it

# Get the latest version of the tor browser
TOR_BROWSER=$(curl -s https://www.torproject.org/download/download-easy.html.en | grep -oP 'https://www.torproject.org/dist/torbrowser/.*?/tor-browser-linux64-.*?\.tar\.xz')

# Download the latest version of the tor browser
wget $TOR_BROWSER

# Extract the tarball
tar -xvf tor-browser-linux64-*.tar.xz

# Remove the tarball
rm tor-browser-linux64-*.tar.xz

# Open the tor browser
tor-browser_en-US/Browser/start-tor-browser
