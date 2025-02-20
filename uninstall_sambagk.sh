#!/bin/bash

# Installation path
INSTALL_PATH="/usr/local/bin/sambagk"

echo "Starting uninstallation of sambagk..."

# Check if the script exists
if [ -f "$INSTALL_PATH" ]; then
    sudo rm -f $INSTALL_PATH
    echo "✅ sambagk has been successfully removed."
else
    echo "sambagk was not found at $INSTALL_PATH."
fi

# Optional samba removal
read -p "Do you want to uninstall Samba as well? (y/n): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo "🗑️ Removing Samba..."
    sudo apt remove --purge -y samba
    sudo apt autoremove -y
    echo "✅ Samba has been uninstalled."
else
    echo "Samba remains installed."
fi
