#!/usr/bin/env bash

# TODO: add more categories of scanning

# |--------------------------------------------
# | NASS a.k.a. Nmap Automatic Scanning Script
# | Use this script to execute nmap scanning
# | without memorising the entire nmap command
# |--------------------------------------------
# | Successfully implemented the following:
# | 1. nmap installation checker
# | 2. menu printing function
# | 3. main scanning script loop
# |--------------------------------------------

# |--------------------------------------------
# Welcome Menu
show_menu() {
    printf "| -----------------------------\n"
    printf "| # Nmap Automatic Scanning Script\n"
    printf "| ## Basic Scanning\n"
    printf "| [1] Basic OS Scan\n"
    printf "| -----------------------------\n"
    printf "| ## Host Discovery\n"
    printf "| [2] ARP Ping Scan\n"
    printf "| [3] UDP Ping Scan\n"
    printf "| [4] ICMP ECHO Ping Scan\n"
    printf "| [5] ICMP Timestamp Ping Scan\n"
    printf "| [6] ICMP Address Mask Ping Scan\n"
    printf "| [7] TCP SYN Ping Scan\n"
    printf "| [8] TCP ACK Ping Scan\n"
    printf "| [9] IP Protocol Ping Scan\n"
    printf "| -----------------------------\n"
    printf "| ## Port Scanning\n"
    printf "| [10] scan"
    printf "| [11] scan"
    printf "| [12] scan"
    printf "| [13] scan"
    printf "| [14] scan"
    printf "| [15] scan"
    printf "| [16] scan"
    printf "| [17] scan"
    printf "| [18] scan"
    printf "| [19] scan"
    printf "| [20] scan"
    printf "| [21] scan"
    printf "| [22] scan"
    printf "| [23] scan"
    printf "| -----------------------------\n"
    printf "| [0] Abort\n"
    printf "| -----------------------------\n"
}
# |--------------------------------------------


# |--------------------------------------------
# Check if nmap is installed
check_nmap_in(){
	# moved the output of nmap command to null device
	# together with any error on stderr
	printf "| Checking if nmap is installed ...\n"
	command -v nmap >/dev/null 2>&1
	# check if the nmap existed by checking the last exit status
	if [ $? -ne 0 ]; then
		printf "| -----------------------------\n"
		printf "| Nmap is not installed on this system.\n"
	        printf "| Please install Nmap before running this script.\n"
		printf "| On Ubuntu/Debian, you can install it with: sudo apt-get install nmap\n"
		printf "| On RHEL/CentOS, you can install it with: sudo yum install nmap\n"
		printf "| -----------------------------\n"
		# terminate the script
		exit 1
	else
		printf "| -----------------------------\n"
		printf "| Nmap is installed on the system\n"
	fi
}
# |--------------------------------------------

# |--------------------------------------------
# Init loop state
# End loop when true
check_nmap_in
valid=false

# Main while loop
while ! $valid ; do
	show_menu
	printf "| Please select scanning type: "
	read scanType;

	case $scanType in
		1) # Performs a basic scan on the target address 
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -O -vv $targetAddr
			;;
		2)  # Perform an ARP Ping scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PR -vv "$targetAddr"
			;;
		3) # Perform a UDP Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PU -vv "$targetAddr"
			;;
		4) # Perform an ICMP ECHO Ping Scan on the target address range
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PE -vv "$targetAddr"
			;;
		5) # Perform an ICMP Timestamp Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PP -vv "$targetAddr"
			;;
		6) # Perform an ICMP Address Mask Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PM -vv "$targetAddr"
			;;
		7) # Perform a TCP SYN Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PS -vv "$targetAddr"
			;;
		8) # Perform a TCP ACK Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PA -vv "$targetAddr"
			;;
		9) # Perform an IP Protocol Ping Scan on the target address
			valid=true;
			printf "| Please input target Address: : ";
			read targetAddr;
			nmap -sn -PO -vv "$targetAddr"
			;;
		10) # 
		0) # Terminate the script 
			valid=true;
			echo "| Aborting ..."
			;;
		*) # Error handling 
			echo "| Invalid input .. ";;
	esac
done
# End of main while loop
# |--------------------------------------------

# |--------------------------------------------
# Exit message
echo "| Program Exiting ..."
echo "| -----------------------------"
# |--------------------------------------------
