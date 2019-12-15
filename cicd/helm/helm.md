### helm3 安装与使用

https://app.yinxiang.com/fx/a3ca6565-2aa1-4021-91d5-bb7fdc924875

* 去 github 找到 helm 对应版本
* wget https://get.helm.sh/helm-v3.0.1-linux-amd64.tar.gz
* tar zxf helm-v3.0.1-linux-amd64.tar.gz 
* export PATH=$PATH:/usr/neeson/soft/helm3
* helm3 version
* helm create neeson
* helm package neeson
* helm install neeson ./neeson-0.1.0.tgz
* helm ls/helm delete foo/
* helm search repo zook
