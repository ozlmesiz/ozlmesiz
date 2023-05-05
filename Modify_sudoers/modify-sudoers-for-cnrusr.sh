
#!/bin/bash

if [ $# -eq 0 ]
  then
  while read line;
do
  IFS='=' read -ra ADDR <<< "$line"

echo $line

ssh -t cnrusr@"${ADDR[1]}"  "echo 'cnrusr ALL=(ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo"

done < nf.cfg  
else
 echo "No need to input parameter.Please delete" $1!!!!
fi
