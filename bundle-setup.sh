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
# This Script is created so i can just
# simply git clone this and run it in bash
# to easily get most of the app i need in
# most Ubuntu or debian based linux distro
# mainly cli application though
# ------------------------------------------
# P/S: Use it at your own risk
# P/S: Just making it clear
# ------------------------------------------

# ------------------------------------------
# List of software
# APT :
# curl gcc g++ make git tldr vim neofetch duf
# btop cmatrix fzf ripgrep thefuck mpv vlc
# celluloid scrcpy gimp krita blender darktable
# kdenlive obs-studio inkscape audacity stacer
# python3 python3-pip python3.10-venv lua5.1 npm
# nodejs golang
# Snap :
# neovim chromium code lazygit

# ------------------------------------------
# Welcoming text
echo " "
echo "| Basic Ubuntu and Debian Linux Easy Setup Script"
echo "| a.k.a. BUNDLE Setup Script"
echo "| Made by mingfei"
echo "  "
echo "| Reminder:"
echo "| This is not a fully automated script."
echo "| Remember to respond when prompted."
echo "| Mostly just y or enter."
echo "| Run this script with sudo priviledges."
echo "| like such: sudo bundle-setup.sh"
echo "| Make sure you know the sudo password."
echo " "
# ------------------------------------------

# ------------------------------------------
# Using apt to install most software
# Then filled out the rest with snap
# Update the system to the latest
echo "| Updating System..."
echo "| TODO: Press y and ENTER key when prompted"
echo " "
apt-get update
apt-get upgrade -y
echo " "
# ------------------------------------------

# ------------------------------------------
# Start to install software
# Add more along the road
# First some important cli
echo "| installing curl gcc g++"
apt install curl gcc g++ -y
echo " "

echo "| installing make"
apt install make -y
echo " "

echo "| installing git tldr"
apt install git tldr -y
echo " "

echo "| installing vim"
apt install vim -y
echo " "

echo "| installing neofetch duf"
apt install neofetch duf -y
echo " "

echo "| installing btop cmatrix"
apt install btop cmatrix -y
echo " "

echo "| installing fzf ripgrep thefuck"
apt install fzf ripgrep thefuck -y
echo " "

echo "| installing mpv vlc celluloid"
apt install mpv vlc celluloid -y
echo " "

echo "| installing scrcpy"
apt install scrcpy -y
echo " "

# Secondly some programming languages

echo "| installing python pip venv"
apt install python3 python3-pip python3.10-venv -y
echo " "

echo "| installing go"
apt install golang -y
echo " "

echo "| installing npm nodejs"
apt install nodejs npm -y
echo " "

echo "| installing lua"
apt install lua5.1 -y
echo " "

# Thirdly some gui software
echo "| installing gimp"
apt install gimp -y
echo " "

echo "| installing krita"
apt install krita -y
echo " "

echo "| installing inkscape"
apt install inkscape -y
echo " "

echo "| installing darktable"
apt install darktable -y
echo " "

echo "| installing kdenlive"
apt install kdenlive -y
echo " "

echo "| installing obs-studio"
apt install darktable -y
echo " "

echo "| installing audacity"
apt install darktable -y
echo " "

echo "| installing blender"
apt install darktable -y
echo " "

echo "| installing stacer"
apt install stacer -y
echo " "

# Now install something else with snap
# But first refresh snap
echo "| checking if snap existed..."
apt install snapd
echo " "

echo "| Updating snap"
snap refresh
echo " "

# Installation start
echo "| installing neovim"
snap install nvim --classic
echo " "

echo "| installing chromium"
snap install chromium
echo " "

echo "| installing code"
snap install code --classic
echo " "

echo "| installing lazygit"
snap install lazygit
echo " "

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
