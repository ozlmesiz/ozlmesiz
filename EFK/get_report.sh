#!/bin/bash

date=$(date '+%Y-%m-%d')

while IFS='=' read -ra line
do
  echo ${line[0]} ${line[1]}
 if [ "${line[0]}" = "NRF1" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "NRF2" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "NRF3" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "AMF1" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "AMF2" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "AMF3" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "AUSF" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "UDM" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "UDR" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "SMF1" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "SMF2" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "SMF3" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_AMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_CS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_NFRS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_PES" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_SMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF1_IWS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF2_AMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF2_CS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF2_PES" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF2_SMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv 
  elif [ "${line[0]}" = "PCF2_IWS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv	
  elif [ "${line[0]}" = "PCF2_NFRS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv	
  elif [ "${line[0]}" = "PCF3_AMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF3_CS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF3_PES" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF3_SMS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF3_NFRS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "PCF3_IWS" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "NEF" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv
  elif [ "${line[0]}" = "NSSF1" ]
   then
    curl -XGET -u elastic:test123 http://192.168.13.238:5601/${line[1]} >> STO_${line[0]}_${date}_Alarm_Report.csv

 fi
done < link.txt
