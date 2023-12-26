##!/usr/bin/env bash
# 启动 nginx 服务
nginx -g 'daemon off;'

#/app/nezha/
wget https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -O nezha.sh && chmod +x nezha.sh && ./nezha.sh nezha.sh install_agent nezha.ksjz.eu.org 443 8f4QYDw2dYp4dLiEYG --tls
