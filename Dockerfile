FROM nginx:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bc \
        curl \
        unzip \
    && mkdir -p /var/www \
    && rm /etc/nginx/conf.d/default.conf

COPY var/www/ /var/www/
COPY etc/nginx/conf.d /etc/nginx/conf.d

CMD [ "/usr/sbin/nginx", "-g", "daemon off;"]
