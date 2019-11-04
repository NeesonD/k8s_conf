#!/bin/bash
# File name: install.sh

KUBE_VERSION=v1.16.2
KUBE_PAUSE_VERSION=3.1
ETCD_VERSION=3.3.15-0
DNS_VERSION=1.6.2
username=registry.cn-hangzhou.aliyuncs.com/google_containers

images=(
	kube-proxy:${KUBE_VERSION}
	kube-scheduler:${KUBE_VERSION}
	kube-controller-manager:${KUBE_VERSION}
	kube-apiserver:${KUBE_VERSION}
	pause:${KUBE_PAUSE_VERSION}
	etcd:${ETCD_VERSION}
	coredns:${DNS_VERSION}
)

for image in ${images[@]}
do
    docker pull ${username}/${image}
    docker tag ${username}/${image} k8s.gcr.io/${image}
    docker rmi ${username}/${image}
done


sudo docker pull dieudonnecc/storage-provisioner
docker tag dieudonnecc/storage-provisioner gcr.io/k8s-minikube/storage-provisioner:v1.8.1
docker rmi dieudonnecc/storage-provisioner

sudo docker pull greatbsky/k8s-dns-kube-dns-amd64
docker tag greatbsky/k8s-dns-kube-dns-amd64 k8s.gcr.io/k8s-dns-kube-dns-amd64:1.14.13
docker rmi greatbsky/k8s-dns-kube-dns-amd64


sudo docker pull ist0ne/k8s-dns-dnsmasq-nanny-amd64
docker tag ist0ne/k8s-dns-dnsmasq-nanny-amd64 k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:1.14.13
docker rmi ist0ne/k8s-dns-dnsmasq-nanny-amd64


sudo docker pull ist0ne/k8s-dns-sidecar-amd64
docker tag ist0ne/k8s-dns-sidecar-amd64 k8s.gcr.io/k8s-dns-sidecar-amd64:1.14.13
docker rmi ist0ne/k8s-dns-sidecar-amd64

sudo docker pull lhcalibur/kube-addon-manager-amd64
docker tag lhcalibur/kube-addon-manager-amd64 k8s.gcr.io/kube-addon-manager:v9.0.2
docker rmi lhcalibur/kube-addon-manager-amd64

docker pull mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.1
docker tag mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.1 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1
docker rmi mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.1


