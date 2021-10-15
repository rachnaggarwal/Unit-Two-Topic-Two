-- Creating a database in MySQL
CREATE DATABASE mydb;

-- Using the created database mydb
USE mydb;

-- Creating a table in MySQL 
CREATE TABLE mytable
(
 id int unsigned NOT NULL auto_increment,
 username varchar(30) NOT NULL,
 email varchar(50) NOT NULL,
 PRIMARY KEY (id)
);

-- Inserting a row into mytable 
INSERT INTO mytable (username, email) VALUES ("Rachna20", "aggrachna20@gmail.com");
INSERT INTO mytable (username, email) VALUES ("Ruchi4", "aggruchi4@gmail.com");
INSERT INTO mytable (username, email) VALUES ("Ashiv", "guptaashiv@gmail.com");
INSERT INTO mytable (username, email) VALUES ("myuser1", "myuser1@gmail.com");
INSERT INTO mytable (username, email) VALUES ("myuser2", "myuser2@gmail.com");
INSERT INTO mytable (username, email) VALUES ("myuser3", "myuser3@gmail.com");
INSERT INTO mytable (username, email) VALUES ("myuser4", "myuser4@gmail.com");

-- Updating a row into a mytable 
UPDATE mytable SET username="Ruchi" WHERE id=2;

-- Selecting rows to be displayed in mytable
SELECT * FROM mytable;

-- Show list of existing databases
SHOW databases;

-- Show tables in an existing database
SHOW tables;

-- Show all the fields of a table
DESCRIBE mydb.mytable; 
DESCRIBE mytable;

-- Creating User
-- Will create a user that can only connect on the local machine
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'user2';
-- Will create a user that can connect from anywhere (except the local machine).
CREATE USER 'user3'@'%' IDENTIFIED BY 'user3';

-- Giving privileges to the user
GRANT SELECT, INSERT, UPDATE ON mydb.* TO 'user2'@'localhost';

-- Grant all privileges to the user for all tables on all databases
GRANT ALL ON *.* TO 'user2'@'localhost' WITH GRANT OPTION;
-- *.* targets all databases and tables

-- back-tick (``)delimiters are used with words like table and first
CREATE TABLE `table`
( 
 `first name` VARCHAR(30)
);

-- PROCESSLIST  (doubt: I am working on localhost:- 3306 why am i getting results for different localhost as well )
SELECT * FROM information_schema.PROCESSLIST ORDER BY INFO DESC, TIME DESC;



