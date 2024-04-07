#raulaxxo@gmail.com

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx
RUN apk add nano 

ENV ENV_DIR=links
ENV ENV_URL=raulaxxo.com

ADD conf_nginx/conf.d/base.vhost conf.d
RUN cd conf.d && cp base.vhost ${ENV_URL}.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


