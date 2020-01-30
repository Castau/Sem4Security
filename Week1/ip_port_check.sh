#!/bin/bash
echo "Running DPT and SRC lookup from ufw log"
echo " "
echo "Attempt access on following ports"
echo "_______________________________________"
grep -Po '(?<=DPT=)[^ ]*' /var/log/ufw.log | sort | uniq -c

echo " "
echo "Attempt comming from these sources"
echo "_______________________________________"
grep -Po '(?<=SRC=)[^ ]*' /var/log/ufw.log | sort | uniq -c
echo " "
echo "_______________________________________"
echo " "