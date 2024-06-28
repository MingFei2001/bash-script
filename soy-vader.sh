#!/usr/bin/env bash

###############################
# ┏━┓┏━┓╻ ╻   ╻ ╻┏━┓╺┳┓┏━╸┏━┓ #
# ┗━┓┃ ┃┗┳┛╺━╸┃┏┛┣━┫ ┃┃┣╸ ┣┳┛ #
# ┗━┛┗━┛ ╹    ┗┛ ╹ ╹╺┻┛┗━╸╹┗╸ #
###############################
# Welcome to Soy-Vader Script #
###############################
# This script is used to auto #
# install and configure void  #
# linux with sway compositor  #
###############################
# Use this at your own risk   #
###############################

valid=false

while ! $valid ; do
	read scanType;

	case $scanType in
		1)valid=true;;
		0)valid=true;
			echo "| Aborting ...";;
		*) valid=true;
			echo "| Invalid input .. ";;
	esac	
done

echo "| Program Exiting ..."
echo "| -----------------------------"
