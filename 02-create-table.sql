-- create table with engine
USE scratch;
DROP TABLE IF EXISTS test;
CREATE TABLE IF NOT EXISTS test ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    cname VARCHAR(128),
    localname VARCHAR(128)
) ENGINE = InnoDB;
INSERT INTO test (cname, localname) SELECT name, localname FROM world.country;
SELECT COUNT(*) FROM test;
SELECT * FROM test;
SELECT table_name, engine FROM information_schema.tables WHERE table_schema = 'scratch';
DROP TABLE IF EXISTS test;

-- selecting rows
use world;
select 'Hello, World';
select * from Country order by Name;
select count(*) from Country;
select * from Country order by Name LIMIT 50,5;
