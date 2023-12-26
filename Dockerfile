#FROM nginx:latest
#EXPOSE 80
#WORKDIR /app
#USER root
#COPY entrypoint.sh ./
#COPY index.html /usr/share/nginx/html/
#
#
#ENTRYPOINT [ "./entrypoint.sh" ]

FROM nginx:latest

# 复制本地的 entrypoint.sh 到容器中
COPY entrypoint.sh /entrypoint.sh

COPY nezha.sh /app/nezha/

# 赋予 entrypoint.sh 执行权限
RUN chmod +x /entrypoint.sh && chmod +x /app/nezha/nezha.sh && apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl


# 暴露容器的 80 端口
EXPOSE 80


# 运行 entrypoint.sh
CMD ["/entrypoint.sh"]