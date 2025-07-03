#raulaxxo@gmail.com

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx
RUN apk add --no-cache nano

# Variables para tiempo de build
ARG ENV_DIR=links
ARG ENV_URL=raulaxxo.com

# Variables para runtime (opcional, si las quieres para Nginx)
ENV ENV_DIR=${ENV_DIR}
ENV ENV_URL=${ENV_URL}

ADD conf_nginx/conf.d/base.vhost conf.d/
RUN cp conf.d/base.vhost conf.d/${ENV_URL}.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

