#Sprint süresinde deb paketinin sync sekilde jenkins masterda ~/debian_tag klasoru icerisine atilmasini saglar.
#Sprint sonunda en son basarili deb paketi baseline deb olarak tutulur.
#${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}  parametreleri jenkins'de string parameter olarak verilir
#Bu komut her main (gece-periyodik) job'da NF'in ismi ve generate ettigi debian paket ismine göre düzenlenir.
#Her build sonrasi debian paketler Milestone_NF_$Version dizini içerisine kopyalanir.

rsync -avz --delete --exclude 'DEBIAN/' --exclude 'Makefile' --exclude 'systemd/' --exclude "cnrnrf_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}_amd64/" \
~/workspace/CINAR_NRF/CIN/${BRANCH_NAME}/dist/ jenkins@192.168.13.38:/home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/NRF

#container derleme ortamlarinda jenkins master'a ssh baglantisi yapilarak paketin aktarim islemi rsync'e eklenen sshpass sayesinde yapilir.

rsync -avz --rsh="/usr/bin/sshpass -p "cicd123" ssh -o StrictHostKeyChecking=no -l root" --delete --exclude 'DEBIAN/' --exclude 'upfsettings.json' --exclude 'settings.json' --exclude 'Makefile' --exclude "systemd/" --exclude "cnrsmf_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}_amd64/" \
/home/jenkins/workspace/${JOB_NAME}/CIN/${BRANCH_NAME}/dist/ jenkins@192.168.13.38:/home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/SMF_STO