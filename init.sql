-- Active: 1757943568716@@127.0.0.1@3306@etchat
CREATE DATABASE etchat;
CREATE DATABASE mydb;

-- GRANT ALL PRIVILEGES ON etchat.* TO 'myuser'@'%';
-- GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%';
-- FLUSH PRIVILEGES;

-- docker run --name my-mysql \
--   -e MYSQL_ROOT_PASSWORD=secret \
--   -e MYSQL_USER=myuser \
--   -e MYSQL_PASSWORD=mypass \
--   -p 3306:3306 \
--   -v $(pwd)/init.sql:/docker-entrypoint-initdb.d/init.sql \
--   -d mysql:latest


-- docker run --name my-mysql \
--   -e MYSQL_ROOT_PASSWORD=root \
--   -p 3306:3306 \
--   -v $(pwd)/init.sql:/docker-entrypoint-initdb.d/init.sql \
--   -d mysql:latest
