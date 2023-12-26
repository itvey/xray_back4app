FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root
COPY entrypoint.sh ./
COPY index.html /usr/share/nginx/html/
RUN  chmod +x entrypoint.sh && apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl


ENTRYPOINT [ "./entrypoint.sh" ]