#!/usr/bin/env bash

# TODO:Gather all kinds of scanning methods and put it all in one script
# 1. input target address
# 2. select scan type
# 3. start scanning
# 4. Loop back to scan type menu

# Welcome Menu Function
show_menu() {
    printf "| -----------------------------\n"
    printf "| Nmap Automation Script\n"
    printf "| -----------------------------\n"
    printf "| [1] Basic OS Scan\n"
    printf "| [2] ARP Ping Scan\n"
    printf "| [3] UDP Ping Scan\n"
    printf "| [4] ICMP ECHO Ping Scan\n"
    printf "| [5] ICMP Timestamp Ping Scan\n"
    printf "| [6] ICMP Address Mask Ping Scan\n"
    printf "| [7] TCP SYN Ping Scan\n"
    printf "| [8] TCP ACK Ping Scan\n"
    printf "| [9] IP Protocol Ping Scan\n"
    printf "| [0] Abort\n"
    printf "| -----------------------------\n"
}

# Init loop state
# End loop when true
valid=false

# Main whilel oop
while ! $valid ; do
	show_menu
	printf "| Please select scanning type: "
	read scanType;

	case $scanType in
		1) # Performs a basic scan on the target address 
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -O $targetAddr
			;;
		2)  # Perform an ARP Ping scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PR "$targetAddr"
			;;
		3) # Perform a UDP Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PU "$targetAddr"
			;;
		4) # Perform an ICMP ECHO Ping Scan on the target address range
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PE "$targetAddr"
			;;
		5) # Perform an ICMP Timestamp Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PP "$targetAddr"
			;;
		6) # Perform an ICMP Address Mask Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PM "$targetAddr"
			;;
		7) # Perform a TCP SYN Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PS "$targetAddr"
			;;
		8) # Perform a TCP ACK Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PA "$targetAddr"
			;;
		9) # Perform an IP Protocol Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PO "$targetAddr"
			;;
		0) # Terminate the script 
			valid=true;
			echo "| Aborting ..."
			;;
		*) # Error handling 
			echo "| Invalid input .. ";;
	esac
done

# Exit message
echo "| Program Exiting ..."
echo "| -----------------------------"
