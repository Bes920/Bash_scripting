#!/bin/bash 
if ping -c 2 8.8.8.8 >/dev/null 2>&1; then
    echo "Internet connection detected. Starting updates..."
    sudo apt update && sudo apt upgrade -y
else
    echo "No internet connection. Update aborted."
    exit 1
fi
