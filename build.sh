#!/usr/bin/env bash
set -ex

php -v

if [ ! -e "composer -v" ]; then
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php
	php -r "unlink('composer-setup.php');"
	php composer.phar install
fi;

composer create-project wp-coding-standards/wpcs --no-dev

./wpcs/vendor/bin/phpcs --standard='WordPress-Core' themes/twentyseventeen/header.php
