#!/bin/bash
#password authention aktif hale getirildi.
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart

#jenkins user olusturuldu.
useradd -m -G sudo -p sagWlIWIC4dLo -s /bin/bash jenkins

chown -R jenkins:jenkins /home/jenkins/

DATE=$( date "+%Y-%m-%d-%H-%M" )

timedatectl set-timezone Europe/Istanbul

#hostname jenkins-cinar-box olarak set edildi.
hostnamectl set-hostname jenkins-cinar-box
sed -i 's/127.0.0.1 localhost/127.0.0.1 localhost jenkins-cinar-box/g' /etc/hosts
echo "192.168.10.14 bitbucket.ulakhaberlesme.com.tr" >> /etc/hosts 
#for permanently 
echo "192.168.10.14 bitbucket.ulakhaberlesme.com.tr" >> /etc/cloud/templates/hosts.debian.tmpl

#cnruser build sunucularinda olmayacak
userdel cnrusr

#deb library repo adresi source liste eklendi.
echo "deb http://192.168.13.47/debs/   amd64/" > /etc/apt/sources.list

apt-get update

#zabbix agent kurulumu
#apt-get -y install zabbix-agent --allow-unauthenticated 

#sed -i 's/Server=127.0.0.1/Server=192.168.13.146/g' /etc/zabbix/zabbix_agentd.conf
#sed -i 's/ServerActive=127.0.0.1/ServerActive=192.168.13.146/g' /etc/zabbix/zabbix_agentd.conf
#sed -i 's/Hostname=Zabbix server/'Hostname=Jenkins-Cinar-Slave-1_$DATE'/g' /etc/zabbix/zabbix_agentd.conf
#sed -i 's/# HostMetadata=/HostMetadata=Linux jenkins/g' /etc/zabbix/zabbix_agentd.conf

#service zabbix-agent restart

#pythonmissingfile script'inin build node'lara eklenmesi için

wget -r -nHp -R "index.html*" 192.168.13.47/UnittestPython/ -P /home/jenkins/

chown -R jenkins:jenkins /home/jenkins/UnittestPython/

#comman file(/opt/cinar) path yetkisi jenkins olarak set edildi.

chown -R jenkins:jenkins /opt/cinar

#default gateway set

echo "ip route delete default" >> /etc/rc.local
echo "ip route add default via 172.17.1.1" >> /etc/rc.local

#reboot sonrasi interface'lerin degismemesi icin

sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="biosdevname=0 net.ifnames=0"/g' /etc/default/grub

#SSL certificate download from debian repo and install

wget -r -nHp -R "index.html*" 192.168.13.47/ssl_certificate -P /home/jenkins/

cd /home/jenkins/ssl_certificate

openssl x509 -inform DER -in ca-certificate.cer -out ca-certificate.crt

cp ca-certificate.crt /etc/ssl/certs

sudo update-ca-certificates

git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt



