#!/usr/bin/env bash
# This script copy file to multiple device path in parallel

# List of path to devices and filename: modify these to change the settings
USB=(MF_USB01 MF_USB02 MF_USB03 MF_USB04)
mount_root="/media/mingfei/"
source_file_path="$(realpath ~/Downloads/nxos64-msll.10.4.5.M.bin)"

# Validate if source file exist
if [[ ! -f "$source_file_path" ]]; then
    echo "Error: source file not found or unset, please verify the variable in script."
    exit 1
fi

# Loop through each device and start the transfer as process
for device in "${USB[@]}"; do
    target="$mount_root/$device"
    echo "Copying $source_file_path to $target"
    rsync -ah --progress "$source_file_path" "$target/" && echo "transfer complete" &
done
wait

# List the directory content to output for manual validation
for device in "${USB[@]}"; do
    ls "$device"
done
wait

echo "Running sync for finishing dirty block transfer"
sync

echo "All transfer complete."
