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

CREATE TABLE IF NOT EXISTS test (
  id INT,
  cname VARCHAR(128),
  localname VARCHAR(128)
) ENGINE = CSV;

select table_name, engine from information_schema.tables where table_schema = 'scratch';
