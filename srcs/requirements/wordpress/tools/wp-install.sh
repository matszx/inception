#!/bin/bash

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
chown -R www-data:www-data /var/www/html
./wp-cli.phar core download --allow-root
until mysql -h ${DB_HOST} -u ${DB_USER} -p ${DB_USER_PWD} ${DB_NAME} &> /dev/null
do
	echo "Waiting for database..."
	sleep 5
done
./wp-cli.phar config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_USER_PWD} --dbhost=${DB_HOST} --allow-root
./wp-cli.phar core install --url=${URL} --title=inception --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PWD} --admin_email=${EMAIL} --allow-root
./wp-cli.phar user create ${WP_USER} ${WP_USER}@inception.com --role=subscriber --user_pass=${WP_USER_PWD} --allow-root

php-fpm8.2 -F

