#!/bin/bash
rm -rf version.txt

for i in $(cat /home/cnrusr/baselinescript/kto.txt)
 do
   echo ${i} >> version.txt
   ssh cnrusr@"${i}" dpkg -l | grep cnr${line[0]} | awk '{print $2 $3 }' >> version.txt
done
