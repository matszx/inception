#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sleep 5
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=localhost --title=inception --admin_user=ivbatist --admin_password=123456789 --admin_email=ivbatist@inception.com --allow-root
./wp-cli.phar user create guest guest@inception.com --role=subscriber --user_pass=123456789 --allow-root

php-fpm8.2 -F

