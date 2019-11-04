kubectl delete pod <name> --grace-period=0 --force -n <namespace>

http://119.23.18.196:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login

kubectl proxy --address='0.0.0.0'  --accept-hosts='^*$' &

kubectl get pod
kubectl get rc

## 以 yaml 格式显示 pod 信息
kubectl get po <podname> -o yaml

## 看 pod 的 yaml 文件如何书写
kubectl explain pod

## 查看 pod 日志
kubectl logs <podname>

## 查看 pod 中某个 container 的日志
kubectl logs <podname> -c <containername>
