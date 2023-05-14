service mariadb start
mysql -e "CREATE DATABASE YUM;"
mysql -e "CREATE USER 'yumworld'@'%' IDENTIFIED BY 'cytech0001';"
mysql -e "USE YUM; source /var/www/yum-world/YUM.sql;"
mysql -e "GRANT ALL PRIVILEGES ON YUM.* TO 'yumworld'@'%';"