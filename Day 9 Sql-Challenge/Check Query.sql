SELECT * FROM employees
 DROP TABLE account_name
 
 CREATE TABLE student_table
 (
	 student_id SERIAL PRIMARY KEY,
	 student_name TEXT
 )
 SELECT * FROM student_table
INSERT INTO student_table
VALUES
(2,'Beene'),(3,'Banji')

TRUNCATE TABLE student_table


CREATE TABLE Song_table
(
	Song_id SERIAL PRIMARY KEY,
	Song_name VARCHAR(30) not null,
	genre VARCHAR (30) Default 'not defined',
	Price numeric(4,2)CHECK (price>=1.99),
	Release_date Date CONSTRAINT date_check CHECK(release_date Between '01.01.1950'AND CURRENT_DATE))

Select * from Song_table

TRUNCATE TABLE Song_table
DROP TABLE Song_table
