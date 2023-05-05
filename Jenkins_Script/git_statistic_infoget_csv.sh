#!/bin/bash

#Git plugin ile repository'ler Multiple SCM bolumunde secilir ve her bir repo subdirectory'e atilir.

#Her yeni repository eklendikce Add SCM >git  ile eklenir.

#${PHASE_NUMBER} String parametre olarak job'a eklenir.

rm -rf ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

rm -rf *@tmp

#Aselsan_common ve Aselsan_5G_common repository'leri cok fazla subdirectory'e sahip olduklari 
#için git komutlari icerisinde --recurse-submodules ile tüm subdirectory'ler taranir.

cd ASELSAN_Common/

git checkout developer

echo  "ASELSAN_Common" `git ls-files --recurse-submodules | grep -i /src* | wc -l` `git ls-files --recurse-submodules | grep -i /test* | wc -l`  \
`git ls-files --recurse-submodules | grep -i /src* | xargs wc -l | grep -i total` \
`git ls-files --recurse-submodules --recurse-submodules | grep -i /test* | xargs wc -l | grep -i total` /
`git ls-files | xargs wc -l | grep -i total`>> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

cd ASELSAN_5G_Common/

git checkout developer
 
echo  "ASELSAN_5G_Common" `git ls-files --recurse-submodules | grep -i /src* | wc -l` `git ls-files --recurse-submodules | grep -i /test* | wc -l`  \
`git ls-files --recurse-submodules | grep -i /src* | xargs wc -l | grep -i total` \
`git ls-files --recurse-submodules --recurse-submodules | grep -i /test* | xargs wc -l | grep -i total` \
`git ls-files | xargs wc -l | grep -i total`>> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

#AUSFUDMUDR repository'si 3 modulu subdirectory olarak içerdigi için her biri ayri bir repository gibi degerlendirilir.

cd AUSFUDMUDR/

git checkout developer

path=($(ls -l | awk '{print $9}' | grep -v Makefile))

echo "${path[@]}"

for i in "${path[@]}"

do
        echo "${i}" `git ls-files --recurse-submodules | grep -i ^${i}/src* | wc -l` `git ls-files --recurse-submodules  | grep -i ^${i}/test* | wc -l` \
        `git ls-files --recurse-submodules  | grep -i ^${i}/src* | xargs wc -l | grep -i total` \
        `git ls-files --recurse-submodules | grep -i ^${i}/test* | xargs wc -l | grep -i total` \
        `git ls-files --recurse-submodules  | xargs wc -l | grep -i total`>> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt
             
done

cd ../

NF=($(ls -l | awk '{print $9}' |  grep -v ASELSAN_ | grep -v AUSFUDMUDR))

echo "${NF[@]}"

for i in "${NF[@]}"

do 

cd ${i}

git checkout developer

echo  "${i}" `git ls-files | grep -i ^src* | wc -l` `git ls-files | grep -i ^test* | wc -l` `git ls-files | grep -i ^src* | xargs wc -l | grep -i total` \
`git ls-files | grep -i ^test* | xargs wc -l | grep -i total` \
`git ls-files | xargs wc -l | grep -i total`>> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

done


cd ~/workspace/

#txt formatindan csv formatina dönusturulur.

sed -i 's/total//g' bb_statistic_phase_${PHASE_NUMBER}.txt

{ echo "NF,Source Files,Test Files,Source LoC,Test LoC,Total LoC"; sed -e 's/[[:space:]]\{1,\}/,/g' bb_statistic_phase_${PHASE_NUMBER}.txt; } > \
bb_statistic_pahse_${PHASE_NUMBER}.csv