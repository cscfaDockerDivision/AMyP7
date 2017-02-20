#! /bin/bash

if [ -d /var/lib/mysql ]
then
	mv /var/lib/mysql /home/share
else
	mkdir /home/share
	chown mysql:mysql /home/share
	chmod 700 /home/share
fi

touch /home/share/error.log
chown mysql:mysql /home/share/error.log

mkdir /var/run/mysqld
chown mysql:mysql /var/run/mysqld

mv /mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
chmod 644 /etc/mysql/mysql.conf.d/mysqld.cnf
