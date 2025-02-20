#!/bin/bash

# Installation path
INSTALL_PATH="/usr/local/bin/sambagk"

echo "🔧 Starting installation of sambagk..."

# Check if samba is installed
if ! dpkg -l | grep -qw samba; then
    echo "📦 Samba is not installed. Installing..."
    sudo apt update && sudo apt install -y samba
else
    echo "✅ Samba is already installed."
fi

# Check if nano is installed
if ! dpkg -l | grep -qw nano; then
    echo "Nano is not installed. Installing..."
    sudo apt update && sudo apt install -y nano
else
    echo "Nano is already installed."
fi

# Copy the script
if [ -f "./sambagk" ]; then
    echo "Copying sambagk to $INSTALL_PATH ..."
    sudo cp sambagk $INSTALL_PATH
    sudo chmod +x $INSTALL_PATH
    echo "sambagk has been successfully installed! Run it using: sambagk"
else
    echo "Error: sambagk script not found in the current directory."
    echo "Make sure the script is in the same folder as this installation script."
fi
