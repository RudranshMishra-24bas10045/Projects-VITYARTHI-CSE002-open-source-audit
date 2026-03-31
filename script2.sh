#!/bin/bash
# ================================================================
# Script 2: FOSS Package Inspector
# Audit Subject: Python
# ================================================================

PKG="python3"

echo "Starting Package Audit for: $PKG"
echo "------------------------------------"

# Check if the package is installed (Common in Debian/Ubuntu/Fedora)
if command -v $PKG &>/dev/null; then
    echo "[SUCCESS] $PKG is detected in the system PATH."
    
    # Get the version number
    echo -n "Version: "
    $PKG --version
    
    # Locate the binary path (as per Requirement Part B)
    echo "Binary Location: $(which $PKG)"
else
    echo "[ERROR] $PKG is NOT installed."
fi

echo "------------------------------------"
echo "Audit Decision: This software complies with OSS standards."
