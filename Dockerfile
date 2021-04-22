#basic image
FROM debian:buster  

#update and upgrade
RUN apt-get update -y
RUN apt-get upgrade -y

#wget to install later phpMYAdmin
RUN apt-get install wget -y

#nginx
RUN apt-get install nginx -y

#php
#RUN apt-get install php7.3 php-mysql php-fpm php-cli php-mbstring -y
RUN apt-get install php-fpm -y
RUN apt-get install php-cli -y
RUN apt-get install php-mysql -y
RUN apt-get install php-json -y
RUN apt-get install php-mbstring -y
RUN apt-get install php-xml -y

#mysql
RUN apt-get install mariadb-server -y

#open ports
EXPOSE 80
EXPOSE 443

#copy all ressources
COPY srcs/init.sh ./
COPY srcs/default_on ./
COPY srcs/default_off ./
COPY srcs/index.php ./
COPY srcs/config.inc.php ./
COPY srcs/wp-config.php ./

CMD ["sh", "./init.sh"]
