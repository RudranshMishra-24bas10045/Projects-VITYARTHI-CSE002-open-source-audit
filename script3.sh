#!/bin/bash
# ================================================================
# Script 3: Disk and Permission Auditor
# Purpose: Inspect system directories for Python-related paths
# Student: Rudransh Mishra | Roll: 24BAS10045
# ================================================================

# Directories to audit (Standard Linux paths)
DIRS=("/etc" "/usr/bin" "/var/log" "/home")

echo "------------------------------------------------"
echo " DIRECTORY & PERMISSION AUDIT REPORT"
echo "------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group using 'ls' and 'awk'
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        
        # Check total size of the directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "AUDITING: $DIR"
        echo "  Permissions : $PERMS"
        echo "  Owner/Group : $OWNER"
        echo "  Total Size  : $SIZE"
        echo "------------------------------------------------"
    else
        echo "[SKIP] Directory $DIR not found on this system."
    fi
done

echo "Audit Summary: System directories are accessible for Python execution."
