-- slave 同步 master
CHANGE MASTER TO
MASTER_HOST='masterIp',
MASTER_PORT=10036,
MASTER_USER='用户名',
MASTER_PASSWORD='密码';

START SLAVE;

show slave status;
----------

-- 如果Slave_IO_Running与Slave_SQL_Running有不是 yes的，执行下面命令
stop slave ;
set GLOBAL SQL_SLAVE_SKIP_COUNTER=1;
start slave ;