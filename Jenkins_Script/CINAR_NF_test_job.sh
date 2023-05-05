#Fonksiyonel test jenkins freestyle execute shell komurlari

#!bin/bash

export CINAR_BASE=/opt/cinar

export CINAR_CODE_GENERATOR_DIR=$CINAR_BASE/bin/ccg

export CINAR_YAML_DIR=/home/jenkins/workspace/${JOB_NAME}/YAML/5gc_api

#Notify test'i için 7 tane client çalistirilir.

cd /opt/cinar/clients

path=($(`ls -l | awk '{print $9}'`))

echo "${path[@]}"

for i in "${path[@]}"
do
        cd ${i}
        chmod +x app
        ./app > app_${i}.txt &
        cd ../
done

cd /home/jenkins/workspace/${JOB_NAME}

chmod +x generatejavascriptclient.sh

./generatejavascriptclient.sh


#çalistirilan client'lar kill edilir. 

set +e

apparray=($(ps aux | grep "./app" | awk '{print $2}'))

for i in "${apparray[@]}"; do kill -9 $i; done

true
