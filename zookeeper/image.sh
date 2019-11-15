#!/bin/bash

docker pull mirrorgooglecontainers/kubernetes-zookeeper:1.0-3.4.10
docker tag mirrorgooglecontainers/kubernetes-zookeeper:1.0-3.4.10 k8s.gcr.io/kubernetes-zookeeper:1.0-3.4.10
docker rmi mirrorgooglecontainers/kubernetes-zookeeper:1.0-3.4.10


kubectl apply -f zookeeper-pv-hostpath.yaml

kubectl apply -f zookeeper.yaml