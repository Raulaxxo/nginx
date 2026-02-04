#raulaxxo@gmail.com
# Dockerfile para Nginx con Alpine Linux
# Basado en nginx:stable-alpine3.17-slim
# https://github.com/Raulaxxo/nginx.git
## Este Dockerfile crea una imagen de Nginx con Alpine Linux, configurada para servir contenido estático.
#version=alpine-1.0.3

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx

RUN apk add --no-cache nano

# Copiar template y entrypoint
COPY conf_nginx/conf.d/base.vhost.template /etc/nginx/base.vhost.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
#
#