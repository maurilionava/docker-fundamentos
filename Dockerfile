#INFO: arquivo Dockerfile utilizado para criar novas imagens para docker

# FROM baseImage
# LABEL key="value"
# COPY source dest
# WORKDIR /the/workdir/path
# EXPOSE port
# ENTRYPOINT [ "executable" ]

FROM debian:8
LABEL version="1.0" description="Instalar e subir nginx"
RUN apt-get update && apt-get install -y nginx && apt-get clean
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/nginx" ]
CMD ["-g","daemon off;"]
#ENTRYPOINT + CMD
