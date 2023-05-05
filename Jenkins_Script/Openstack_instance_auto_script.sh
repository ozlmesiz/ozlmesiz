#!/bin/bash
#password authention aktif hale getirildi.
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart

#jenkins user olusturuldu.
useradd -m -G sudo -p sagWlIWIC4dLo -s /bin/bash jenkins

DATE=$( date "+%Y-%m-%d-%H-%M" )

timedatectl set-timezone Europe/Istanbul

#hostname jenkins-cinar-box olarak set edildi.
hostnamectl set-hostname jenkins-cinar-box
sed -i 's/127.0.0.1 localhost/127.0.0.1 localhost jenkins-cinar-box/g' /etc/hosts
echo "192.168.10.14 bitbucket.ulakhaberlesme.com.tr" >> /etc/hosts 

#cnruser build sunucularinda olmayacak
userdel cnrusr

#deb library repo adresi source liste eklendi.
echo "deb http://192.168.13.47/debs/   amd64/" > /etc/apt/sources.list

apt-get update

#zabbix agent kurulumu
apt-get -y install zabbix-agent --allow-unauthenticated 

sed -i 's/Server=127.0.0.1/Server=192.168.13.146/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/ServerActive=127.0.0.1/ServerActive=192.168.13.146/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/Hostname=Zabbix server/'Hostname=Jenkins-Cinar-Slave-1_$DATE'/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# HostMetadata=/HostMetadata=Linux jenkins/g' /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart

#code_generate için gerekli dosyalar build server üzerinde ilgili dizinlere eklendi.
wget -r -nHp -R "index.html*" 192.168.13.47/5GC_APIs-1.PreR15.1.0-mod/ -P /opt/cinar
wget -r -nHp -R "index.html*" 192.168.13.47/Cinar_Code_Generator/ -P /opt/cinar
wget -r -nHp -R "index.html*" 192.168.13.47/UnittestPython/ -P /home/jenkins/


#comman file(/opt/cinar) path yetkisi jenkins olarak set edildi.
chown -R jenkins:jenkins /opt/cinar
