FROM phpbench/generic_54

ENV DEBIAN_FRONTEND noninteractive

RUN ln -s /usr/lib/x86_64-linux-gnu/libXpm.a /usr/lib/libXpm.a

RUN cd /home/dev/php/php-src/ && git checkout origin/PHP-5.4
RUN cd /home/dev/php/php-src/ && \
    ./buildconf && \
    ./configure \
        --prefix=$HOME/tmp/usr \
        --with-config-file-path=$HOME/tmp/usr/etc \
        --enable-mbstring \
        --enable-zip \
        --enable-bcmath \
        --enable-pcntl \
        --enable-ftp \
        --enable-exif \
        --enable-calendar \
        --enable-sysvmsg \
        --enable-sysvsem \
        --enable-sysvshm \
        --enable-wddx \
        --with-curl \
        --with-mcrypt \
        --with-iconv \
        --with-gmp \
        --with-gd \
        --with-jpeg-dir=/usr \
        --with-png-dir=/usr \
        --with-zlib-dir=/usr \
        --with-xpm-dir=/usr \
        --enable-gd-native-ttf \
        --enable-gd-jis-conv \
        --with-openssl \
        --with-mysql=/usr \
        --with-pdo-mysql=/usr \
        --with-gettext=/usr \
        --with-zlib=/usr \
        --with-bz2=/usr \
        --with-mysqli=/usr/bin/mysql_config && \
    make && \
    make install

CMD /home/dev/php/php-src/sapi/cli/php /home/dev/php/bench.php
