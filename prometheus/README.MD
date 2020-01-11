### 

Promethues 支持的服务发现：Node、Service、Pod、Endpoints、Ingress

* 监控 App
    * App 本身支持 /metrics
    * App 通过 sidecar exporter 间接暴露 /metrics
* 监控 k8s 组件
    * Node 监控 
    * kubelet 监控