#raulaxxo@gmail.com

FROM nginx:stable-alpine3.17-slim

WORKDIR /etc/nginx
RUN apk add nano 

ENV ENV_DIR="linsk2"
ENV ENV_URL="raulaxxo.com"

RUN cd /etc/nginx/conf.d/ 

RUN cp base.vhost ${ENV_URL}.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


