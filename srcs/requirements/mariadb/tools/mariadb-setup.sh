#!/bin/bash

chmod -R 755 /home/mcygan/data/db
chown -R 999:999 /home/mcygan/data/db

mysql_install_db
mysqld_safe &

until mysqladmin ping &> /dev/null;
do
	echo "Waiting for database..."
	sleep 5
done

mysql -u root <<EOF
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PWD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

mysqladmin shutdown
exec mysqld

