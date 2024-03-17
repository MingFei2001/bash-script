#!/bin/bash

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
# btop cmatrix fzf ripgrep fdclone cmake zip
# speedtest-cli ranger tty-clock tmux unzip
#
# ------------------------------------------

echo "| -----------------------------"
echo "| Bundle Setup Script"
echo "| -----------------------------"
echo "| [1] Basic installation"
echo "| [2] Full installation"
echo "| [3] Extras Only installation"
echo "| -----------------------------"

valid=false

while  ! $valid ; do
	read -p "| Please select setup type: " -r setupType
	
	case $setupType in
		1) valid=true; echo "| You selected Basic installation.";echo "| -----------------------------";;
		2) valid=true; echo "| You selected Full installation.";echo "| -----------------------------";;
		3) valid=true; echo "| You selected Extras installation.";echo "| -----------------------------";;
		*) echo "| Invalid input.";echo "| -----------------------------";;
	esac

done

echo "| Program Exiting ..."
echo "| -----------------------------"
