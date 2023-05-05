# docker build -t cinar/base -f Dockerfile.cinar.base --no-cache .
# docker run --name=cp --rmi -d cinar/prod
# docker exec -it cp bash



# Çınar ve 3rd Parti kütüphanelerin kurulduğu yansıyı multi-stage yapısında bağlıyoruz
FROM ubuntu:xenial as ubuntuguncel
#ARG NF_PAKET_ADI=cnrnssf



# dev | deb | prod > dev: geliştrime, deb: test ortamında hata giderme,  prod: gerçek ortam
#ARG CINAR_ENV=prod
ARG UCUNCU_PARTI_PAKETLER=paket_3rd
ARG CINAR_FW=paket_cinarfw
ARG NF_PAKET_ADI=cnrnssf


USER root
WORKDIR /root

RUN echo "deb [trusted=yes] http://192.168.13.47/debs/ amd64/" >> /etc/apt/sources.list
RUN apt update
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
#NF'in son paket versiyonuna göre cinar env oluşturulacak.(debug >> dev ve release >> prod)

RUN if [ `apt-cache show ${NF_PAKET_ADI} | grep Version | cut -d' ' -f2 | head -1 | cut -d . -f5`  == "debug" ] ; then \
          echo "dev" > ./cnrenv.txt; \
    else \
         echo "prod" > ./cnrenv.txt; \
    fi
RUN export CINAR_ENV=`cat ./cnrenv.txt` && echo "$CINAR_ENV"

#     g3log=2.1.2
#     g3log=1.3.2-20190205
RUN echo " \
certificate \
cinarloggersink \
cpp-jwt \
dkms \
dpdk \
libevent \
libicu55 \
libnghttp2-asio \
libprometheuscpp \
mongo-c-driver \
mongo-cxx-driver \
nlohmann-json \
python \
nano \
curl \
wget \
net-tools \
netcat \
iputils-ping \
g3log=2.1.2 \
libpq5 \
sudo \
" > ./$UCUNCU_PARTI_PAKETLER.ortak



# RUN if test "x$NF_PAKET_ADI" = "xcnrnrf" ; then \
#   echo "g3log=2.1.2" >> ./${UCUNCU_PARTI_PAKETLER}.ortak ; \
# else \
#   echo "g3log=1.3.2-20190205" >> ./${UCUNCU_PARTI_PAKETLER}.ortak ; \
# fi



RUN echo "\
boost-all \
libncurses5 \
libreadline-dev \
libsasl2-dev \
libssl-dev \
libxml2 \
nettle-dev \
uuid \
" > ./$UCUNCU_PARTI_PAKETLER.prod



RUN echo " \
 boost-all-dev \
 libicu55 \
 libncurses5-dev \
 libreadline-dev \
 libsasl2-dev \
 libssl-dev \
 libxml2-dev \
 nettle-dev \
 uuid-dev \
" > ./$UCUNCU_PARTI_PAKETLER.dev


RUN echo "cinarframework"  > ./$CINAR_FW.$NF_PAKET_ADI.prod
RUN if [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnrf" ]; then \
        echo " \
        cinarnnrfaccesstoken.15.201906-Interworking \
        cinarnnrfnfdiscovery.15.201906-Interworking \ 
        cinarnnrfnfmanagement.15.201906-Interworking \
        "  >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \
    elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnssf" ]; then \
         echo " \
         cinarnnssfnssaiavailability.15.201906-Interworking \
         cinarnnssfnsselection.15.201906-Interworking \
         cinarnnrfaccesstoken.15.201906-Interworking \
         cinarnnrfnfdiscovery.15.201906-Interworking \
         cinarnnrfnfmanagement.15.201906-Interworking \
         "  >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \
    elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnef" ]; then \
        echo " \
        cinarnnefnorthboundassessionwithqos.15.201906-Interworking \
        cinarnnefnorthboundcpprovisioning.15.201906-Interworking \
        cinarnnefnorthbounddevicetriggering.15.201906-Interworking \
        cinarnnefnorthboundmonitoringevent.15.201906-Interworking \
        cinarnnefnorthboundpfdmanagement.15.201906-Interworking \
        cinarnnefnorthboundtrafficinfluence.15.201906-Interworking \
        cinarnnefpfdmanagement.15.201906-Interworking \
        cinarafprofilemanagement.15.201906-Interworking \
        cinarnnrfaccesstoken.15.201906-Interworking \
        cinarnnrfnfdiscovery.15.201906-Interworking \
        cinarnnrfnfmanagement.15.201906-Interworking \
        cinarnpcfpolicyauthorization.15.201906-Interworking \
        cinarresourcemanagementofbdt.15.201906-Interworking \
        cinarnpcfbdtpolicycontrol.15.201906-Interworking \
        cinarnudrdatarepository.15.201906-Interworking \
        cinarnudmsdm.15.201906-Interworking \
        cinarnudmee.15.201906-Interworking \
        cinarnudmuecm.15.201906-Interworking \
        cinarnamfeventexposure.15.201906-Interworking \
        cinarnsmfeventexposure.15.201906-Interworking \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \
  elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrsmf" ]; then \
        echo " \
        libcnrsmf-common \
        rabbitmq-server \
        librabbitmq4 \
        lix1package \
        lix2x3asnpackage \
        libxerces-c-dev \
        cinarasn1clib=1.0.4 \
        cinarnnrfaccesstoken.15.201906-Interworking \
        cinarnnrfnfdiscovery.15.201906-Interworking \
        cinarnnrfnfmanagement.15.201906-Interworking \
        cinarnamfeventexposure.15.201906-Interworking \
        cinarnudmsdm.15.201906-Interworking \
        cinarnudmee.15.201906-Interworking \ 
        cinarnudmuecm.15.201906-Interworking \
        cinarnsmfpdusession.15.201906-Interworking \
        cinarnamfcommunication.15.201906-Interworking \
        cinarnsmfeventexposure.15.201906-Interworking \
        cinarnpcfsmpolicycontrol.15.201906-Interworking \
        cinarnnefpfdmanagement.15.201906-Interworking \
        cinarnchfconvergedcharging.15.201906-Interworking \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \
   elif [[ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrausf" || `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrudm" || `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrudr" ]]; then \
        echo " \
        cinarcryptolib \
        cinarasn1clib=1.0.4 \
        libcnrcommon \
        libcnrhttp2 \
        libcnrhttp1 \
        libcnr5gmessages \
         " >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \ 
   elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnramf" ]; then \
        echo " \
        libcnramf-common \
        cinarasn1clib \
        cinarcryptolib \
        rabbitmq-server \
        librabbitmq4 \
        lix1package \
        lix2x3asnpackage \
        libxerces-c-dev \
        cinarnnrfnfmanagement.15.201906-interworking \
        cinarnnrfnfdiscovery.15.201906-interworking \
        cinarnamfcommunication.15.201906-interworking \
        cinarnsmfeventexposure.15.201906-interworking \
        cinarnnrfaccesstoken.15.201906-interworking \
        cinarnudmsdm.15.201906-interworking \
        cinarnudmuecm.15.201906-interworking \
        cinarnpcfampolicycontrol.15.201906-interworking \
        cinarnsmfpdusession.15.201906-interworking \
        cinarnausfueauthentication.15.201906-interworking \
        cinarnnssfnsselection.15.201906-interworking \
        cinarnnssfnssaiavailability.15.201906-interworking \
        cinarnamfeventexposure.15.201906-interworking \
        cinarnsmsfsmservice.15.201906-interworking \
        cinarnamfmt.15.201906-interworking \
        cinarnamflocation.15.201906-interworking \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \
   elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrupf" ]; then \
        echo " \
        libxerces-c-dev \
        rabbitmq-server \
        librabbitmq4 \
        redis-server \
        redis-tools \
        socat \
        tmux \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.prod ; \    
   fi

RUN echo "cinarframework.dbg"  > ./$CINAR_FW.$NF_PAKET_ADI.dev
RUN if [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnrf" ]; then \
        echo " \
        cinarnnrfaccesstoken.15.201906-Interworking.dbg \
        cinarnnrfnfdiscovery.15.201906-Interworking.dbg \
        cinarnnrfnfmanagement.15.201906-Interworking.dbg \
        "  >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
    elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnssf" ]; then \
         echo " \
         cinarnnssfnssaiavailability.15.201906-Interworking.dbg \
         cinarnnssfnsselection.15.201906-Interworking.dbg \
         cinarnnrfaccesstoken.15.201906-Interworking.dbg \
         cinarnnrfnfdiscovery.15.201906-Interworking.dbg \
         cinarnnrfnfmanagement.15.201906-Interworking.dbg \
         "  >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
    elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrnef" ]; then \
        echo " \
        cinarnnefnorthboundassessionwithqos.15.201906-Interworking.dbg \
        cinarnnefnorthboundcpprovisioning.15.201906-Interworking.dbg \
        cinarnnefnorthbounddevicetriggering.15.201906-Interworking.dbg \
        cinarnnefnorthboundmonitoringevent.15.201906-Interworking.dbg \
        cinarnnefnorthboundpfdmanagement.15.201906-Interworking.dbg \
        cinarnnefnorthboundtrafficinfluence.15.201906-Interworking.dbg \
        cinarnnefpfdmanagement.15.201906-Interworking.dbg \
        cinarafprofilemanagement.15.201906-Interworking.dbg \
        cinarnnrfaccesstoken.15.201906-Interworking.dbg \
        cinarnnrfnfdiscovery.15.201906-Interworking.dbg \
        cinarnnrfnfmanagement.15.201906-Interworking.dbg \
        cinarnpcfpolicyauthorization.15.201906-Interworking.dbg \
        cinarnnefpfdmanagement.15.201906-Interworking.dbg \
        cinarresourcemanagementofbdt.15.201906-Interworking.dbg \
        cinarnpcfbdtpolicycontrol.15.201906-Interworking.dbg \
        cinarnudrdatarepository.15.201906-Interworking.dbg \
        cinarnudmsdm.15.201906-Interworking.dbg \
        cinarnudmee.15.201906-Interworking.dbg \
        cinarnudmuecm.15.201906-Interworking.dbg \
        cinarnamfeventexposure.15.201906-Interworking.dbg \
        cinarnsmfeventexposure.15.201906-Interworking.dbg \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
  elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrsmf" ]; then \
        echo " \
        libcnrsmf-common \
        rabbitmq-server \
        librabbitmq4 \
        lix1package \
        lix2x3asnpackage \
        libxerces-c-dev \
        cinarasn1clib=1.0.4 \
        cinarnnrfaccesstoken.15.201906-Interworking.dbg \
        cinarnnrfnfdiscovery.15.201906-Interworking.dbg \
        cinarnnrfnfmanagement.15.201906-Interworking.dbg \
        cinarnamfeventexposure.15.201906-Interworking.dbg \
        cinarnudmsdm.15.201906-Interworking.dbg \
        cinarnudmee.15.201906-Interworking.dbg \
        cinarnudmuecm.15.201906-Interworking.dbg \
        cinarnsmfpdusession.15.201906-Interworking.dbg \
        cinarnamfcommunication.15.201906-Interworking.dbg \
        cinarnsmfeventexposure.15.201906-Interworking.dbg \
        cinarnpcfsmpolicycontrol.15.201906-Interworking.dbg \
        cinarnnefpfdmanagement.15.201906-Interworking.dbg \
        cinarnchfconvergedcharging.15.201906-Interworking.dbg \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
   elif [[ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrausf" || `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrudm" || `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrudr" ]]; then \
        echo " \
          cinarcryptolib \
          cinarasn1clib=1.0.4 \
          libcnrcommon \
          libcnrhttp2 \
          libcnr5gmessages \
          " >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
   elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnramf" ]; then \
        echo " \
        libcnramf-common \
        cinarasn1clib \
        cinarcryptolib \
        rabbitmq-server \
        librabbitmq4 \
        lix1package \
        lix2x3asnpackage \
        libxerces-c-dev \
        cinarnnrfnfmanagement.15.201906-interworking.dbg\
        cinarnnrfnfdiscovery.15.201906-interworking.dbg \
        cinarnamfcommunication.15.201906-interworking.dbg \
        cinarnsmfeventexposure.15.201906-interworking.dbg \
        cinarnnrfaccesstoken.15.201906-interworking.dbg \
        cinarnudmsdm.15.201906-interworking.dbg \
        cinarnudmuecm.15.201906-interworking.dbg \
        cinarnpcfampolicycontrol.15.201906-interworking.dbg \
        cinarnsmfpdusession.15.201906-interworking.dbg \
        cinarnausfueauthentication.15.201906-interworking.dbg \
        cinarnnssfnsselection.15.201906-interworking.dbg \
        cinarnnssfnssaiavailability.15.201906-interworking.dbg \
        cinarnamfeventexposure.15.201906-interworking.dbg \
        cinarnsmsfsmservice.15.201906-interworking.dbg \
        cinarnamfmt.15.201906-interworking.dbg \
        cinarnamflocation.15.201906-interworking.dbg \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
    elif [ `echo ${NF_PAKET_ADI} | awk -F"=" '{print $1}'` == "cnrupf" ]; then \
        echo " \
        libxerces-c-dev \
        rabbitmq-server \
        librabbitmq4 \
        redis-server \
        redis-tools \
        socat \
        tmux \
        " >> ./$CINAR_FW.$NF_PAKET_ADI.dev ; \
  fi




# RUN echo "" > ./$NF_UCUNCU_PARTI_PAKETLER.dev
RUN apt update
RUN export CINAR_ENV=`cat ./cnrenv.txt` && apt install -y `cat ./$UCUNCU_PARTI_PAKETLER.ortak ./$UCUNCU_PARTI_PAKETLER.$CINAR_ENV ./$CINAR_FW.$NF_PAKET_ADI.$CINAR_ENV`
#RUN cd /opt/cinar/lib && for f in *-Interworking.so; do yeni=`echo $f | sed 's/-Interworking\.so/\.so/g'`; mv $f $yeni ; done
RUN  echo "/opt/cinar/lib" > /etc/ld.so.conf.d/cinar.conf && /sbin/ldconfig




FROM ubuntuguncel



#--------------- Miras ile gelenler -------------------------------
# Aşağıdaki satır FROM ile miras alınan yansıdan geldiği için tekrar eklemeye gerek yok!
# RUN echo "deb [trusted=yes] http://192.168.13.47/debs/ amd64/" >> /etc/apt/sources.list && \
#
# multi-stage ile farklı bir yansıdaki dosyalar bu yansının içine kopyalanacağı için apt update gereksiz olacak
# COPY --from=base /var/lib/apt/lists/* /var/lib/apt/lists/
#-------------------------------------------------------------------
# RUN echo "deb [trusted=yes] http://192.168.13.47/debs/ amd64/" >> /etc/apt/sources.list
# COPY --from=base /var/lib/apt/* /var/lib/apt/



# Aşağıdaki hata ve çözümü:
# debconf: delaying package configuration, since apt-utils is not installed
#
# apt-utils uygulamasını yükledikten sonra diğer apt yüklemelerinde -y komutuna gerek kalmıyor.
# apt-utils uygulaması DEBIAN_FRONTEND ortam değişkenlerine bakarak diğer yüklemelerin cevaplanmasını sağlıyor.
# DEBIAN_FRONTEND=noninteractive argumanı tanımlıyor, apt-utils yüklüyoruz
ENV DEBIAN_FRONTEND=noninteractive
#RUN apt install --assume-yes apt-utils

ARG NF_PAKET_ADI
ENV NF_PAKET_ACILACAK_DIZIN=paket
ENV NF_PAKET_KOPYALANACAK_DIZIN=/root



USER root
WORKDIR /root

RUN apt show $NF_PAKET_ADI
RUN apt download $NF_PAKET_ADI
RUN apt-cache show ${NF_PAKET_ADI} | grep Filename | cut -d' ' -f2 | head -1 > nf_paket_filename.txt



###----------------------------------------------------------------------------------------------------------------------
### NF Paketini indir
# RUN apt download $NF_PAKET_ADI
#
### NF Paketinin dosya adının txt dosyasına yaz ve sonraki RUN komutlarında yeni kaplar oluşturulduğunda dosyadan okuyarak işle
# RUN apt-cache show ${NF_PAKET_ADI} | grep Filename | cut -d' ' -f2 | head -1 > nf_paket_filename.txt
#
### NF Paketini dizine aç, postinst dosyasını değiştir
# RUN dpkg-deb -R $(cat nf_paket_filename.txt) $NF_PAKET_ACILACAK_DIZIN  && \
#     cd $NF_PAKET_ACILACAK_DIZIN/DEBIAN && \
#     `awk '{gsub("^systemctl (daemon-reload|start|stop).*", "if [ ! -n $container ]; then "$0"; fi")}1' ./postinst > postinst.yeni` && \
#     chmod 755 postinst.yeni && mv postinst.yeni postinst && \
#
### NF Paketini .deb dosyası olarak yapılandır
# RUN dpkg-deb -b $NF_PAKET_ACILACAK_DIZIN $(cat nf_paket_filename.txt)
### NF deb paketini kur
# RUN cd $NF_PAKET_KOPYALANACAK_DIZIN && dpkg -i $(cat nf_paket_filename.txt)
### NF Paketini açtığın dizini sil
# RUN rm $(cat nf_paket_filename.txt) && rm -r $NF_PAKET_KOPYALANACAK_DIZIN
###----------------------------------------------------------------------------------------------------------------------



RUN dpkg-deb -R $(cat nf_paket_filename.txt) $NF_PAKET_ACILACAK_DIZIN  && \
    cd $NF_PAKET_ACILACAK_DIZIN/DEBIAN && \
    `awk '{gsub("^ *(sudo +systemctl|systemctl) *(daemon-reload|start|stop).*", "if [ ! -n $container ]; then "$0"; fi")}1' ./postinst > postinst.yeni` && \
    chmod 755 postinst.yeni && mv postinst.yeni postinst && \
    cd ../..
### NF Paketin olarak yapılandır
 RUN dpkg-deb -b $NF_PAKET_ACILACAK_DIZIN $(cat nf_paket_filename.txt)
# ### NF deb paketini kur
 RUN cd $NF_PAKET_KOPYALANACAK_DIZIN && dpkg -i $(cat nf_paket_filename.txt)
# ### NF Paketini açtığın dizini sil
 RUN rm $(cat nf_paket_filename.txt) && rm -r $NF_PAKET_KOPYALANACAK_DIZIN



# .bashrc bir şekilde gitmişse yeniden varsayılanı yaratıyoruz.
RUN if [ ! -f "/root/.bashrc" ]; then /bin/cp /etc/skel/.bashrc ~/; fi



ENTRYPOINT ["/sbin/init"]
