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
Values (1,'Nchimumweemba','Nchimunya','Mweemba','2006-03-04',12.34),
(26,'BeeneMweemba','Beene','Mweemba','1992-05-06',12.50)