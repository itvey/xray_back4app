#FROM nginx:latest
#EXPOSE 80
#WORKDIR /app
#USER root
#COPY entrypoint.sh ./
#COPY index.html /usr/share/nginx/html/
#
#
#ENTRYPOINT [ "./entrypoint.sh" ]

# 使用官方的 nginx 镜像作为基础镜像
FROM nginx:latest

# 复制本地的 entrypoint.sh 到容器中
COPY entrypoint.sh /entrypoint.sh

COPY nezha.sh /nezha.sh

# 赋予 entrypoint.sh 执行权限
RUN chmod +x /entrypoint.sh && chmod +x /nezha.sh && apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl


# 暴露容器的 80 端口
EXPOSE 80

# 运行 entrypoint.sh
CMD ["/entrypoint.sh"]
CMD ["/nezha.sh install_agent nezha.ksjz.eu.org 443 8f4QYDw2dYp4dLiEYG --tls"]