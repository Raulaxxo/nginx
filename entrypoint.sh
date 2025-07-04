#!/bin/sh

# Reemplazar variables en el template
envsubst '${ENV_URL} ${ENV_DIR}' < /etc/nginx/base.vhost.template > /etc/nginx/conf.d/default.conf

# Crear la carpeta si no existe (opcional)
mkdir -p /var/www/${ENV_DIR}

exec "$@"