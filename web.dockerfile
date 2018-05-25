FROM nginx:1.10

ADD vhost.conf /etc/nginx/conf.d/default.conf

# RUN chmod 755 /var/www/storage

# RUN chmod 755 /var/www/bootstrap/cache
WORKDIR /var
RUN ls