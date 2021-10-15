-- 	Implicit casting in mysql
SELECT '123' *2;
SELECT '123ARGJ' *2;
SELECT 'GRJK123' *2;

-- Using the database mydb
USE mydb;

-- Distinct command with select
SELECT DISTINCT username FROM mytable;
SELECT DISTINCT * FROM mytable;

-- Using LIKE(%) with SELECT
SELECT * FROM mytable WHERE email LIKE "%myuser%";
SELECT * FROM mytable WHERE email LIKE "%.com";
SELECT * FROM mytable WHERE email LIKE "agg%";

-- Using LIKE(-) with SELECT
SELECT * FROM mytable WHERE username LIKE 'Rachna__';

-- Drop command
drop table student;

-- DELETE command
DELETE FROM student;
DELETE FROM student WHERE percentage =21;
-- DOUBT (getting error as you are using safe mode and where CLAUSE without a WHERE that uses a key column)

-- USING CHECK CONSTRAINT so that percentage should not be greater than 100
CREATE TABLE student
(
 id int unsigned NOT NULL auto_increment,
 name varchar(30) NOT NULL,
 percentage int NOT NULL CHECK(percentage<=100),
 PRIMARY KEY (id)
);
INSERT INTO student (name, percentage) VALUES ("Isha",67);
INSERT INTO student (name, percentage) VALUES ("Rachna",54);
INSERT INTO student (name, percentage) VALUES ("Het",21);
INSERT INTO student (name, percentage) VALUES ("Ruchi",56);
INSERT INTO student (name, percentage) VALUES ("Deeksha",87);
INSERT INTO student (name, percentage) VALUES ("Dyna",65);
INSERT INTO student (name, percentage) VALUES ("Aish",105);

SELECT * FROM student;

-- IF with SELECT
-- SELECT with Alias(AS)alter
SELECT name, percentage,
IF(percentage >= 50, 'Pass', 'Fail') AS 'REMARK'
FROM student;

-- CASE with SELECT
SELECT name, percentage,
CASE WHEN percentage >= 50 THEN 'Pass' ELSE 'Fail' END AS 'REMARK'
FROM student;

-- SELECT with LIMIT clause
-- ORDER BY with SELECT
-- USE ORDER BY with LIMIT to make sure we get the rows as desired
SELECT * FROM mytable 
ORDER BY username
LIMIT 3;

-- skipping first 2 rows and printing next 4 rows.alter
-- LIMIT offset, count
SELECT * FROM mytable 
ORDER BY username
LIMIT 2,4;

-- BETWEEN with SELECT
SELECT * FROM student where id >=2 and id<=5;
-- or
SELECT * FROM student where id BETWEEN 2 and 5;
-- or
SELECT * FROM student where id NOT BETWEEN 2 and 5;
