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
# ------------------------------------------
# P/S: Use it at your own risk
# ------------------------------------------

# ------------------------------------------
# Using apt to install most software
# Then filled out the rest with snap
# ------------------------------------------
# List of software
#
# APT :
# curl gcc g++ make git tldr vim neofetch duf
# btop cmatrix fzf ripgrep thefuck mpv vlc tree
# celluloid scrcpy gimp krita blender darktable
# kdenlive obs-studio inkscape audacity stacer
# python3 python3-pip python3.10-venv lua5.1 npm
# nodejs golang github-desktop cmake fdclone
# libreoffice qutebrowser ranger lookatme nmap
# pass gufw docker.io clamtk speedtest-cli
# tty-clock
#
# Snap :
# firefox neovim chromium code monophony

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
echo "| So make sure you know the sudo password."
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

# ------------------------------------------
# Start to install software
# Add more along the road
# First some important cli
echo "| installing curl gcc g++"
apt install curl gcc g++ -y
echo " "

echo "| installing make tree git tldr"
apt install make tree git tldr -y
echo " "

echo "| installing vim neofetch duf"
apt install vim neofetch duf -y
echo " "

echo "| installing btop cmatrix scrcpy"
apt install btop cmatrix scrcpy -y
echo " "

echo "| installing fzf ripgrep thefuck"
apt install fzf ripgrep thefuck -y
echo " "

echo "| installing mpv vlc celluloid"
apt install mpv vlc celluloid -y
echo " "

echo "| installing cmake fdclone ranger"
apt install cmake fdclone ranger -y
echo " "

echo "| installing lookatme nmap gufw"
apt install lookatme nmap gufw -y
echo " "

echo "| installing pass docker clamav"
apt install pass docker.io clamtk -y
echo " "

echo "| installing speedtest-cli tty-clock"
apt install speedtest-cli tty-clock -y
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
apt install obs-studio -y
echo " "

echo "| installing audacity"
apt install audacity -y
echo " "

echo "| installing blender"
apt install blender -y
echo " "

echo "| installing stacer"
apt install stacer -y
echo " "

echo "| installing libreoffice"
apt install libreoffice -y
echo " "

echo "| installing qutebrowser"
apt install qutebrowser -y
echo " "

# ------------------------------------------
# uncomment to install github & github-desktop
#
# type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
# curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg &&
# 	sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg &&
# 	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
# 	sudo apt update &&
# 	sudo apt install gh -y
#
# wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg >/dev/null
# sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
# sudo apt update && sudo apt install github-desktop
# ------------------------------------------

# ------------------------------------------
# If you are using intel gpu
#
# echo "| installing intel-gpu-tools"
# sudo apt install intel-gpu-tools
# echo " "
#
# p/s: you can use lsgpu as a part of the tools
# ------------------------------------------

# Now install something else with snap
# But first refresh snap
echo "| checking if snap existed..."
apt install snapd
echo " "

echo "| Updating snap"
snap refresh
echo " "

# Installation start
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

echo "| installing monophony"
snap install monophony
echo " "

# ------------------------------------------
# Now just have to link the snap binary to the user applications library
# creating a symbolic link with the snap binary folder
# in /usr/share/applications/snapd

# sudo ln -s /var/lib/snapd/desktop/applications /usr/share/applications/snapd

# ------------------------------------------

# ------------------------------------------
# End of script
echo " "
echo "| That's the end of the script."
echo "| Exiting..."
echo " "
# ------------------------------------------
