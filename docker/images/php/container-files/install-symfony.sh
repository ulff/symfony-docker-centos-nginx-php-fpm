#!/bin/bash

cd /var/www/
composer install -n
sh bin/setup.sh
