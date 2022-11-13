#!/bin/sh
#ionCube Extension installer for PHP 8.1 LiteSpeed Servers
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar -zxvf ioncube_loaders_lin_x86-64.tar.gz 
cp ioncube/ioncube_loader_lin_8.1.so /usr/local/lsws/lsphp81/lib/php/20210902
rm ioncube_loaders_lin_x86-64.tar.gz
rm -rf ioncube
sudo echo "extension=ioncube_loader_lin_8.1.so" >> /usr/local/lsws/lsphp81/etc/php/8.1/mods-available/01-ioncube.ini
sudo systemctl restart lsws
