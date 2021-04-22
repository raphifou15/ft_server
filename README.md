# ft_server

**Le but de ft_server**
- Ce sujet à pour but de vous faire découvir découvrir l’administration système en vous
sensibilisant a l’importance de l’utilisation de scripts pour automatiser vos taches. Pour ce
faire, nous allons vous faire découvrir la technologie "Docker" afin de vous faire installer
un server web complet, qui sera capable de faire tourner plusieurs services, tel qu’un
Wordpress, Phpmyadmin, ainsi qu’une base de donnée.

## Mots clés


#Docker
[docker quesque c'est ?](https://www.redhat.com/fr/topics/containers/what-is-docker)

#serveur web 
[Qu'est-ce qu'un serveur web ?](https://developer.mozilla.org/fr/docs/Learn/Common_questions/What_is_a_web_server#:~:text=Au%20niveau%20des%20composants%20mat%C3%A9riels,utilisateur%20qui%20visite%20le%20site.)

#administration système sous linux
 [#L'administration de LINUX](http://hautrive.free.fr/linux/page-administration-linux.html#:~:text=L'administration%20d'un%20syst%C3%A8me,'un%20syst%C3%A8me%20d'information.)
 [#Administration système](https://linux.goffinet.org/administration/)

#scripts
 [Scripts Shell](https://linux.goffinet.org/administration/scripts-shell/)

#wordpress
 [Meet WordPress](https://wordpress.org/)

#phpMyAdmin
 [phpMyAdmin](https://www.phpmyadmin.net/)

#base de donnée
 [Base de données : qu’est-ce que c’est ? Définition et présentation](https://www.lebigdata.fr/base-de-donnees)

## Tester mon serverur web
* ce mettre a la racine du Dockerfile puis taper cette commande
* ```sudo docker build -t ft_server .```
* Puis dérouler le container ce qui va lancer le serveur: deux choix s'offrira à vous le premier avec un autoindex et le second sans.
* ```sudo docker run --env INDEX=on --name=ft_server -it --rm -p80:80 -p443:443 ft_server```
* ```sudo docker run --env INDEX=off --name=ft_server -it --rm -p80:80 -p443:443 ft_server```
* Pour connaitre l'id du containner taper:
* ```sudo docker images```
* une fois que vous avez terminé effacer l'image docker en tapant:
* ```sudo docker rmi "name container ou id container"```

## Documentation que j'ai utilisé
* [get started docker](https://docs.docker.com/get-started/)
* [Docker 101 Tutorial](https://www.docker.com/101-tutorial)
* [How to Install Nginx on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10)
* [Debian 10 Buster : installer et configurer la dernière version de Nginx et PHP 7.3 FPM](https://www.geek17.com/fr/content/debian-10-buster-installer-et-configurer-la-derniere-version-de-nginx-et-php-73-fpm-105)
* [How To Install Linux, Nginx, MariaDB, PHP (LEMP stack) on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10)
* [Installer un serveur LEMP sur debian 10 (nginx php mariadb)](https://minzord.fr/installer-un-serveur-lemp-sur-debian-10-nginx-php-mariadb/)
* [How To Install phpMyAdmin with Nginx on Debian 10](https://www.itzgeek.com/how-tos/linux/debian/how-to-install-phpmyadmin-with-nginx-on-debian-10.html)
* [Phpmyadmin sur Debian 10 avec Nginx](https://forum.inovaperf.fr/d/133-phpmyadmin-sur-debian-10-avec-nginx)
* [How To Install WordPress with LEMP (Nginx, MariaDB and PHP) on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lemp-nginx-mariadb-and-php-on-debian-10)
* [How to Install WordPress with Nginx on Debian 10](https://www.rosehosting.com/blog/how-to-install-wordpress-with-nginx-on-debian-10/)
* [Enabling the Nginx Directory Index Listing](https://www.keycdn.com/support/nginx-directory-index)
* [Creating a Self-Signed SSL Certificate](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)
* [How To Create a Self-Signed SSL Certificate for Nginx on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-on-debian-10#step-5-%E2%80%94-testing-encryption)

#debian:buster 
. docker run -it -p80:80 -p443:443 debian:buster /bin/bash
