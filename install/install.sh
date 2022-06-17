#!/bin/sh

echo 正在导入服务. . .

curl -sSL https://hxhgts.github.io/debian_rc-local_service/service/rc-local.service > /etc/systemd/system/rc-local.service

exit 0
