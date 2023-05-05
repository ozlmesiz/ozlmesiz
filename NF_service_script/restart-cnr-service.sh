#!/bin/bash

echo `date`
if [ $# -eq 0 ]
  then
    echo "No input argument supplied!!!!Please input arguments like amf-smf-upf-udr-udm-ausf" 
else
for item in "$@"; do  
      
if [ "$item" = "amf" ] || [ "$item" = "smf" ] || [ "$item" = "upf" ] || [ "$item" = "udm" ] || [ "$item" = "udr" ] || [ "$item" = "ausf" ] || [ "$item" = "nrf" ] || [ "$item" = "pcf" ] 
then

while read line;
do
  IFS='=' read -ra ADDR <<< "$line" 
  if [ "${ADDR[0]}" == $item ]
  then
  echo -e ${ADDR[0]}  > nfName.txt
  scp nfName.txt ubuntu@"${ADDR[1]}":/home/ubuntu > /dev/null 2>&1
  ssh ubuntu@"${ADDR[1]}" 'bash -s' < ./operations/restart-operations.sh 
  rm nfName.txt
  fi
done < nf.cfg

 else
  echo "$item is wrong argument !!!!Please input arguments like amf-smf-upf-udr-udm-ausf" 
fi
done
fi

echo `date`
