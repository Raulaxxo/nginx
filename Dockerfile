#raulaxxo@gmail.com

FROM nginx:stable-alpine3.17-slim

ENV ENV_DIR linsk2
ENV ENV_URL raulaxxo.com

#WORKDIR /nginx

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


