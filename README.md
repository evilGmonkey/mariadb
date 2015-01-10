mariadb-base
============

Mariadb Base

First initialize a container for persistent storage

docker run -d -v /dbdata --name mariadbdata uhurunet/mariadb echo "Data only"

Then to start

docker run -it --volumes-from mariadbdata --name CONTAINERNAME uhurunet/mariadb
