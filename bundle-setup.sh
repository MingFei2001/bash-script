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
# Basic Ubuntu and Debian Linux ESSENTIAL Setup Script
# This script is made by me, mingfei
# ------------------------------------------
# This script is created so i can just
# simply git clone this and run it in bash
# to install simple apps
# ------------------------------------------
# P/S: Use it at your own risk
# ------------------------------------------

# ------------------------------------------
# List of software
#
# curl build-essential git tldr vim neofetch duf
# btop cmatrix fzf ripgrep fdclone cmake scrcpy
# speedtest-cli ranger tty-clock
#
# ------------------------------------------

# ------------------------------------------
# Welcoming text
echo " "
echo "| Basic Ubuntu and Debian Linux ESSENTIAL Setup Script"
echo "| a.k.a. BUNDLE Setup Script"
echo "| Made by mingfei"
echo "| p/s: Run this script with sudo priviledges"
echo " "
# ------------------------------------------

# ------------------------------------------
# Update the system to the latest
echo "| Updating System..."
echo " "
apt-get update
apt-get upgrade -y
echo " "
# ------------------------------------------
# Start to install software
echo "| installing curl build-essential"
apt install curl build-essential -y
echo " "

echo "| installing git tldr"
apt install git tldr -y
echo " "

echo "| installing vim neofetch duf"
apt install vim neofetch duf -y
echo " "

echo "| installing btop cmatrix"
apt install btop cmatrix -y
echo " "

echo "| installing fzf ripgrep"
apt install fzf ripgrep -y
echo " "

echo "| installing fdclone cmake"
apt install fdclone cmake -y
echo " "

echo "| installing speedtest-cli tty-clock"
apt install speedtest-cli tty-clock -y
echo " "

echo "| installing ranger scrcpy"
apt install ranger scrcpy -y
echo " "

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
