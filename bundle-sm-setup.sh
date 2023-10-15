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
# Welcome to BUNDLE small setup script
# Basic Ubuntu and Debian Linux Easy Small Setup Script
# This script is made by me, mingfei
# ------------------------------------------
# This Script is created so i can just
# simply git clone this and run it in bash
# to install simple tui and gui apps for
# fast installation and testing
# ------------------------------------------
# P/S: Use it at your own risk
# P/S: Just making it clear
# ------------------------------------------

# ------------------------------------------
# Using apt to install most software
# Then filled out the rest with snap
# ------------------------------------------
# List of software
#
# APT :
# curl gcc g++ make git tldr vim neofetch duf
# btop cmatrix fzf ripgrep thefuck tree fdclone
# cmake
#
# Snap :
# neovim lazygit
# ------------------------------------------

# ------------------------------------------
# Welcoming text
echo " "
echo "| Basic Ubuntu and Debian Linux Easy Small Setup Script"
echo "| a.k.a. BUNDLE Small Setup Script"
echo "| Made by mingfei"
echo "  "
echo "| Reminder:"
echo "| This is not a fully automated script."
echo "| Remember to respond when prompted."
echo "| Mostly just y or enter."
echo "| Run this script with sudo priviledges."
echo "| like such: sudo bundle-sm-setup.sh"
echo "| SO make sure you know the sudo password."
echo " "
# ------------------------------------------

# ------------------------------------------
# Update the system to the latest
echo "| Updating System..."
echo "| TODO: Press y and ENTER key when prompted"
echo " "
apt-get update
apt-get upgrade -y
echo " "
# ------------------------------------------
# Start to install software
echo "| installing curl gcc g++"
apt install curl gcc g++ -y
echo " "

echo "| installing make tree git tldr"
apt install make tree git tldr -y
echo " "

echo "| installing vim neofetch duf"
apt install vim neofetch duf -y
echo " "

echo "| installing btop cmatrix"
apt install btop cmatrix -y
echo " "

echo "| installing fzf ripgrep thefuck"
apt install fzf ripgrep thefuck -y
echo " "

echo "| installing fdclone cmake"
apt install fdclone cmake -y
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

echo "| installing lazygit"
snap install lazygit
echo " "
# ------------------------------------------

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
