kubectl delete pod <name> --grace-period=0 --force -n <namespace>

http://119.23.18.196:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login

kubectl proxy --address='0.0.0.0'  --accept-hosts='^*$' &