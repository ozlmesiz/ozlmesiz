#asagidaki komutlar jenkins freestyle job'inda execute shell build içerisinde çalistirilir.
#bu komutlar Cinar projesindeki NF'lerin derlenip test süreçlerinden geçmesi, debian paketlerinin olusturulmasi ortamlara dagitimi
#ve sürüm numaralarinin kontrol edilmesi amaci ile kullanilir.
#NF'lerin kullandigi sertifikalarin guncellenmesi yapilir.(Guncel sertifikalar jenkins build node'larda /opt/cinar/certificate/ dizininde tutulur. )
#Bu dizin içerisinde NF'lerin derlendigi dizin içerisine kopyalanarak sertifikalar update edilir.

cd CIN/$BRANCH_NAME

export CINAR_BASE=/opt/cinar

export CINAR_CODE_GENERATOR_DIR=$CINAR_BASE/bin/ccg

export CINAR_YAML_DIR=/home/jenkins/workspace/${JOB_NAME}/CIN/CINAR_YAML/YAML

cp -R /opt/cinar/certificate/ /home/jenkins/workspace/${JOB_NAME}/CIN/$BRANCH_NAME

make dist
make doc

#Defined missing unit test with python script

python /home/jenkins/UnittestPython/missingFileFinder.py -dp src -xp coverage-cnrnrf.xml -e Cinar -o missingUnittest_CINAR_NRF

git init

git checkout $BRANCH_NAME

TOTAL_COMMIT=`git rev-list ${BRANCH_NAME} --count --since=$SPRINT_START_DATE`

echo '#'${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}-Commits:${TOTAL_COMMIT} > version.txt

#Sprint süresinde deb paketinin sync sekilde jenkins masterda ~/debian_tag klasoru icerisine atilmasini saglar.
#Sprint sonunda en son basarili deb paketi Milestone deb olarak tutulur.

rsync -avz --delete --exclude 'DEBIAN/' --exclude 'Makefile' --exclude 'systemd/' --exclude "cnrnrf_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}_amd64/" \
~/workspace/${JOB_NAME}/CIN/developer/dist/ jenkins@192.168.13.38:/home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/NRF