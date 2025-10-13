#!/bin/sh

# ocr-screenshot.sh: Capture a screen region, perform OCR, and copy text to clipboard.
# Dependencies: flameshot, tesseract-ocr, xclip, libnotify-bin

# Create a temporary file for the screenshot.
tmp=$(mktemp /tmp/ocrshot-XXXXXX.png)

# Take a screenshot. If the user cancels, exit gracefully.
flameshot gui -r > "$tmp" || { rm "$tmp"; exit 1; }
if [ ! -s "$tmp" ]; then
    rm "$tmp"
    exit 0
fi

# Perform OCR, copy the result to the clipboard, and show a notification.
tesseract "$tmp" - | xclip -selection clipboard
notify-send "OCR" "Text copied to clipboard"

# Clean up the temporary file.
rm "$tmp"
