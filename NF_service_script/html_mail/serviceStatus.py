import paramiko
import subprocess
import sys
from jinja2 import Environment, FileSystemLoader

env = Environment(loader=FileSystemLoader('templates'))
template = env.get_template('test.html')
ssh = paramiko.SSHClient()

with open('../nf.cfg') as f:
    content = f.readlines()
nfIps = []
nfNames = []
nfServiceStatus = []
nfPacketInfo = []
nfServices = []
for x in content:
    element = x.strip().split("=")
    ssh.load_system_host_keys()
    ssh.connect(hostname=element[1], port=22, username='cnrusr')
    stdin, stdout, stderr = ssh.exec_command("systemctl -a -t service --full --all --plain --no-legend |  grep loaded | grep " + "cnr" + element[0] + " | cut  -d ' ' -f 1")           
    nfServiceElement = stdout.read().splitlines()   
    nfNames.append(element[0])  
    nfIps.append(element[1])    
    serviceArray = []
    serviceStatArray = []
    packetInfoArray = []
    for y in nfServiceElement:
        if element[0] == "upf" and y == "cnrupf.service":           
            continue
        else:   
            serviceArray.append(y)              
            stdin, stdout, stderr = ssh.exec_command("systemctl  is-active " + y)
            nfServiceStatusElement = stdout.read().splitlines()
            serviceStatArray.append(nfServiceStatusElement[0])
            z = y.strip().split(".")
            stdin, stdout, stderr = ssh.exec_command("dpkg-query -W -f='${Status} ${Version}\n' " + z[0])
            nfPacketInfoElement = stdout.read().splitlines()
            if len(nfPacketInfoElement) == 0:
                stdin, stdout, stderr = ssh.exec_command("dpkg-query -W -f='${Status} ${Version}\n' " + "cnr" + element[0])                    
                s = stdout.read().splitlines()
                packetInfoArray.append(s[0])

            else:
                packetInfoArray.append(nfPacketInfoElement[0]) 
    nfServices.append(serviceArray)       
    nfServiceStatus.append(serviceStatArray)
    nfPacketInfo.append(packetInfoArray)
output = template.render(title="NF Service Status", name=nfNames, services=nfServices, status=nfServiceStatus,packet=nfPacketInfo , ips = nfIps)

                         
with open('newHtml.html', 'w') as f:
    f.write(output)



