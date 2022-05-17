#!/usr/bin/env bash 

xraytime="2022-02-08"

# 关闭ntp
sudo timedatectl set-ntp false

# 5秒后恢复时间
sudo nohup bash -c "sleep 5 && sudo timedatectl set-ntp true" >/dev/null 2>&1 &

# 设置时间
sudo date -s "$xraytime"

# 启动xray
./xray $@
