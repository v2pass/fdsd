#!/bin/bash

# 下载文件的URL
geoip_url="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
geosite_url="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

# 下载文件函数
download_file() {
    local url=$1
    local output=$2
    local max_retries=20
    local retries=0

    while [ $retries -lt $max_retries ]; do
        wget -O $output $url

        if [ $? -eq 0 ]; then
            echo "$output 下载成功！"
            return 0
        else
            echo "$output 下载失败，重试中..."
            retries=$((retries+1))
        fi
    done

    echo "$output 下载失败！"
    return 1
}

# 下载 geoip.dat 文件
download_file $geoip_url "/etc/XrayR/geoip.dat"

# 下载 geosite.dat 文件
download_file $geosite_url "/etc/XrayR/geosite.dat"

# 脚本执行完毕
echo "文件下载完成！"
