#!/bin/bash


#nginx config and index off/on

if [ "$INDEX" = "on" ]
then
	mv default_on /etc/nginx/sites-available/default
	mkdir /var/www/html/mon_site
	mv index.php /var/www/html/mon_site/index.php
else
	mv default_off /etc/nginx/sites-available/default
	mv index.php /var/www/html/index.php
fi

#ssl certificat + key
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out /etc/nginx/ssl/localhost.crt \
			-keyout /etc/nginx/ssl/localhost.key \
			-subj "/C=PR/ST=Paris/L=Paris/O=42/OU=raph/CN=www.localhost.com"

#phpMyAdmin install and config
wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
tar -zxvf phpMyAdmin-5.1.0-all-languages.tar.gz
mv phpMyAdmin-5.1.0-all-languages /var/www/html/phpMyAdmin
mv config.inc.php /var/www/html/phpMyAdmin/
chmod 660 /var/www/html/phpMyAdmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpMyAdmin

#wordpress install and config
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress /var/www/html/
mv wp-config.php /var/www/html/wordpress/wp-config.php
chown -R www-data:www-data /var/www/html

#MYSQL configuration
service mysql start
echo "CREATE DATABASE wpdb;" | mysql -u root --skip-password
echo "GRANT ALL ON *.* TO 'raph'@'localhost' IDENTIFIED BY '1234';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
#mysql wpdb -u root --skip-password < wpdb.sql

#start services
service nginx start
service php7.3-fpm start | echo "service php7.3-fpm start success"
tail -f /dev/null
