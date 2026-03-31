#!/bin/bash
# ================================================================
# Project: The Open Source Audit (OSS NGMC)
# Script 1: System Identity and Environment Report
# Student: Rudransh Mishra | Roll: 24BAS10045
# ================================================================

# Defining the Variables
SNAME="Rudransh Mishra"
RNO="24BAS10045"
SW_AUDIT="Python"

echo "------------------------------------------------"
echo " OPEN SOURCE AUDIT - SYSTEM IDENTITY REPORT"
echo "------------------------------------------------"
echo "Student Name    : $SNAME"
echo "Roll Number     : $RNO"
echo "Software Audited: $SW_AUDIT"
echo "------------------------------------------------"

# Fetching System Details (as per the Requirement Part B)
echo "Operating System: $(uname -o)"
echo "Kernel Version  : $(uname -r)"
echo "Current User    : $(whoami)"
echo "System Uptime   : $(uptime -p)"
echo "Current Date    : $(date)"

echo "------------------------------------------------"
echo "Audit Note: This environment supports $SOFTWARE_AUDIT."
echo "Environment check complete."
