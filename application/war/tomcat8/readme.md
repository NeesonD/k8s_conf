### 修改慢

修改$JAVA_PATH/jre/lib/security/java.security文件

将 `securerandom.source=file:/dev/random` 改为 `securerandom.source=file:/dev/urandom`