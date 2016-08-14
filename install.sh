#!/bin/bash
echo "[1/1]正在获取最新版PhQAgent"
wget "https://raw.githubusercontent.com/PhQAgent/Release/master/PhQAgent.phar"
wget "https://raw.githubusercontent.com/PhQAgent/PhQAgent/master/start.sh"
if [ `getconf LONG_BIT` = "64" ]; then
	echo -n "[2/2] Linux 64 位操作系统检测"
    wget "https://raw.githubusercontent.com/PhQAgent/Binary/master/linux64.tar.gz" | tar -zx > /dev/null 2>&1
else
	echo -n "[2/2] Linux 32 位操作系统检测"
    wget "https://raw.githubusercontent.com/PhQAgent/Binary/master/linux32.tar.gz" | tar -zx > /dev/null 2>&1
fi
chmod +x ./bin/php/bin/php
chmod start.sh
echo "[3/3] 安装完成 . start.sh 启动PhQAgent"