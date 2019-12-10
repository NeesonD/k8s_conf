### 创建证书
https://jimmysong.io/kubernetes-handbook/practice/create-tls-and-secret-key.html


http://119.23.18.196:31620

### 获取token
kubectl -n kube-system get secret|grep admin-token


kubectl -n kube-system describe secret admin-token-nwphb