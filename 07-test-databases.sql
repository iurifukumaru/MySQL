-- test installed databases
SHOW DATABASES;

USE world;
SHOW tables;

USE scratch;
SHOW tables;

USE album;
SHOW tables;

USE album;
SELECT * FROM album;

ALTER USER 'tempuser'@'localhost' PASSWORD EXPIRE INTERVAL 90 DAYS;
DROP USER 'tempuser'@'localhost';
