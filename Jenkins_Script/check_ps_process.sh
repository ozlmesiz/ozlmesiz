#!/bin/bash
for i in cnrudm cnrudr cnrausf;
do
echo ${i}
if [[ $(sudo lsof -i -P -n | grep ${i} | awk '{print $2}' | head -n 1) -gt 0 ]]  
then
  echo "process not kill"
  var=`sudo lsof -i -P -n | grep ${i} | awk '{print $2}' | head -n 1`
  echo $var
  sudo kill -9 $var
else
  echo "process has already killed" 
fi
done 
