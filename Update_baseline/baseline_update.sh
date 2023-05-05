#!/bin/bash

while IFS='=' read -ra line
do
  echo ${line[0]} ${line[1]}
  if [ "${line[0]}" = "nrf" ]
   then
    ssh -t cnrusr@"${line[1]}"  << EOF
    sudo apt-get update
    sudo apt-get install -y --allow-unauthenticated cnrnrf 
    sudo apt-get install -y --allow-unauthenticated cnrnssf
    sudo apt-get install -y --allow-unauthenticated cnrnef
    exit
EOF
 elif [ "${line[0]}" = "amf" ]
   then
     ssh -t cnrusr@"${line[1]}" << EOF
     sudo apt-get update
     sudo apt-get install -y --allow-unauthenticated libcnramf-common
     sudo apt-get install -y --allow-unauthenticated cnramf
     exit
EOF
  elif [ "${line[0]}" = "smf" ]
    then
     ssh -t cnrusr@"${line[1]}" << EOF
     sudo apt-get update
     sudo apt-get install -y --allow-unauthenticated libcnrsmf-common
     sudo apt-get install -y --allow-unauthenticated cnrsmf
     exit
EOF
  elif [ "${line[0]}" = "upf" ]
    then 
     ssh -t cnrusr@"${line[1]}"  << EOF
     sudo apt-get update
     sudo apt-get install -y --allow-unauthenticated cnrupf
     exit
EOF
  elif [ "${line[0]}" = "ausf" ]
    then 
     ssh -t cnrusr@"${line[1]}"  << EOF
      sudo apt-get update
      sudo apt-get install -y --allow-unauthenticated libcnr5gmessages
      sudo apt-get install -y --allow-unauthenticated libcnrcommon
      sudo apt-get install -y --allow-unauthenticated libcnrhttp1
      sudo apt-get install -y --allow-unauthenticated libcnrhttp2
      sudo apt-get install -y --allow-unauthenticated cnrausf
     exit
EOF
  elif [ "${line[0]}" = "udm" ]
    then 
     ssh -t cnrusr@"${line[1]}"  << EOF
     sudo apt-get update
     sudo apt-get install -y --allow-unauthenticated libcnr5gmessages
     sudo apt-get install -y --allow-unauthenticated libcnrcommon
     sudo apt-get install -y --allow-unauthenticated libcnrhttp1
     sudo apt-get install -y --allow-unauthenticated libcnrhttp2
     sudo apt-get install -y --allow-unauthenticated cnrudm
    exit
EOF
  elif [ "${line[0]}" = "udr" ] 
    then 
     ssh -t cnrusr@"${line[1]}"  << EOF
     sudo apt-get update
     sudo apt-get install -y --allow-unauthenticated libcnr5gmessages
     sudo apt-get install -y --allow-unauthenticated libcnrcommon
     sudo apt-get install -y --allow-unauthenticated libcnrhttp1
     sudo apt-get install -y --allow-unauthenticated libcnrhttp2
     sudo apt-get install -y --allow-unauthenticated cnrudr
    exit
EOF
  elif [ "${line[0]}" = "pcf" ]
    then 
     ssh -t cnrusr@"${line[1]}"  << EOF
     sudo apt-get update
	 sudo apt-get install -y --allow-unauthenticated libcnrpcfcommon
     sudo apt-get install -y --allow-unauthenticated cnrpcfams
     sudo apt-get install -y --allow-unauthenticated cnrpcfcs
     sudo apt-get install -y --allow-unauthenticated cnrpcfiws
     sudo apt-get install -y --allow-unauthenticated cnrpcfnfrs
     sudo apt-get install -y --allow-unauthenticated cnrpcfoms
     sudo apt-get install -y --allow-unauthenticated cnrpcfpes
     sudo apt-get install -y --allow-unauthenticated cnrpcfsms
     exit
EOF

fi
done < new_sto_ip.txt
