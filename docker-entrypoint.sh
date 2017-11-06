#!/usr/bin/env sh

sed -i "s/remote_host.\+$/remote_host = ${HOST_MACHINE_IP}/" /usr/local/etc/php/conf.d/xdebug.ini

php-fpm
