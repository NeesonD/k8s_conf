#!/bin/bash

# --replicas: 每个master有几个slave
kubectl exec -it redis-app-0 -- redis-cli --cluster create --cluster-replicas 1 $(kubectl get pods -l appCluster=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')
