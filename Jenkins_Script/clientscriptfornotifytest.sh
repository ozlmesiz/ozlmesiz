#!/bin/bash

#Fonksiyonel test'ler i�in client'lari bu script �zerinden �alistiriyoruz. 
#jenkins execute shell kisminda bu script �alistirilarak client'larin �alismasi saglanir.

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

#jenkins job �zerinde test'ler �alistirilir. Testlerin tamamlanmasinin ardindan �alistirilan client'lar kill edilir. 

# bu kisim script i�erisinden �ikarilip, jenkins execute shell'de task siralamasina g�re en son'a yazilabilir.
set +e

apparray=($(ps aux | grep "./app" | awk '{print $2}'))

for i in "${apparray[@]}"; do kill -9 $i; done

true