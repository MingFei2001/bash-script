#!/bin/sh

# ocr-screenshot.sh: Capture a screen region, perform OCR, and copy text to clipboard.
#
# This script utilizes 'flameshot' for screenshot capture, 'tesseract' for OCR,
# and 'xclip' to place the extracted text onto the clipboard. A notification confirms success.
#
# Usage:
# Bind this script to a keyboard shortcut in your window manager (e.g., i3wm).
# Example for i3wm: `bindsym $mod+Shift+o exec --no-startup-id /path/to/ocr-screenshot.sh`
# Upon execution, select a screen area; the recognized text will be copied.

tmp=$(mktemp /tmp/ocrshot-XXXXXX.png)
flameshot gui -r > "$tmp"
tesseract "$tmp" - | xclip -selection clipboard
notify-send "OCR" "Text copied to clipboard"
rm "$tmp"
