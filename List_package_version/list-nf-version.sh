#!/bin/bash


if [ $# -eq 0 ]
  then
  echo "No input argument supplied!!!!Please input arguments like sto-vto-rto-kto" 
else
for item in "$@"; do  
echo -e  "\n${item^^}"
file=sto-nf-ips.cfg

while read line;
do
IFS='=' read -ra ADDR <<< "$line"
echo -e "\n$line"
ssh  cnrusr@"${ADDR[1]}"  bash -s --  << "EOF"
    
    echo "P5vKG6vE" | sudo -S dpkg -l | grep cnr
   
    exit
EOF

done < $file
done
fi
  

