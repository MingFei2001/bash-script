#!/bin/bash

###########################################
#  ____  ____  ______        ______ _____
# |  _ \|  _ \|  _ \ \      / / ___|_   _|
# | | | | | | | |_) \ \ /\ / /\___ \ | |
# | |_| | |_| |  _ < \ V  V /  ___) || |
# |____/|____/|_| \_\ \_/\_/  |____/ |_|
###########################################
## DD Read/Write SpeedTest
# this script uses dd as it comes with most
# linux system, saving installation process
# and time, alternatively use fio to achieve
# similar effect as this script
###########################################

### PREPARATIONS
## Check if a path is provided
if [ -z "$1" -o ! -d "$1" ]; then
    echo "| Error: Please provide a path to drive."
    echo "| - Usage: $0 /path/to/drive"
    echo "| - Example: $0 $(pwd)"
    exit 1
fi

## Setting up some variables
# Directories and Filename
TEST_DIR="$1"
TEST_FILE="$TEST_DIR/testfile.tmp"
LOG_FILE="./result.log"
# Parameters for dd
BLOCK_SIZE="1G"
COUNT="1"

## Function to log result
log_result() {
	echo "$1" | tee -a "$LOG_FILE"
}

## Cleanup any previous log
cat "/dev/null" > $LOG_FILE

## Begin write speed test
log_result "=== Write Speed Test ==="
# Copy /dev/zero to temp file to test write speed
WRITE_RESULT=$(dd if=/dev/zero of="$TEST_FILE" bs="$BLOCK_SIZE" count="$COUNT" oflag=direct 2>&1)
write_speed=$(echo "$WRITE_RESULT" | tail -n 1 | awk '{print $(NF-1)}' )
log_result "Write speed: $write_speed MB/s"

## Begin write speed test
log_result "=== Read Speed Test ==="
# Run the test file and discard the output to null to test read speed
READ_RESULT=$(dd if="$TEST_FILE" of=/dev/null bs="$BLOCK_SIZE" count="$COUNT" iflag=direct 2>&1)
read_speed=$(echo "$READ_RESULT" | tail -n 1 | awk '{print $(NF-1)}' )
log_result "Read speed: $read_speed MB/s"

## Clean up
rm -f "$TEST_FILE"

## Exit message
log_result "=== Test Complete ==="
echo "Results saved to $LOG_FILE"

## P/S:
# Parameter "oflags" & "iflags" in dd is set to "direct" to bypass system cache
