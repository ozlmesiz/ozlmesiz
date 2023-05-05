#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No input argument supplied!!!!Please input argument like true or false" 
else
  while read line;
do
  IFS='=' read -ra ADDR <<< "$line"

  echo   ${ADDR[0]} 
  ssh cnrusr@"${ADDR[1]}" python -u - --opt $1 ${ADDR[0]}  < modify.py
  

done < nf.cfg
fi


