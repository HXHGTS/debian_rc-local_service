#!/bin/sh

echo 正在导入服务. . .

curl -sSL https://hxhgts.github.io/debian_rc-local_service/service/rc-local.service > /etc/systemd/system/rc-local.service

systemctl daemon-reload

echo 正在创建默认rc.local文件. . .

curl -sSL https://hxhgts.github.io/debian_rc-local_service/etc/rc.local > /etc/rc.local

chmod +x /etc/rc.local

echo 正在开启服务并添加到开机启动. . .

systemctl enable rc-local

systemctl start rc-local

exit 0
