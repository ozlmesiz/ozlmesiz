��#� �o�z�l�m�e�s�i�z�
�
�


# Kubernetes Cluster Kurulumu 

 

sudo apt-get update

 

 sudo apt-get install -y \

  apt-transport-https \

  ca-certificates \

  curl \

  gnupg-agent \

  software-properties-common

 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

 sudo apt-key fingerprint 0EBFCD88

 sudo add-apt-repository \

  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \

  $(lsb_release -cs) \

  stable"

 sudo apt-get update

 sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "docker okay"

cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf

br_netfilter

EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf

net.bridge.bridge-nf-call-ip6tables = 1

net.bridge.bridge-nf-call-iptables = 1

EOF

sudo sysctl --system

sudo apt-get update && sudo apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list

deb https://apt.kubernetes.io/ kubernetes-xenial main

EOF

sudo apt-get update

sudo apt-get install -y kubelet kubeadm kubectl

apt install -y kubeadm=1.18.13-00 kubelet=1.18.13-00 kubectl=1.18.13-00 (for ubuntu 18.04 )

sudo apt-mark hold kubelet kubeadm kubectl

sudo systemctl daemon-reload

sudo systemctl restart kubelet

swapoff -a

echo "kubernetes okay"

curl https://docs.projectcalico.org/manifests/calico.yaml -O

kubectl apply -f calico.yaml

sudo kubeadm init --pod-network-cidr=10.244.0.0/16 (VM ip subnet)

 

 

# Influxdb cluster kurulumu

 

**Namespace oluşturulur;**

kubectl create namespace monitoring

**Daha önceden oluşturulan statefulset.yaml dosyası create edilir;**

kubectl apply -f statefulset.yaml -n monitoring

 

**root@inf:/home/ubuntu/influxdb# cat statefulset.yaml**

```
apiVersion: apps/v1
kind: StatefulSet
metadata:
  labels:
    app: influxdb-demo
  name: influxdb-demo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: influxdb-demo
  serviceName: influxdb-demo
  template:
    metadata:
      labels:
        app: influxdb-demo
    spec:
      containers:
        - image:  quay.io/influxdb/influxdb:2.0.0-beta
          imagePullPolicy: IfNotPresent
          livenessProbe:
            failureThreshold: 3
            httpGet:
              path: /health
              port: api
              scheme: HTTP
            initialDelaySeconds: 30
            periodSeconds: 10
            successThreshold: 1
            timeoutSeconds: 5
          name: influxdb-demo
          ports:
            - containerPort: 9999
              name: api
              protocol: TCP
          readinessProbe:
            failureThreshold: 3
            httpGet:
              path: /health
              port: api
              scheme: HTTP
            initialDelaySeconds: 5
            periodSeconds: 10
            successThreshold: 1
            timeoutSeconds: 1
```



**Daha önceden oluşturulan influxdb-service.yaml dosyası create edilir;**

kubectl apply -f influxdb-service.yaml -n monitoring

root@inf:/home/ubuntu/influxdb# cat influxdb-service.yaml
---

```
apiVersion: v1
kind: Service
metadata:
  labels:
    app: influxdb-demo
  name: influxdb-demo
spec:
  type: NodePort
  ports:
    - name: api
      port: 9999
      targetPort: 9999
      nodePort: 31234
  selector:
    app: influxdb-demo
```

