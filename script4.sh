#!/bin/bash
# ================================================================
# Script 4: Log File Analyzer
# Purpose: Scan system logs for "error" or "fail" keywords
# Student: Rudransh Mishra | Roll: 24BAS10045
# ================================================================

# Define standard Linux log file locations
LOGFILE="/var/log/syslog"
[ ! -f "$LOGFILE" ] && LOGFILE="/var/log/messages" # Backup path for different distros

KEYWORD="error"
FAILWORD="fail"

echo "------------------------------------------------"
echo " SYSTEM LOG AUDIT REPORT"
echo "------------------------------------------------"

if [ -f "$LOGFILE" ]; then
    echo "Auditing Log File: $LOGFILE"
    
    # Count occurrences (case-insensitive)
    ERR_COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")
    FAIL_COUNT=$(grep -ic "$FAILWORD" "$LOGFILE")
    
    echo "Keyword '$KEYWORD' occurrences: $ERR_COUNT"
    echo "Keyword '$FAILWORD' occurrences: $FAIL_COUNT"
    
    # Display the last 3 critical lines
    echo "------------------------------------------------"
    echo "Recent Critical Entries:"
    tail -n 100 "$LOGFILE" | grep -iE "$KEYWORD|$FAILWORD" | tail -n 3
else
    echo "[ERROR] Log file $LOGFILE not accessible."
    echo "Try running with 'sudo' if permissions are denied."
fi

echo "------------------------------------------------"
echo "Audit complete. Summary: Python environment logs inspected."
