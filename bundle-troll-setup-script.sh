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
# Welcome to BUNDLE troll setup script
# Basic Ubuntu and Debian Linux Easy troll Setup Script
# This script is made by me, mingfei
# ------------------------------------------
# This Script is created so i can just
# simply git clone this and run it in bash
# to install some fun application to troll
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
# tldr neofetch cmatrix thefuck toilet figlet
# cava aafire cowsay tty-clock fortune sl lolcat
# oneko espeak bb hollywood pv rig
#
# Snap :
# asciiquarium
# ------------------------------------------

# ------------------------------------------
# Welcoming text
echo " "
echo "| Basic Ubuntu and Debian Linux Easy Troll Setup Script"
echo "| a.k.a. BUNDLE Troll Setup Script"
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

echo "| installing tldr neofetch cmatrix"
apt install tldr neofetch cmatrix -y
echo " "

echo "| installing thefuck toilet figlet"
apt install thefuck toilet figlet -y
echo " "

echo "| installing cava aafire cowsay"
apt install cava libaa-bin cowsay -y
echo " "

echo "| installing tty-clock fortune sl"
apt install thefuck fortune sl -y
echo " "

echo "| installing lolcat oneko espeak"
apt install lolcat oneko espeak -y
echo " "

echo "| installing bb hollywood pv"
apt install bb hollywood pv -y
echo " "

echo "| installing rig"
apt install rig -y
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
echo "| installing asciiquarium"
snap install asciiquarium
echo " "
# ------------------------------------------

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
