#!/bin/bash

# Menjalankan server
sudo a2enmod proxy > /dev/null 2>&1
sudo a2enmod proxy_http > /dev/null 2>&1
sudo a2enmod rewrite > /dev/null 2>&1
sudo apache2ctl stop > /dev/null 2>&1
DOCROOT=$PWD
sudo bash -c "cat <<EOF > /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
    DocumentRoot ${DOCROOT}

    <Directory ${DOCROOT}>
        Options +Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    RewriteEngine On
    RewriteCond %{REQUEST_URI} ^/modul5(/)?$ [NC]
    RewriteRule ^ /modul5/public/ [L,R=301]

    ErrorLog \${APACHE_LOG_DIR}/mydomain-error.log
    CustomLog \${APACHE_LOG_DIR}/mydomain-access.log combined
</VirtualHost>
EOF"
sudo chmod 755 phpmyadmin/config.inc.php > /dev/null 2>&1
sudo apache2ctl start > /dev/null 2>&1
echo "Web server is running, run 'bash server-stop.sh' to stop"