## 这里用的是 v1.3.0
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.5.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

## 跑 k8sImage.sh 下载镜像

## 用 docker 启动，要 FQ（如果下载了镜像，就不用 FQ）
minikube start --vm-driver=none

## 下载 kubelet 客户端,注意版本
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.2/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

## 查看是否安装成功
kubectl cluster-info
