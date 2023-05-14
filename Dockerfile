# Use a lightweight Debian 11 image
FROM debian:11-slim

# Set the working directory to /var/www/yum-world
WORKDIR /var/www/yum-world

# Copy the contents of the current directory to /var/www/yum-world
COPY . /var/www/yum-world

# Installing and configuring Apache
RUN apt update
RUN apt install -y apache2
RUN service apache2 start
RUN apt install -y ufw
RUN ufw allow in "WWW Full"
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Installing MySQL
RUN apt install -y mariadb-server
RUN apt install -y dos2unix && dos2unix ./conf/mysql/init.sh
RUN ./conf/mysql/init.sh

# Installing and configuring PHP
RUN apt install -y php libapache2-mod-php php-mysql

# Creating a virtual host for yum-world
RUN chown -R www-data:www-data /var/www/yum-world
RUN cp conf/apache/yum-world.conf /etc/apache2/sites-available/
RUN a2ensite yum-world
RUN a2dissite 000-default
RUN apache2ctl configtest
RUN service apache2 restart

# Expose port 80 for Apache
EXPOSE 80

CMD service apache2 start && \
    service mariadb start && \
    tail -f /var/log/apache2/access.log

# End of Dockerfile