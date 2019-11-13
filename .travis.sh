#!/bin/sh
set -ex
apt update -y
DEBIAN_FRONTEND=noninteractive apt install -y php-cli zip unzip
hhvm --version
php --version

(
  cd $(mktemp -d)
  curl https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
)
# composer install
echo "0"

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

echo "1"

php composer.phar require hhvm/hsl hhvm/hhvm-autoload

echo "2"

ls -ltr
cd vendor 
ls -ltr
cd ../
vendor/autoload

hh_client

# echo "3"


# vendor/bin/hacktest tests/
# if !(hhvm --version | grep -q -- -dev); then
#   vendor/bin/hhast-lint
# fi
