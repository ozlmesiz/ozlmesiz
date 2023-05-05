#Bu script jenkins freestyle job üzerinde çalıştırılır.
#Jenkins üzerinde bulunan NF job'larından elde edilen debian paketleri rsync komutu yardımı ile /home/jenkins/debian_tag 
#dizini altındaki ilgili sürüm numaralı dizine atılır.
#VTO ve STO ortamları için farklı mod'da derlemeler alındığı için farklı debian paketleri oluşur.
#VTO ve STO ortamları için farklı dizinlerde debian paketleri toplanır.
#Bu script aracılığı ile istenilen her an kolayca baseline alımı yapılır.

DIR=/home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}
STO_DIR=/home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}

if [ -d "$DIR" ]; then

  echo "$DIR exist"

else 
    echo "$DIR does not exist"
    
    mkdir /home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}
    mkdir /home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/ASELSAN_COMMON
    
fi


if [ -d "$STO_DIR" ]; then

echo "$DIR exist"

else 
    echo "$DIR does not exist"
    
    mkdir /home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}
    mkdir /home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/ASELSAN_COMMON
fi



# Anlık olarak çıkarılan deb paket'leri /home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER} dizini altında tutulur.
# CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER} dizininde ise tüm NF'lerin deb paketleri toplu olarak tek bir dizin altında tutulması sağlanır.

cd /home/jenkins

rm -rf CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/

rm -rf STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/

mkdir CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}

mkdir STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}


cd /home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}

NFpath=($(ls -l | awk '{print $9}'))

echo "${NFpath[@]}"

for i in "${NFpath[@]}"

do
        cp -R /home/jenkins/debian_tag/Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/${i}/* /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}

done

#Aselsanın Common job'ı içerisinde 3 deb paketi çıktığı için bu deb paket'lerinin CINAR_deb_package dizinine atılması ekstra bir cp işlemi ile sağlanır.

cp  /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/CinarCommon/lib* /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}
cp  /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/CinarHttp1/lib*  /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}
cp  /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/CinarHttp2/lib*  /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}

#Aselsan Common dizini altındaki Cinar ile başlayan klasor'ler altındaki paket'ler atıldıktan sonra, Cinar* klasor'leri silinir.

rm -rf /home/jenkins/CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}/Cinar*                


cd /home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}

NFpath=($(ls -l | awk '{print $9}'))

echo "${NFpath[@]}"

for i in "${NFpath[@]}"

do
        cp -R /home/jenkins/debian_tag/STO_Milestone_NF_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/${i}/* /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}

done

#Aselsanın Common job'ı içerisinde 3 deb paketi çıktığı için bu deb paket'lerinin CINAR_deb_package dizinine atılması ekstra bir cp işlemi ile sağlanır.

cp  /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/CinarCommon/lib* /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}
cp  /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/CinarHttp1/lib*  /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}
cp  /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/CinarHttp2/lib*  /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}

#Aselsan Common dizini altındaki Cinar ile başlayan klasor'ler altındaki paket'ler atıldıktan sonra, Cinar* klasor'leri silinir.

rm -rf /home/jenkins/STO_CINAR_deb_package_${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER_STO}/Cinar*   