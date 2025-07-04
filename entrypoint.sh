#!/bin/sh
#!/bin/sh

# Reemplaza variables en el template y guarda como archivo único
envsubst '${ENV_URL} ${ENV_DIR}' < /etc/nginx/base.vhost.template > /etc/nginx/conf.d/${ENV_URL}.conf

# Crear carpeta del código si no existe
mkdir -p /var/www/${ENV_DIR}

exec "$@"