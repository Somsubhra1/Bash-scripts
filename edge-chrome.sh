#!/bin/bash

#this script deletes edge and installs chrome

#delete edge
sudo apt purge microsoft-edge-dev

#install chrome
sudo apt install chromium-browser

#set chrome as default browser
xdg-settings set default-web-browser chromium-browser.desktop

#install chrome extensions
#ublock origin
chromium-browser https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm

#https everywhere
chromium-browser https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp
