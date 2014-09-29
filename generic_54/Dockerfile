FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Cyprian Nosek <cypiszzz@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y wget
RUN apt-get install -y m4
RUN apt-get install -y vim
RUN apt-get -y install libxml2-dev libssl-dev libbz2-dev libcurl3-dev libdb5.1-dev libjpeg-dev libpng-dev libXpm-dev libfreetype6-dev libt1-dev libgmp3-dev libc-client-dev libldap2-dev libmcrypt-dev libmhash-dev freetds-dev libz-dev libmysqlclient15-dev ncurses-dev libpcre3-dev unixODBC-dev libsqlite-dev libaspell-dev libreadline6-dev librecode-dev libsnmp-dev libtidy-dev libxslt-dev libt1-dev libgmp-dev
RUN sudo apt-get install libpspell-dev
RUN apt-get install -y git
RUN apt-get install -y autoconf

RUN wget http://ftp.de.debian.org/debian/pool/main/b/bison/libbison-dev_2.5.dfsg-2.1_amd64.deb
RUN wget http://ftp.de.debian.org/debian/pool/main/b/bison/bison_2.5.dfsg-2.1_amd64.deb
RUN dpkg -i libbison-dev_2.5.dfsg-2.1_amd64.deb
RUN dpkg -i bison_2.5.dfsg-2.1_amd64.deb

RUN ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h

WORKDIR /home/dev/php

RUN git clone https://git.php.net/repository/php-src.git

ADD /bench.php /home/dev/php/
