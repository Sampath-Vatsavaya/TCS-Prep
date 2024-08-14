#!/bin/bash

read -p "Enter Name:" name
read -p "Enter New Destination:" newDestination

currDestination=$( grep "$name" passenger.txt | awk -F '|' ' { print $3 } ' ) 
echo $currDestination
index=$(grep -n "$name" passenger.txt | awk -F ':' ' { print $1 }')
echo $index
sed "$index s/$currDestination/$newDestination/" passenger.txt | cat > passenger.txt
