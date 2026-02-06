#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sleep 5
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PWD} --dbhost=${DB_HOST} --allow-root
./wp-cli.phar core install --url=${URL} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PWD} --admin_email=${EMAIL} --allow-root
./wp-cli.phar user create ${WP_USER} ${WP_USER}@inception.com --role=subscriber --user_pass=${WP_USER_PWD} --allow-root

php-fpm8.2 -F

