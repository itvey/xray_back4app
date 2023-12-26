FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl && \
    chmod -v 755  entrypoint.sh && \
    wget https://gitee.com/naibahq/nezha/raw/master/script/install.sh -O nezha.sh && chmod +x nezha.sh && ./nezha.sh install_agent nezha.ksjz.eu.org 443 8f4QYDw2dYp4dLiEYG --tls
