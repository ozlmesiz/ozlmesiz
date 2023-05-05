#!/bin/bash

date=$(date '+%Y-%m-%d-%H:%M:%S')

for i in $(cat link.txt)
  do
  curl -XGET -u elastic:test123 http://172.19.0.62:5601/${i} >> STO_Alarm_Report_${date}.csv
  done