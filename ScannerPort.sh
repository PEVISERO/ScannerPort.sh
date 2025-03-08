#!/bin/bash

function ctrl_c () {

        echo -e  "\n[!] Exiting... \n \n"
        sleep 1
        exit 1
}


trap ctrl_c INT

if [ -z "$1" ]
       then
           echo "Correct usage ./ScannerPort.sh <IP>"
           exit 1
       else
           echo "Target IP $1"
       fi
           echo "Runing NMAP"

# Run Nmap scan on target and save results to file
	
	       nmap -p- --open -sS -sV -sC -vvv -n $1> scan_results.txt

	echo "Scan complete results written in scan_results.txt"

	
