#!/usr/bin/env bash

###############################
# ┏━┓┏━┓╻ ╻   ╻ ╻┏━┓╺┳┓┏━╸┏━┓ #
# ┗━┓┃ ┃┗┳┛╺━╸┃┏┛┣━┫ ┃┃┣╸ ┣┳┛ #
# ┗━┛┗━┛ ╹    ┗┛ ╹ ╹╺┻┛┗━╸╹┗╸ #
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
