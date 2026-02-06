#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sleep 5
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=mcygan.42.fr --title=inception --admin_user=mcygan --admin_password=1234 --admin_email=mcygan@inception.com --allow-root
./wp-cli.phar user create guest guest@inception.com --role=subscriber --user_pass=1234 --allow-root

php-fpm8.2 -F

