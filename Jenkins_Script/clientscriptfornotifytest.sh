#!/bin/bash

#Fonksiyonel test'ler için client'lari bu script üzerinden çalistiriyoruz. 
#jenkins execute shell kisminda bu script çalistirilarak client'larin çalismasi saglanir.

cd /opt/cinar/clients

path=($(ls -l | awk '{print $9}'))

echo "${path[@]}"

for i in "${path[@]}"
do
        cd ${i}
        chmod +x app
        ./app > app_${i}.txt &
        cd ../
done

#jenkins job üzerinde test'ler çalistirilir. Testlerin tamamlanmasinin ardindan çalistirilan client'lar kill edilir. 

# bu kisim script içerisinden çikarilip, jenkins execute shell'de task siralamasina göre en son'a yazilabilir.
set +e

apparray=($(ps aux | grep "./app" | awk '{print $2}'))

for i in "${apparray[@]}"; do kill -9 $i; done

true