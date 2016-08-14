#!/bin/bash
echo "[1/1]正在获取最新版PhQAgent"
wget -c "https://raw.githubusercontent.com/PhQAgent/Release/master/PhQAgent.phar"
wget -c "https://raw.githubusercontent.com/PhQAgent/PhQAgent/master/start.sh"
if [ `getconf LONG_BIT` = "64" ]; then
    echo -n "[2/2] Linux 64 位操作系统检测"
    wget -c "https://raw.githubusercontent.com/PhQAgent/Binary/master/linux64.tar.gz"
    tar zxvf linux64.tar.gz
    rm linux64.tar.gz
else
    echo -n "[2/2] Linux 32 位操作系统检测"
    wget -c "https://raw.githubusercontent.com/PhQAgent/Binary/master/linux32.tar.gz"
    tar zxvf linux32.tar.gz
    rm linux32.tar.gz
fi
chmod +x ./bin/php/bin/php
chmod +x start.sh
echo "[3/3] 安装完成 . start.sh 启动PhQAgent"
