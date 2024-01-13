#!/bin/sh

# ------------------------------------------
# ____   _    _  _   _  _____   _       ______
# |  _ \ | |  | || \ | ||  __ \ | |     |  ____|
# | |_) || |  | ||  \| || |  | || |     | |__
# |  _ < | |  | || . ` || |  | || |     |  __|
# | |_) || |__| || |\  || |__| || |____ | |____
# |____/  \____/ |_| \_||_____/ |______||______|
#
# ------------------------------------------

# ------------------------------------------
# Welcome to BUNDLE setup script
# Basic Ubuntu and Debian Linux Easy Setup Script
# This script is made by me, mingfei
# ------------------------------------------
# This script is created so i can just
# simply git clone this and run it in bash
# to install simple apps
# ------------------------------------------
# P/S: Use it at your own risk
# ------------------------------------------

# ------------------------------------------
# Linking snap binary to user applications library
# creating symbolic link with snap binary folder
# in /usr/share/applications/snapd
#
# sudo ln -s /var/lib/snapd/desktop/applications /usr/share/applications/snapd
# ------------------------------------------
# echo "| checking if snap existed..."
# apt install snapd
# echo " "
# echo "| Updating snap"
# snap refresh
# echo " "
# ------------------------------------------

echo "| installing firefox"
snap install firefox
echo " "

echo "| installing neovim"
snap install nvim --classic
echo " "

echo "| installing chromium"
snap install chromium
echo " "

echo "| installing code"
snap install code --classic
echo " "

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
