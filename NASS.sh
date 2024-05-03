#!/usr/bin/env bash

# TODO:Gather all kinds of scanning methods and put it all in one script
# 1. input target address
# 2. select scan type
# 3. start scanning
# 4. Loop back to scan type menu

# Welcome Menu Function
show_menu() {
echo "| -----------------------------"
echo "| Nmap Automation Script"
echo "| -----------------------------"
echo "| [1] Basic Scan"
echo "| [2] ARP Scan"
echo "| [3] UDP Scan"
echo "| [4] ICMP ECHO Ping Scan"
echo "| [5] ICMP ECHO Ping Sweep"
echo "| [6] ICMP Timestamp Ping Scan"
echo "| [7] ICMP Address Mask Ping Scan"
echo "| [8] TCP SYN Ping Scan"
echo "| [9] TCP ACK Ping Scan"
echo "| [10] IP Protocol Ping Scan"
echo "| [0] Abort"
echo "| -----------------------------"
}

# Init loop state
# End loop when true
valid=false

# Main whilel oop
while ! $valid ; do
	read -p "| Please select scanning type: " -r scanType; 

	case $scanType in
		1) 
			valid=true;
			read -p "| Please input target Address: : " -r targetAddr;
			# Performs an OS detection scan on the target address
			nmap -O $targetAddr
			;;
		2)
			valid=true;
			read -p "| Please select scan type: " -r scanType
			# Perform a ARP Ping scan on the target address
			nmap -sn -PR $targetAddr
			;;
		3)
			valid=true;
			read -p "| Please select scan type: " -r scanType
			# Perform a UDP Ping Scan on the target address
			nmap -sn -PU $targetAddr
			;;
		4)
			valid=true;
			read -p "| Please select scan type: " -r scanType
			# Perform 
			nmap $targetAddr
			;;
		5)
			valid=true;
			read -p "| Please select scan type: " -r scanType
			# Perform 
			nmap $targetAddr
			;;
		6)
			valid=true;
			read -p "| Please select scan type: " -r scanType
			# Perform 
			nmap $targetAddr
			;;
		0) 
		 	# Terminating the script ...
			valid=true;
			echo "| Aborting ..."
			;;
		*) 
		 	# Error handling for the menu input
			echo "| Invalid input .. "
			;;
	esac
done

# Exit message
echo "| Program Exiting ..."
echo "| -----------------------------"
