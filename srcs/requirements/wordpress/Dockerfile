FROM debian:bookworm
RUN apt update && apt upgrade -y && apt install -y php-fpm
RUN mkdir -p /run/php && chown -R www-data:www-data /run/php
COPY conf/www.conf /etc/php/8.2/fpm/pool.d/.
ENTRYPOINT ["php-fpm8.2", "-F"]

