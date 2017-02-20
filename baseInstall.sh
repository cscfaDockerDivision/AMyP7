#! /bin/bash

apt-get update
apt-get install -y apache2 \
	php \
	mysql-server \
	libapache2-mod-php \
	php-mysql \
	php-mbstring \
	php-curl \
	php-intl \
	php-cli \
	php-gd \
	php-xml \
	php-mcrypt \
	supervisor
