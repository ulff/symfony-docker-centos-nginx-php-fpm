FROM jacekelgda/docker-centos-nginx-php-fmp

ADD docker/images/php/container-files /

RUN yum install git -y
RUN yum install php-devel -y
RUN yes '' | pecl install mongo

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer


