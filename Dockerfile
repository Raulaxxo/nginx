#raulaxxo@gmail.com
# Dockerfile para Nginx con Alpine Linux
# Basado en nginx:stable-alpine3.17-slim
# https://hub.docker.com/_/nginx
## Este Dockerfile crea una imagen de Nginx con Alpine Linux, configurada para servir contenido estático.

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx

RUN apk add --no-cache nano

# Copiar template y entrypoint
COPY conf_nginx/conf.d/base.vhost.template /etc/nginx/base.vhost.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]