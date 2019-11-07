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

-------

### 实操

* 如何决定是否应将某些容器组合在 一 个 pod 中。
* pod 可以运行多个进程， 这和非容器世界中的物理主机类似。
* 可以编写 YAML 或 JSON 描述文件用于创建 pod, 然后查看 pod 的规格及其当前状态。
* 使用标签来组织 pod, 并且 一 次在多个 pod 上执行操作。
* 可以使用节点标签将 pod 只调度到提供某些指定特性的节点上。
* 注解允许入们、工具或库将更大的数据块附加到 pod。
* 命名空间可用千允许不同团队使用同一集群， 就像它们使用单独的 Kubernetes 集群一样。
* 使用 kubectl explain 命令快速查看任何 Kubernetes 资源的信息。


### 存活探针

