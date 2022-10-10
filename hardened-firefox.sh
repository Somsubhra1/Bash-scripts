#!/bin/bash

# This script will install Firefox on your system, set it as the default browser and harden it.

# Install Firefox
sudo apt install firefox

# Set Firefox as the default browser
xdg-settings set default-web-browser firefox.desktop

# Harden Firefox. install englisch language pack
sudo apt install firefox-locale-en

# Install uBlock Origin
firefox https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/

# Install HTTPS Everywhere
firefox https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/

# Install NoScript
firefox https://addons.mozilla.org/en-US/firefox/addon/noscript/

# Install Decentraleyes
firefox https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/

# Install Privacy Badger
firefox https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/

# Install Cookie AutoDelete
firefox https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/

# Install CanvasBlocker
firefox https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/

# Install uMatrix
firefox https://addons.mozilla.org/en-US/firefox/addon/umatrix/

# Install Firefox Multi-Account Containers
firefox https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/
