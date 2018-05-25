FROM nginx:1.10

ADD vhost.conf /etc/nginx/conf.d/default.conf

RUN chmod 755 /storage

RUN chmod 755 /bootstrap/cache