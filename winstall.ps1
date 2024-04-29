# -------------------------------------------
# Windows Auto Install PowerShell Script
# a.k.a. Winstall.ps1
# -------------------------------------------
# This script is made to automate the process
# of installing some basic utilities on fresh
# install of modern variant of Windows(10/11)
# -------------------------------------------

# -------------------------------------------
# TODO: Set the Execution Policy to allow used of script
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# -------------------------------------------

# -------------------------------------------
# Welcome message
echo "| -------------------------------------------"
echo "| Winstall.ps1"
echo "| Welcome to Windows Auto Installation Script"
echo "| Use with caution"
echo "| -------------------------------------------"
echo ""
# -------------------------------------------

# -------------------------------------------
# Update the repositories
echo "| -------------------------------------------"
echo "| Updating the repositories ..."
winget update
echo "| -------------------------------------------"
echo ""

echo "| -------------------------------------------"
echo "| Installation starts ..."
echo "| -------------------------------------------"
# -------------------------------------------

# -------------------------------------------
# Basic Utilities
echo "| Installing 7zip"
winget install "7zip.7zip"
echo ""

echo "| Installing PowerToys"
winget install "Microsoft.PowerToys"
echo ""

echo "| Installing NeatDownloadManager"
winget install "JavadMotallebi.NeatDownloadManager"
echo ""

echo "| Installing NETworkManager"
winget install "BornToBeRoot.NETworkManager"
echo ""

echo "| Installing Microsoft PC Manager"
winget install "9PM860492SZD"
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""
# -------------------------------------------

# -------------------------------------------
# System Infomation
echo "| Installing GPU-Z"
winget install "TechPowerUp.GPU-Z"
echo ""

echo "| Installing CPU-Z"
winget install "CPUID.CPU-Z"
echo ""

echo "| Installing HWMonitor"
winget install "CPUID.HWMonitor"
echo ""

echo "| Installing CrystalDiskMark"
winget install "CrystalDewWorld.CrystalDiskMark"
echo ""

echo "| Installing CrystalDiskInfo"
winget install "XP8K4RGX25G3GM"
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""
# -------------------------------------------

# -------------------------------------------
# Development
echo "| Installing GitHub cli"
winget install "GitHub.cli"
echo ""

echo "| Installing VS Code"
winget install "Microsoft.VisualStudioCode"
echo ""

echo "| Installing Postman"
winget install "Postman.Postman"
echo ""

echo "| Installing PuTTY"
winget install "PuTTY.PuTTY"
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

# -------------------------------------------

# -------------------------------------------
# Entertainment
echo "| Installing Opera GX"
winget install "Opera.OperaGX"
echo ""

echo "| Installing YouTube Music Desktop App"
winget install "th-ch.YouTubeMusic"
echo ""

echo "| Installing BlueStack"
winget install "BlueStack.BlueStacks"
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

echo "| Installing "
winget install ""
echo ""

# -------------------------------------------
