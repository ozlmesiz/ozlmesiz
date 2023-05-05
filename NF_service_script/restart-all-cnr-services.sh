#!/bin/bash
echo `date`

if [ $# -eq 0 ]
  then
  while read line;
do
  IFS='=' read -ra ADDR <<< "$line" 
  
  echo -e ${ADDR[0]}  > nfName.txt
  scp nfName.txt ubuntu@"${ADDR[1]}":/home/ubuntu > /dev/null 2>&1
  ssh ubuntu@"${ADDR[1]}" 'bash -s' < ./operations/restart-operations.sh 
  rm nfName.txt
  
done < nf.cfg  
else
 echo "No need to input parameter.Please delete" $1!!!!
fi
echo `date`

