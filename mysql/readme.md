## 使用 k8s 部署 mysql 主从

[原 yaml](https://github.com/oracle/kubernetes-website/blob/master/docs/tasks/run-application/mysql-statefulset.yaml)


### 踩坑

* 我用的 pv 是 hostpath，与 subpath 不兼容，所以要先把 pv 里面本地的目录建好，比如说 /tmp/mysql-0
* xtrabackup 镜像，原有的镜像不 FQ 拉不下，这里使用 dockerhub 上面的复制镜像
* xtrabackup pull 人数最多的镜像没有 nmap ，ncat 执行不了，所以要用 ist0ne/xtrabackup:1.0
* 资源问题，自己把资源限制给去掉，通常本地机器或者自己买的阿里云配置都不会很高