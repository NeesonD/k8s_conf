### 状态数据

* 持久性转态数据（数据库）
* 配置状态数据 （环境变量 + 配置中心）
* 会话状态 （session -> token）
* 连接状态 （websocket）
* 集群状态
* 日志数据

### 服务

* 通过 headless 区分 master、slave，并提供 master 服务
* 通过常规 service 提供 slave 服务 
