#!/bin/bash


if [ $# -eq 0 ]
  then
  while read line;
do
  IFS='=' read -ra ADDR <<< "$line"


  ssh  jenkins@"${ADDR[1]}"  bash -s --  << "EOF"
    
    echo "cicd123" | sudo -S   /opt/cinar/bin/ccg/update.sh
    exit
EOF
done < jenkins_ip.cfg
else
 echo "No need to input parameter.Please delete" $1!!!!
fi

