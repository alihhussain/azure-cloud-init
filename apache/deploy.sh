#!/bin/bash
apt-get -y update

# install Apache2
apt-get -y install apache2 

# write some HTML
echo "<center><h1>Wecome to Azure Cloud-Init Nginx Example</h1><br></center>" > /var/www/html/index.html

# restart Apache
apachectl restart