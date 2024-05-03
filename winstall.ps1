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
Write-Output "| -------------------------------------------"
Write-Output "| Winstall.ps1"
Write-Output "| Welcome to Windows Auto Installation Script"
Write-Output "| Use with caution"
Write-Output "| -------------------------------------------"
Write-Output ""
# -------------------------------------------

# -------------------------------------------
# Update the repositories
Write-Output "| -------------------------------------------"
Write-Output "| Updating the repositories ..."
winget update
Write-Output "| -------------------------------------------"
Write-Output ""

Write-Output "| -------------------------------------------"
Write-Output "| Installation starts ..."
Write-Output "| -------------------------------------------"
# -------------------------------------------

# -------------------------------------------
# Basic Utilities
Write-Output "| Installing 7zip"
winget install "7zip.7zip"
Write-Output ""

Write-Output "| Installing PowerToys"
winget install "Microsoft.PowerToys"
Write-Output ""

Write-Output "| Installing NeatDownloadManager"
winget install "JavadMotallebi.NeatDownloadManager"
Write-Output ""

Write-Output "| Installing NETworkManager"
winget install "BornToBeRoot.NETworkManager"
Write-Output ""

Write-Output "| Installing Microsoft PC Manager"
winget install "9PM860492SZD"
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""
# -------------------------------------------

# -------------------------------------------
# System Infomation
Write-Output "| Installing GPU-Z"
winget install "TechPowerUp.GPU-Z"
Write-Output ""

Write-Output "| Installing CPU-Z"
winget install "CPUID.CPU-Z"
Write-Output ""

Write-Output "| Installing HWMonitor"
winget install "CPUID.HWMonitor"
Write-Output ""

Write-Output "| Installing CrystalDiskMark"
winget install "CrystalDewWorld.CrystalDiskMark"
Write-Output ""

Write-Output "| Installing CrystalDiskInfo"
winget install "XP8K4RGX25G3GM"
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""
# -------------------------------------------

# -------------------------------------------
# Development
Write-Output "| Installing GitHub cli"
winget install "GitHub.cli"
Write-Output ""

Write-Output "| Installing VS Code"
winget install "Microsoft.VisualStudioCode"
Write-Output ""

Write-Output "| Installing Postman"
winget install "Postman.Postman"
Write-Output ""

Write-Output "| Installing PuTTY"
winget install "PuTTY.PuTTY"
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

# -------------------------------------------

# -------------------------------------------
# Entertainment
Write-Output "| Installing Opera GX"
winget install "Opera.OperaGX"
Write-Output ""

Write-Output "| Installing YouTube Music Desktop App"
winget install "th-ch.YouTubeMusic"
Write-Output ""

Write-Output "| Installing BlueStack"
winget install "BlueStack.BlueStacks"
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

Write-Output "| Installing "
winget install ""
Write-Output ""

# -------------------------------------------
