#!/usr/bin/env bash

# ------------------------------------------
# Welcome to Sway Void setup script
# This script is made by me, mingfei
# ------------------------------------------
# This script is created so i can just
# simply git clone this and run it in bash
# to install and configure a fresh copy of
# void linux using Sway compositor
# ------------------------------------------
# P/S: Use it at your own risk
# ------------------------------------------

valid=false

echo "| -----------------------------"
echo "| Sway Void Install Script"
echo "| -----------------------------"
echo "| [1] Basic installation"
echo "| [2] Full installation"
echo "| [3] Extras Only installation"
echo "| [0] Abort"
echo "| -----------------------------"


while  ! $valid ; do
	read -p "| Please select setup type: " -r setupType

	case $setupType in
		1) valid=true; 
			echo "| You selected Basic installation.";;
		2) valid=true;;
		3) valid=true;;
		0) valid=true; echo "| Program aborting ...";;
		*) echo "| Invalid input.";echo "| -----------------------------";;
	esac

done

echo "| Program Exiting ..."
echo "| -----------------------------"
