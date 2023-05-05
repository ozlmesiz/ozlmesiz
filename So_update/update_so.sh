#!/bin/bash


if [ $# -eq 0 ]
  then
  while read line;
do
  IFS='=' read -ra ADDR <<< "$line" 
  
  echo $line
  scp update-cinarframework_1.0.2.sh  jenkins@"${ADDR[1]}":/home/jenkins > /dev/null 2>&1
  ssh -t jenkins@"${ADDR[1]}"   bash -s --  << "EOF"
    
    echo "cicd123" | sudo -S  bash /home/jenkins/update-cinarframework_1.0.2.sh
    exit
EOF
  
done < jenkins_ip.cfg
else
 echo "No need to input parameter.Please delete" $1!!!!
fi

