#Bu script jenkins free style execute shell ile çalıştırılır.
#Amacı son alınan 3 tag öncesini silmektir.
#!/bin/bash

#Major phase_number sprint_number is given when start to jenkins job
echo "Phase and sprint number info for cinar_deneme"

VERSION="${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}"
BUILD_DATE=$( date "+%Y-%m-%d" )

BUILD_INFO="${VERSION}--${BUILD_DATE}"

echo
echo "BUILD_INFO: ${BUILD_NUMBER}-${BUILD_INFO}"
echo

# delete previous success build tag number 

R=3 #keep to last successful 3 build tag 

OLD_BUILD=`expr ${BUILD_NUMBER} - ${R}`  #previous build number

echo $OLD_BUILD

cd CIN/$BRANCH_NAME

git init

git checkout $BRANCH_NAME

git tag -d ${JOB_NAME}-v${VERSION}-b${OLD_BUILD}

git push origin :refs/tags/${JOB_NAME}-v${VERSION}-b${OLD_BUILD}