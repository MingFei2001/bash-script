#!/bin/sh

# TODO:Gather all kinds of scanning methods and put it all in one script
#
# 1. input target address
# 2. select scan type
# 3. start scanning
# 4. Loop back to scan type menu
#
# Take a look at Nmap Scripting Engine
#
echo "| -----------------------------"
echo "| Nmap Automation Script"
echo "| -----------------------------"
echo "| [1] Basic Scan"
echo "| [0] Abort"
echo "| -----------------------------"

valid=false

while ! $valid ; do
	read -p "| Please select scanning type: " -r scanType; 

	case $scanType in
		1) valid=true;
			read -p "| Please input target Address: : " -r targetAddr
			nmap -O $targetAddr;;
		0) valid=true;echo "| Aborting ...";;
		*) echo "| Invalid input .. ";;
	esac
done

echo "| Program Exiting ..."
echo "| -----------------------------"
	
