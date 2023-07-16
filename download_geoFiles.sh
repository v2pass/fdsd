#!/bin/bash

# 下载文件的URL
geoip_url="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
geosite_url="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

# 下载 geoip.dat 文件
wget -O /etc/XrayR/geoip.dat $geoip_url

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "geoip.dat 下载成功！"
else
    echo "geoip.dat 下载失败！"
    exit 1
fi

# 下载 geosite.dat 文件
wget -O /etc/XrayR/geosite.dat $geosite_url

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "geosite.dat 下载成功！"
else
    echo "geosite.dat 下载失败！"
    exit 1
fi

# 脚本执行完毕
echo "文件下载完成！"
