#!/bin/sh

# TODO:Gather all kinds of scanning methods and put it all in one script
# 1. input target address
# 2. select scan type
# 3. start scanning
# 4. Loop back to scan type menu
# rmb to take a look at Nmap Scripting Engine (NSE)

# Welcome message
echo "| -----------------------------"
echo "| Nmap Automation Script"
echo "| -----------------------------"
echo "| [1] Basic Scan"
echo "| [0] Abort"
echo "| -----------------------------"

# Init loop state
# End loop when true
valid=false

# Main whilel oop
while ! $valid ; do
	echo "| Please select scanning type: "
	read -r scanType;

	case $scanType in
		1) valid=true;
			echo "| Please input target Address: "
			read -r targetAddr;
			echo ""
			sudo nmap -O "$targetAddr";;
		0) valid=true;echo "| Aborting ...";;
		*) echo "| Invalid input .. ";;
	esac
done

# Exit message
echo "| Program Exiting ..."
echo "| -----------------------------"
