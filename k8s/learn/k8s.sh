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

## 查看 pod 标签
kubectl get po --show-labels

## 新增或者修改标签
kubectl label po <podname> <labelkey:labelvalue> --overwrite

## 根据标签筛选 pod
kubectl get po -l <labelkey:labelvalue>
kubectl get po -1 <labelkey>
kubectl get po -1 <!labelkey>


## 使用标签和选择器来约束调度

### 给 node 打标签
kubectl label node <nodeName> <labelkey:labelvalue>

### 通过标签获取 node 同上 将 po 改为 node 即可

## 使用空间命名对资源分组

kubectl apply -f *.yaml -n <namespace>

## 删除 pod
kubectl delete po kubia-gpu

kubectl delete po -l creation_method=manual

kubectl delete ns custom-namespace

kubectl delete po --all

kubectl delete all --all

