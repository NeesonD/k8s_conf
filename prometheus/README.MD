### 背景

系统越来越复杂，子系统越来越多，监控与报警就变得尤为重要。作用主要是为了能够迅速的响应线上 bug，提高服务质量。

监控系统应该做到，一旦某个指标异常，应该有一个处理器预处理对应的异常，尽可能缩小异常范围

监控需要研究三个方向：

* 部署以及自身的配置
* 监控参数，要监控哪些指标，这些指标有什么价值
* 指标异常预处理
    * cpu 占用过高、打印堆栈、预分析堆栈找出有问题的线程，最好是可以直接定位到出问题的代码

### 架构图

![](/pic/prometheus.jpg)


### 

Promethues 支持的服务发现：Node、Service、Pod、Endpoints、Ingress

* 监控 App
    * App 本身支持 /metrics
    * App 通过 sidecar exporter 间接暴露 /metrics
* 监控 k8s 组件
    * Node 监控 
    * kubelet 监控
    
