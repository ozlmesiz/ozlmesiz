#!/bin/bash

input="/home/ubuntu/nfName.txt"
 
while read -r line
do

echo -e "\n\n$line-->ssh connection is successfull "

systemctl -a -t service --full --all --plain --no-legend |  grep loaded | grep "cnr$line" | cut  -d ' ' -f 1 | while read s;
do
    sudo systemctl stop "$s";
   echo "Check service status after stop"
   if [ $(systemctl  is-active "$s") == "active" ]
then

    echo -e "$s is running.....\n"
else
    echo -e "!!!!!!!!!!!!!!!$s is not running!!!!!!!!!!!!!!!\n"

fi

done

done < "$input"

