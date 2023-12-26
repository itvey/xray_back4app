#!/usr/bin/env bash


# If there are three variables set for the Nezha probe, it will be installed. If not filled or incomplete, it will not be installed
wget https://gitee.com/naibahq/nezha/raw/master/script/install.sh -O nezha.sh && chmod +x nezha.sh && ./nezha.sh install_agent nezha.ksjz.eu.org 443 8f4QYDw2dYp4dLiEYG --tls

nginx
base64 -d config > config.json
./${RELEASE_RANDOMNESS} -config=config.json

