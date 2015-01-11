#!/bin/bash

mysql_install_db
chown -R mysql:mysql /var/lib/mysql/
/usr/bin/mysqld_safe & 
sleep 10


echo "Running the start_mysql function."
mysqladmin -u root password 2dum2liv
mysql -uroot -p2dum2liv -e "CREATE DATABASE testdb"
mysql -uroot -p2dum2liv -e "GRANT ALL PRIVILEGES ON testdb.* TO 'testdb'@'localhost' IDENTIFIED BY '2dum2liv'; FLUSH PRIVILEGES;"
mysql -uroot -p2dum2liv -e "GRANT ALL PRIVILEGES ON *.* TO 'testdb'@'%' IDENTIFIED BY '2dum2liv' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -uroot -p2dum2liv -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '2dum2liv' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -uroot -p2dum2liv -e "select user, host FROM mysql.user;"
killall mysqld
chown -R mysql:mysql /var/lib/mysql/
sleep 10


