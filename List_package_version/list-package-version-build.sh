#!/bin/bash


file=jenkins_ip.cfg

while read line;
do
IFS='=' read -ra ADDR <<< "$line"
echo -e "\n$line"
ssh  jenkins@"${ADDR[1]}"  bash -s --  << "EOF"
    
    echo "cicd123" | sudo -S dpkg -l | grep libprometheuscpp
   
    exit
EOF

done < $file

  

