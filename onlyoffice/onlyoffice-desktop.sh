#!/bin/bash
# This is an installation script for onlyoffice desktop editor
# for debian, ubuntu and deriatives
# strictly run this script with bash only
# read more at https://helpcenter.onlyoffice.com/installation/desktop-install-ubuntu.aspx

# Create the keyring for onlyoffice desktop editor
mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg

# Add the keyring into apt keyring list
echo 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list

# Install from repositories
sudo apt-get update
sudo apt-get install onlyoffice-desktopeditors

## To uninstall, run the following command:
# sudo apt-get purge onlyoffice-desktopeditors
