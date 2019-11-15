## 生产使用要自己改造

* 镜像用的是谷歌处理的，这个要替换掉，要自己写脚本生成 myid 和 zoo.cfg
* kubectl apply -f zookeeper-pv-hostpath.yaml 建好 pv
* sh image.sh 将镜像拉下来
* kubectl apply -f zookeeper.yaml