#!/bin/bash
#ssh-keygen generate for jenkins user

mkdir /home/jenkins/.ssh
cd /home/jenkins/.ssh

sudo su jenkins

yes id_rsa | ssh-keygen -q -t rsa -N '' >/dev/null

#copy to id_rsa.pub key to jenkins master

ssh-copy-id -i ~/.ssh/id_rsa.pub jenkins@192.168.13.38

# jenkins master id_rsa.pub key add to authorized_keys file in build node

echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2FaoHtk7IjKpiDT+vEPpUrq8NwH5VTRfnR72iE11evSPXG74X6BRUL8S1XeHZKSIxS44kj+XiCvPfZzevzFYVIrAguKTW7Hr2LSaBKgpcPTa6xCL+YMg8wMuWF+Lp54XW6v1ccjADsimnVhoeP7MTSLQIZ8Y+Wz6LMVbcTOkSq92UZ1VRXhvVVyS4X3VlDtrbX6GCarIMAmse1oOBBTDiEAFOGdUbN6RoksSlRcLYGsK1T+IQT35QG+rTua5+/2XWukT1CFWnp/25qkTW8CnzfsJ/iD2n29HvRC4WvUg1cVxM5XlD/VhrmXyHMwsggRvg5ClxcItutz4A65j1KGy7 jenkins@jenkins-master >> /home/jenkins/.ssh/authorized_keys

