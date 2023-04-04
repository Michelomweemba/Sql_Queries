 How many movies contain the special feature of 'Behind the Scences'?
 
 SELECT COUNT(*) FROM film WHERE 'Behind the Scenes'=ANY(special_features)
 
 CREATE TABLE Employee(
Employee_id Serial PRIMARY KEY,
Employee_account_name VARCHAR(20) UNIQUE,
First_name VARCHAR (50),
Last_name VARCHAR(50) DEFAULT'Not specified',
Date_of_birth Date,
Address_id Int REFERENCES address (address_id))






INSERT INTO employee
(employee_id, employee_account_name,first_name,last_name,date_of_birth,address_id)
Values (1,'Nchimumweemba','Nchimunya','Mweemba','2006-03-04',12.34)

SELECT * FROM employee
ALTER TABLE employee
ALTER COLUMN Employee_account_name TYPE VARCHAR (30),
ALTER COLUMN last_name DROP DEFAULT,
ALTER COLUMN last_name SET NOT NULL,
ADD COLUMN email VARCHAR(40)
SELECT * FROM Employees
ALTER TABLE Employee
RENAME Employee_account_name TO account_name
ALTER TABLE Employee RENAME TO Employees
