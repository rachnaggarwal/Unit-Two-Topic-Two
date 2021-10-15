-- ROWNUM with select
SELECT * FROM student WHERE ROWNUM <= 3;
-- Giving error as it can be used with ORACLE SERVER used LIMIT instead
SELECT * FROM student ORDER BY id LIMIT 3;

-- DDL Commands left to be practised
-- ALTER
ALTER table student RENAME TO mystudent;

ALTER table mystudent RENAME COLUMN name TO First_name;

-- Single line comment
/* This is a multi
line command*/
-- SELECT * FROM /*This is an inline comment*/

-- TRUNCATE TABLE mystudent; 
-- It will all the data inside the table at once

-- DML commands left to be practised
-- UPDATE COMMAND
UPDATE mystudent SET percentage =64 where id =2;

-- DCL commands
-- GRANT
GRANT ALL ON Users to 'user'@'localhost'; 

-- REVOKE
REVOKE ALL ON Users TO 'user1'@'localhost'; 

-- DQL - SELECT command
SELECT * from mytable;
