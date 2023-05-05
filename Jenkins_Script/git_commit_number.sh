#jenkins job içerisinde aşağıdaki komutlar çalıştırılarak, build adlandırmasına ilave total commit sayısı eklenir.
#Total commit number in Sprint duration
#version.txt dosyası update build name kısmında kullanılır.

git init

git checkout $BRANCH_NAME

TOTAL_COMMIT=`git rev-list ${BRANCH_NAME} --count --since=$SPRINT_START_DATE`

echo '#'${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}.${BUILD_NUMBER}-Commits:${TOTAL_COMMIT} > version.txt