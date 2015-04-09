FROM jacekelgda/docker-centos-nginx-php-fmp

ENV RDS_HOSTNAME foo
ENV RDS_DB_NAME foo
ENV RDS_PASSWORD foo
ENV RDS_USERNAME foo
ENV RDS_PORT foo

ADD docker/images/php/container-files /

RUN yum install git -y
RUN yum install php-devel -y
RUN yes '' | pecl install mongo

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer


