#!/bin/bash

while read line;
do
  IFS='=' read -ra ADDR <<< "$line"
 sshpass  -p "secret321" ssh-copy-id   ubuntu@"${ADDR[1]}"

done < nf.cfg

