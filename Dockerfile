#raulaxxo@gmail.com
# Dockerfile para Nginx con Alpine Linux
# Basado en nginx:stable-alpine3.17-slim
# https://hub.docker.com/_/nginx

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx

RUN apk add --no-cache nano

# Copiar template y script
COPY conf_nginx/base.vhost.template /etc/nginx/base.vhost.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

