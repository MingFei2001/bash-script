# bash-script
A collection of bash script

## Table of Content
1. [DDRWST: DD Read/Write SpeedTest](./ddrwst.sh)
2. [X11 Text Extractor Script: OCR Screenshot](./ocr-screenshot.sh)
3. [nothing yet ...](#)

---

## Scripts

### [DDRWST: DD Read/Write SpeedTest](./ddrwst.sh)
Measures the sequential read and write speed of a storage device by creating a temporary test file. It uses `dd` to bypass the system cache for more accurate results.

- **Dependencies**: `dd` (pre-installed on most Linux systems).
- **Usage**: Run the script with a path to the target drive.
- **Example**: `./ddrwst.sh /path/to/drive`

### [X11 Text Extractor Script](./ocr-screenshot.sh)
Captures a screen region, performs OCR, and copies the extracted text to the clipboard.

- **Dependencies**: `flameshot`, `tesseract-ocr`, `xclip`, `libnotify-bin`
- **Usage**: Bind the script to a hotkey in your window manager or desktop environment.
- **Example (i3wm)**: `bindsym --release $mod+Shift+o exec /path/to/ocr-screenshot.sh`

---

## LICENSE
This project is licensed under the [MIT License](./LICENSE) - see the LICENSE file for details.