#!/bin/bash
# ================================================================
# Script 5: Open Source Manifesto Generator
# Purpose: Interactive script to create a personal FOSS manifesto
# Student: Rudransh Mishra | Roll: 24BAS10045
# ================================================================

# Define output file
MANIFESTO="manifesto_$(whoami).txt"

echo "------------------------------------------------"
echo " OPEN SOURCE MANIFESTO CREATOR"
echo "------------------------------------------------"

# Interactive Inputs (Requirement Page 10)
read -p "Enter your favorite Open Source Tool (e.g. Python): " TOOL
read -p "In one word, what does Open Source mean to you? (e.g. Freedom): " FREEDOM
read -p "What is one thing you want to build with OSS?: " PROJECT

# Generate the file
echo "MY OPEN SOURCE MANIFESTO" > $MANIFESTO
echo "--------------------------------" >> $MANIFESTO
echo "Name    : Rudransh Mishra" >> $MANIFESTO
echo "Roll    : 24bas10045" >> $MANIFESTO
echo "Tool    : $TOOL" >> $MANIFESTO
echo "Vision  : $FREEDOM" >> $MANIFESTO
echo "Goal    : To build $PROJECT using community-driven software." >> $MANIFESTO
echo "--------------------------------" >> $MANIFESTO
echo "Signed  : $(whoami)" >> $MANIFESTO
echo "Date    : $(date)" >> $MANIFESTO

echo "------------------------------------------------"
echo "[SUCCESS] Your manifesto has been saved to: $MANIFESTO"
echo "Check the file using 'cat $MANIFESTO'"
echo "------------------------------------------------"
