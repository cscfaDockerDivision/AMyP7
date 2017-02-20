FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

ADD baseInstall.sh /baseInstall.sh
RUN bash /baseInstall.sh && rm /baseInstall.sh

RUN mkdir /home/workspace
RUN mkdir /home/share

ADD mysqlModify.sh /mysql.sh
ADD mysqld.cnf /mysqld.cnf
RUN bash /mysql.sh && rm /mysql.sh

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 3306
VOLUME ["/home/workspace"]
VOLUME ["/home/share"]

ENTRYPOINT supervisord -n

