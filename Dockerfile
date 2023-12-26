FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl && \
    chmod -v 755  entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]