CREATE DATABASE tsugi DEFAULT CHARACTER SET utf8;
CREATE USER 'ltiuser'@'localhost' IDENTIFIED BY 'ltipassword';
GRANT ALL ON tsugi.* TO 'ltiuser'@'localhost';
CREATE USER 'ltiuser'@'127.0.0.1' IDENTIFIED BY 'ltipassword';
GRANT ALL ON tsugi.* TO 'ltiuser'@'127.0.0.1';