> FBI WARING =====> 一定要注意版本

1. 先下载 minikube

```curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.5.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/```

2. 运行 k8sImage.sh

* 这一步主要是下载 k8s master几点中的几个镜像，因为这几个镜像不翻墙下不下来，所以先通过国内 mirror 下载下来，然后 tag 成目标镜像

3. 用 docker 启动，要 FQ（如果下载了镜像，就不用 FQ）
  
```minikube start --vm-driver=none```

4. 下载 kubelet 客户端,注意版本要和服务端兼容

```curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.2/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/```

5. 查看是否安装成功

```kubectl cluster-info```

---------

### 思想

k8s 通过类似 CAS 的手段，来控制 pod 的运行数量