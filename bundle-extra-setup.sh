#!/bin/sh

#------------------------------------------
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
# Basic Ubuntu and Debian Linux EXTRA Setup Script
# This script is made by me, mingfei
# ------------------------------------------
# This script is created so i can just
# simply git clone this and run it in bash
# to install some extra apps
# ------------------------------------------
# P/S: Use it at your own risk
# ------------------------------------------

# ------------------------------------------
# List of software
#
# stacer uget scrcpy pandoc
#
# gparted sysbench docker.io docker-compose
#
# nmap netcat wireshark tshark clamav gufw
#
# mpv vlc celluloid
# gimp krita inkscape
# kdenlive audacity obs-studio
# libreoffice qutebrowser
# blender chromium
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

# Basic utilities

echo "| installing stacer"
apt install stacer -y
echo " "

echo "| installing uget"
apt install uget -y
echo " "


echo "| installing scrcpy"
apt install scrcpy -y
echo " "

echo "| installing pandoc"
apt install pandoc -y
echo " "

# ------------------------------------------

# echo "| installing gparted"
# apt install gparted -y
# echo " "

# echo "| installing sysbench"
# apt install sysbench -y
# echo " "

# echo "| installing docker docker-compose"
# apt install docker docker-compose -y
# echo " "

# ------------------------------------------
# Cybersecurity Applications

# echo "| installing nmap netcat"
# apt install nmap netcat -y
# echo " "

# echo "| installing wireshark tshark"
# apt install wireshark tshark -y
# echo " "

# echo "| installing clamav"
# apt install clamav -y
# echo " "

# echo "| installing gufw"
# apt install gufw -y
# echo " "

# ------------------------------------------
# Creative Suite
#
# echo "| installing mpv vlc celluloid"
# apt install mpv vlc celluloid -y
# echo " "
# echo "| installing gimp krita inkscape"
# apt install gimp krita inkscape -y
# echo " "

# echo "| installing kdenlive audacity obs-studio"
# apt install kdenlive audacity obs-studio -y
# echo " "

# echo "| installing libreoffice qutebrowser"
# apt install libreoffice qutebrowser -y
# echo " "

# echo "| installing blender"
# apt install blender -y
# echo " "

### Take note that chromium is not in ubuntu repositories
# echo "| installing chromium"
# apt install chromium -y
# echo " "

# ------------------------------------------
# End of script

echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
