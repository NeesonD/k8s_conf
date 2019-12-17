### 开发套路

* 以服务为单位，基本每个服务都有如下几个 yaml。至于 pv 那些看情况加。
    * Deployment、DaemonSet、StatefulSet
    * Service
    * ingress
    * rbac
* 找最佳实践的 yaml，理解并能够修改
* 对比类似的服务配置，总结服务定义的共同点