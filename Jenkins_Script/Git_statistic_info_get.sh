#!/bin/bash

#Git plugin ile repository'ler Multiple SCM bolumunde secilir ve her bir repo subdirectory'e atilir.
#Her yeni repository eklendikce Add SCM >git  ile eklenir.

#${PHASE_NUMBER} String parametre olarak job'a eklenir.

rm -rf ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

rm -rf *@tmp

#Aselsan_common ve Aselsan_5G_common repository'leri cok fazla subdirectory'e sahip olduklari 
#için git komutlari icerisinde --recurse-submodules ile tüm subdirectory'ler taranir.

echo "Phase ${PHASE_NUMBER} Bitbucket istatistiksel bilgileri" >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ASELSAN_Common/

git checkout developer

echo  "ASELSAN_Common Repository BB istatistik bilgileri"

echo  "ASELSAN_Common Total File number:"`git ls-files | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Src File number:"`git ls-files --recurse-submodules | grep -i /src* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Test File number:"`git ls-files --recurse-submodules | grep -i /test* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Line of code:"`git ls-files | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Src Line of code:"`git ls-files --recurse-submodules | grep -i /src* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Test Line of code:"`git ls-files --recurse-submodules --recurse-submodules | grep -i /test* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_Common Total Commit number for phase $PHASE_NUMBER:"`git rev-list --count developer --since="01 April 2019"` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "  "  >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

cd ASELSAN_5G_Common/

git checkout developer

echo  "ASELSAN_5G_Common Repository BB istatistik bilgileri"

echo  "ASELSAN_5G_Common Total File number:"`git ls-files | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Src File number:"`git ls-files --recurse-submodules | grep -i /src* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Test File number:"`git ls-files --recurse-submodules | grep -i /test* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Line of code:"`git ls-files | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Src Line of code:"`git ls-files --recurse-submodules | grep -i /src* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Test Line of code:"`git ls-files --recurse-submodules --recurse-submodules | grep -i /test* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN_5G_Common Total Commit number for phase $PHASE_NUMBER:"`git rev-list --count developer --since="01 April 2019"` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo "  " >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

#AUSFUDMUDR repository'si 3 modulu subdirectory olarak içerdigi için her biri ayri bir repository gibi degerlendirilir.

cd AUSFUDMUDR/

git checkout developer

echo  "ASELSAN AUSFUDMUDR Total File number:"`git ls-files --recurse-submodules  | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN AUSFUDMUDR Total Line of code:"`git ls-files --recurse-submodules  | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "ASELSAN AUSFUDMUDR Total Commit number for phase $PHASE_NUMBER:"`git rev-list --count developer --since="01 April 2019"` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

path=($(ls -l | awk '{print $9}'))

echo "${path[@]}"

for i in "${path[@]}"

do
         

        echo  "ASELSAN ${i} Total Src File number:"`git ls-files --recurse-submodules | grep -i ^${i}/src* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

        echo  "ASELSAN ${i} Total Test File number:"`git ls-files --recurse-submodules  | grep -i ^${i}/test* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

        echo  "ASELSAN ${i} Total Src Line of code:"`git ls-files --recurse-submodules  | grep -i ^${i}/src* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

        echo  "ASELSAN ${i} Total Test Line of code:"`git ls-files --recurse-submodules | grep -i ^${i}/test* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

        
        
done

echo  " " >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

NF=($(ls -l | awk '{print $9}' |  grep -v ASELSAN_ | grep -v AUSFUDMUDR))

echo "${NF[@]}"

for i in "${NF[@]}"

do 

cd ${i}

git checkout developer

echo  "${i} Repository BB istatistik bilgileri"

echo  "${i} Total File number:"`git ls-files | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Src File number:"`git ls-files | grep -i ^src* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Test File number:"`git ls-files | grep -i ^test* | wc -l` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Line of code:"`git ls-files | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Src Line of code:"`git ls-files | grep -i ^src* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Test Line of code:"`git ls-files | grep -i ^test* | xargs wc -l | grep -i total` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "${i} Total Commit number for phase $PHASE_NUMBER:"`git rev-list --count developer --since="01 April 2019"` >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

echo  "  " >> ~/workspace/bb_statistic_phase_${PHASE_NUMBER}.txt

cd ../

done


