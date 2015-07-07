#!/bin/bash
### Set default parameters

domain='app.local'
rootdir='app'
owner=$(who am i | awk '{print $1}')
email='webmaster@localhost'
sitesEnable='/etc/apache2/sites-enabled/'
sitesAvailable='/etc/apache2/sites-available/'
userDir='/home/lalocespedes/projects/'
sitesAvailabledomain=$sitesAvailable$domain.conf

echo "
<VirtualHost *:80>
ServerName $domain
DocumentRoot $userDir$rootdir/public
<Directory $userDir$rootdir/public>
	AllowOverride all
	allow from all
	Options +Indexes
	Require all granted
</Directory>
 </VirtualHost>" > $sitesAvailabledomain

### enable website
a2ensite $domain

### restart Apache
/etc/init.d/apache2 reload

##create database

echo "CREATE DATABASE $rootdir" | mysql -uroot -proot